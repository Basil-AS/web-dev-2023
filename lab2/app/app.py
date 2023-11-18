from flask import Flask, render_template, url_for, request, make_response
import re

# Создание экземпляра Flask
app = Flask(__name__)
application = app  # Дополнительное имя для экземпляра

# Главная страница
@app.route('/')
def index():
    return render_template('index.html')

# Страница для работы с аргументами
@app.route('/args')
def args():
    return render_template('args.html')

# Страница для работы с заголовками
@app.route('/headers')
def headers():
    return render_template('headers.html')

# Страница для работы с cookies
@app.route('/cookies', methods=['GET', 'POST'])
def cookies():
    response = make_response(render_template('cookies.html'))
    if request.method == 'POST':
        key = request.form.get('key')
        value = request.form.get('value')
        response.set_cookie(key, value)
    return response

# Страница для очистки cookies
@app.route('/cookies/clear', methods=['GET', 'POST'])
def clear_cookies():
    response = make_response(render_template('cookies.html'))
    for cookie in request.cookies:
        response.set_cookie(cookie, '', expires=0)
    return response

# Страница для проверки номера телефона
@app.route('/tel_check', methods=['GET', 'POST'])
def tel_check():
    if request.method == 'POST':
        tel = request.form.get('tel')
        if re.search(r'[^\d\s\(\)\-\.\+]', tel):
            tel_error = "Недопустимый ввод. В номере телефона встречаются недопустимые символы."
            return render_template('tel_check.html', tel=tel, tel_error=tel_error)

        d_tel = [num for num in tel if num.isdigit()]
        if len(d_tel) in [10, 11]:
            d_tel[0] = '8'
            formatted_tel = "8-{}-{}-{}-{}".format(''.join(d_tel[1:4]), ''.join(d_tel[4:7]), ''.join(d_tel[7:9]), ''.join(d_tel[9:]))
            return render_template('tel_check.html', tel=formatted_tel)
        else:
            tel_error = "Недопустимый ввод. Неверное количество цифр."
            return render_template('tel_check.html', tel=tel, tel_error=tel_error)

    return render_template('tel_check.html')
