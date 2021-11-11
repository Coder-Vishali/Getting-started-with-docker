FROM python:3.6

ENV HTTP_PROXY "http://approxy.rockwellcollins.com:9090"
ENV HTTPS_PROXY "http://approxy.rockwellcollins.com:9090"

EXPOSE 5000

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app
CMD python app.py
