from flask import Flask, render_template, request
from flask import make_response

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/headers')
def headers():
    return render_template('headers.html')

@app.route('/args')
def args():
    return render_template('args.html')

@app.route('/cookies')
def cookies():
    resp = make_response(render_template('cookies.html'))
    if "name" in request.cookies:
        resp.delete_cookie("name")
    else:
        resp.set_cookie("name", "value")
    return resp

@app.route('/form', methods=['GET', 'POST'])
def form():
    return render_template('form.html')

@app.route('/calc', methods=['GET', 'POST'])
def calc():
    answer=''
    error_text=''
    if request.method=='POST':
        try:
            first_num = int(request.form['firstnumber'])
            second_num = int(request.form['secondnumber'])
        except ValueError:
            error_text='Был передан текст. Введите, пожалуйста, число.'
            return render_template('calc.html', answer=answer, error_text=error_text)
        operation = request.form['operation']
        if operation == '+':
            answer = first_num + second_num
        elif operation == '-':
            answer = first_num - second_num
        elif operation == '*':
            answer = first_num * second_num
        elif operation == '/':
            try:
                answer = first_num / second_num
            except ZeroDivisionError:
                error_text = 'На ноль делить нельзя'
    return render_template('calc.html', answer=answer, error_text=error_text)

@app.errorhandler(404)
def page_not_found(error):
    return render_template('page_not_found.html'), 404