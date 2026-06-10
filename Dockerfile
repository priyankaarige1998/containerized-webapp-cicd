FROM python:3.12

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
CMD curl -f http://localhost:5000/health || exit 1

CMD ["flask", "--app", "app.app", "run", "--host=0.0.0.0", "--port=5000"]
