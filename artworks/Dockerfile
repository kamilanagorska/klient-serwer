FROM python:3.10.2-slim

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY artworks.py /opt/microservices/
COPY requirements.txt /opt/microservices/

EXPOSE 9080
WORKDIR /opt/microservices

CMD ["python", "artworks.py"]