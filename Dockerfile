FROM python:3.8.2

ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /opt/ucare/code

COPY './requirements.txt' .

RUN pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "app.index:server", "-w", "3", "-b", "0.0.0.0:8000"]