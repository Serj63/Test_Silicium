# Test_Silicium
repo for learning

## Во время запуска возникла ошибка:
```
(my_venv) root@serj-server:/home/serj/training/Flaskex# python app.py
Traceback (most recent call last):
File "/home/serj/training/Flaskex/app.py", line 4, in <module>
from scripts import forms
File "/home/serj/training/Flaskex/scripts/forms.py", line 6, in <module>
    class LoginForm(Form):
    File "/home/serj/training/Flaskex/scripts/forms.py", line 7, in LoginForm
    username = StringField('Username:', validators=[validators.required(), validators.Length(min=1, max=30)])
    AttributeError: module 'wtforms.validators' has no attribute 'required'
```

Атрибут "required" и правда отсутствует и по логике в поле для ввода должен подходить атрибут "InputRequired".Как указано в документации - https://wtforms.readthedocs.io/en/3.0.x/_modules/wtforms/validators/
После исправления система запустилась
Я не имею опыта работы с python, поэтому не знаю насколько правильно я поступил, но запустить приложение получилось только в виртуальном окружении python. 

## Теперь инструкция по запуску в Ubuntu 22.04 LTS следующая:
```
    1) Устанавливаем Docker по инструкции
    https://docs.docker.com/engine/install/ubuntu/
    
    2) Устанавливаем git:
     sudo apt install git
    
    3) Клонируем репозиторий и переходим в новую директорию:
    git clone https://github.com/Serj63/flaskex-test 
    cd flaskex-test/
    
    4) Запускаем сборку контейнера:
    docker build -t flask:1 .
    
    5) Запускаем контейнер:
    docker compose up
    
    Открываем браузер и переходим по указанному ip адресу - 172.17.0.2:5000
```
