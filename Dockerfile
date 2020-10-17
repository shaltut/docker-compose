FROM  elasticsearch:7.9.1

# RUN apt-get update && apt-get install -y
# RUN apt-get update -y && apt-get install -y python3-pip python-dev
# RUN apt-get install python3-dev
# RUN apt-get install -y unixodbc-dev
# RUN apt-get install -y unixodbc
# RUN apt-get install libgssapi-krb5-2
# RUN apt-get -y install unixodbc libc6 libstdc++6 libkrb5-3  openssl debconf unixodbc unixodbc-dev
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
# RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
# RUN apt-get update
# RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17 mssql-tools
# RUN apt-get install -y unixodbc-dev

WORKDIR /app

COPY requirements.txt ./

RUN pip3 install -r requirements.txt
# RUN pip install opencv-python
# RUN apt-get update
# RUN pip3 install --upgrade pyodbc
COPY . /app

EXPOSE 5000
EXPOSE 9200

ENTRYPOINT ["python3"]
CMD ["application.py"]


