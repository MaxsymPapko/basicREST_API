# Використовуємо офіційний образ Python як базовий
FROM python:3.10-slim-bullseye

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо requirements.txt у контейнер
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь проект у контейнер
COPY . /app

# Визначаємо команду для запуску Flask-застосунку
CMD ["flask", "--app", "app:my_app", "run", "--host", "0.0.0.0", "--port", "5000"]
