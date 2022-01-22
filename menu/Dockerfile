FROM python:3.10.2-slim

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY menu.py /opt/microservices/
COPY templates /opt/microservices/templates
COPY requirements.txt /opt/microservices/

EXPOSE 9080
WORKDIR /opt/microservices

CMD ["python", "menu.py"]