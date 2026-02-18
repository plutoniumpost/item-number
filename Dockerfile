FROM python:3.12-slim
WORKDIR /app
RUN pip install --no-cache-dir flask
COPY serve.py item-number.html ./
EXPOSE 5000
CMD ["python", "serve.py"]
