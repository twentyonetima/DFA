FROM python:3.5.7

ENV PYTHONUNBUFFERED 1

RUN git clone https://github.com/twentyonetima/DFA


WORKDIR /dfa_src

RUN ls .

RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt

VOLUME /dfa_src

EXPOSE 8080

CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
