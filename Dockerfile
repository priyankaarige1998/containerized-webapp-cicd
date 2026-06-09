FROM python:3.12

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["flask", "--app", "app.app", "run", "--host=0.0.0.0", "--port=5000"]
