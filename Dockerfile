FROM python:latest
LABEL Maintainer="tontan2203"

WORKDIR /usr/app/src

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY scraper.py .

ADD ./entrypoint.sh /entrypoint.sh

CMD bash /entrypoint.sh