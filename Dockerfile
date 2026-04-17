FROM python:3.13-slim-bookworm

WORKDIR /app

COPY requirements/backend.txt .
RUN pip install --no-cache-dir -r backend.txt

COPY . .

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]