FROM python:3.10-slim
WORKDIR /my_webapp
COPY app.py .
RUN pip install Flask
CMD ["python3","app.py"]
