# Test_Silicium
repo for learning

Во время запуска возникла ошибка:

(my_venv) root@serj-server:/home/serj/training/Flaskex# python app.py
Traceback (most recent call last):
File "/home/serj/training/Flaskex/app.py", line 4, in <module>
from scripts import forms
File "/home/serj/training/Flaskex/scripts/forms.py", line 6, in <module>
    class LoginForm(Form):
    File "/home/serj/training/Flaskex/scripts/forms.py", line 7, in LoginForm
    username = StringField('Username:', validators=[validators.required(), validators.Length(min=1, max=30)])
    AttributeError: module 'wtforms.validators' has no attribute 'required'

Атрибут "required" и правда отсутствует и по логике в поле для ввода должен подходить атрибут "InputRequired".Как указано в документации - https://wtforms.readthedocs.io/en/3.0.x/_modules/wtforms/validators/
После исправления система запустилась
Я не имею опыта работы с python, поэтому не знаю насколько правильно я поступил, но запустить приложение получилось только в виртуальном окружении python. 
