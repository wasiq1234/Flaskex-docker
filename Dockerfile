FROM python:latest
EXPOSE 5000
ADD src /myapp/
WORKDIR /myapp
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
