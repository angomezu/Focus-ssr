FROM python:3.6.1-alpine
RUN apk update \
    apk add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY . .
CMD ["python", "focus-app.py"]
