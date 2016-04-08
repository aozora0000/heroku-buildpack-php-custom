FROM heroku/cedar:14

WORKDIR /app
ENV WORKSPACE_DIR=/app/support/build

RUN apt-get update
RUN apt-get install -y python-pip poppler-utils autoconf automake libtool \
    libpng12-dev libjpeg62-dev libtiff4-dev zlib1g-dev libicu-dev libpango1.0-dev \
    libcairo2-dev libleptonica-dev tesseract-ocr

RUN pip install 'bob-builder>=0.0.9' 's3cmd>=1.6.0'

ADD . /app
