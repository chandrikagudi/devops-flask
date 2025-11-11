# Stage 1: build (not strictly needed for Python, but good pattern)
FROM python:3.10-slim-buster
WORKDIR /app

# copy and install deps
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ .

EXPOSE 5000
CMD ["python", "app.py"]
