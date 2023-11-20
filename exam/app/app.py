from flask import Flask, Blueprint, render_template, abort, send_from_directory, request
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_login import LoginManager


app = Flask(__name__)
application = app

app.config.from_pyfile('config.py')

db = SQLAlchemy(app)
migrate = Migrate(app, db)
login_manager = LoginManager(app)

from auth import bp as auth_bp, init_login_manager, permission_check, login_required
from books import bp as book_bp

app.register_blueprint(auth_bp)
app.register_blueprint(book_bp)

init_login_manager(app)

from models import Book, Image, Genre, Review
from tools import BookFilter
PER_PAGE = 5

def search_params():
    return {
        'name': request.args.get('name'),
        'genre_ids': request.args.getlist('gennre_ids'),
    }

@app.route('/')
def index():
    page = request.args.get('page', 1, type=int)
    search_query = Book.query

    search_name = request.args.get('name')
    search_genre_ids = request.args.getlist('genre_ids')
    search_year = request.args.get('year')
    search_volume_from = request.args.get('volume_from', type=int)
    search_volume_to = request.args.get('volume_to', type=int)
    search_author = request.args.get('author')

    if search_name:
        search_query = search_query.filter(Book.name.like(f"%{search_name}%"))
    
    if search_genre_ids:
        search_query = search_query.join(BookGenre, Book.id == BookGenre.book_id)\
                                   .filter(BookGenre.genre_id.in_(search_genre_ids))
    
    if search_year:
        search_query = search_query.filter(Book.year == search_year)

    if search_volume_from:
        search_query = search_query.filter(Book.volume >= search_volume_from)
    if search_volume_to:
        search_query = search_query.filter(Book.volume <= search_volume_to)

    if search_author:
        search_query = search_query.filter(Book.author.like(f"%{search_author}%"))

    pagination = search_query.order_by(Book.year.desc())\
                             .paginate(page=page, per_page=PER_PAGE, error_out=False)
    books = pagination.items
    reviews = []
    for book in books:
        reviews_list = Review.query.filter_by(book_id=book.id).all()
        reviews_count = len(reviews_list)
        if reviews_count > 0:
            rating_summ = 0
            for review in reviews_list:
                rating_summ += review.rating 
            if rating_summ > 0:
                average_rating = rating_summ / reviews_count
            else:
                average_rating = 0
        else:
            average_rating = 0
        reviews.append([reviews_count, average_rating])
    images = Image.query.all()
    genres = Genre.query.all()
    years = db.session.query(Book.year.distinct()).order_by(Book.year).all()
    years = [year[0] for year in years]  # Преобразование в список

    return render_template('index.html',  books=books, images=images, genres=genres, years=years, pagination=pagination, search_params=search_params(), reviews=reviews)

@app.route('/image/<image_id>')
def image(image_id):
    image = Image.query.get(image_id)
    if image is None:
        abort(404)
    return send_from_directory(app.config['UPLOAD_FOLDER'], image.storage_filename)