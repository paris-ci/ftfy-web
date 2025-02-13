FROM python:3
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8006
CMD ["uvicorn", "ftfy_app:app", "--host", "0.0.0.0", "--port", "8006"]
