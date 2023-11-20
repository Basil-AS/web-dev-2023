import os

SECRET_KEY = '9695cce7d2daa4d9c7f952d1cca92b6c9183e5907262017d987e60de07801749'

SQLALCHEMY_DATABASE_URI = "mysql+mysqlconnector://root:9087@vsbox.fun:3306/std_1850_exam?charset=utf8mb4&collation=utf8mb4_general_ci"

SQLALCHEMY_TRACK_MODIFICATIONS = False
SQLALCHEMY_ECHO = True

ADMIN_ROLE_ID = 1
MODER_ROLE_ID = 2

UPLOAD_FOLDER = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'media', 'images')
