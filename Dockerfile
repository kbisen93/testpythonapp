FROM python:3.8.5

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip install Django==3.1.2
RUN pip install Pillow
RUN pip install GitPython==3.1.11

RUN pwd
RUN mkdir /testpythonapp
WORKDIR /testpythonapp3

RUN pwd
ADD . /testpythonapp/

EXPOSE 8000
CMD [ "python", "manage.py", "runserver", "127.0.0.1:8000" ]
