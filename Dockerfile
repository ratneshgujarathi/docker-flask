FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk update && \
    apk add --no-cache build-base && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python", "app.py" ]