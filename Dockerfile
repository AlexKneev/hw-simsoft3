FROM python:3.6-slim
RUN apt-get update && apt-get install -y libpq-dev gcc && rm -rf /var/cache/apt
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]
