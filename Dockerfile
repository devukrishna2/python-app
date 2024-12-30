FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install pytest
RUN pip install pytest

COPY . /app

# Ensure the tests directory is copied
COPY tests/ /app/tests/

EXPOSE 80

CMD ["python", "app.py"]
