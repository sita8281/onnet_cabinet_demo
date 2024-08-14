FROM python:3.11

COPY . /onnet_lk
WORKDIR /onnet_lk
RUN pip install -r requirements.txt
WORKDIR /onnet_lk/app
EXPOSE 8001
CMD ["fastapi", "run", "--host", "0.0.0.0", "--port", "8001"]
