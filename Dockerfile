FROM python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip3 install pysqlite3
RUN apt-get update -y && apt install sqlite3 -y
COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]
