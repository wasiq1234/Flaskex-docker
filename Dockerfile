FROM python:3.5
EXPOSE 5000
ADD src /myapp/
WORKDIR /myapp
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
