#FROM python:3.9-slim
#COPY . .
#RUN pip3 install flask
#RUN python -m pip install --upgrade pip
#WORKDIR /codeqlDocker

#EXPOSE 5000

#CMD python ./guidelineDB.py



#FROM python:3.9
#COPY . /app							#python 실행파일을 받아온다.
#RUN pip3 install flask				#Flask 패키지 설치
#WORKDIR /app
#CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
### 파이썬 모듈을 실행시키는 방식으로 flask를 실행시켜주었다.
### flask를 외부에 노출시키기 위해 --host=0.0.0.0태그를 넣어주었다.



FROM python:3.7

WORKDIR ./app


COPY requirements.txt ./

RUN pip install -r requirements.txt
COPY . .

ENV FLASK_APP app
ENV FLASK_APP development


EXPOSE 4900

ENTRYPOINT ["python"]
CMD [ "app.py" ]


#-----------------------------------
#FROM python:3.7

#RUN apt-get update && apt-get install -y imagemagick

#WORKDIR /usr/src/app


#COPY . .

#RUN sh setup.sh

#ENV FLASK_APP app
#ENV FLASK_APP development


#EXPOSE 80

#CMD ["sh", "run.prod.sh"]

#FROM python:3.7-alpine
#COPY . /web
#WORKDIR /web/api
#RUN pip install -r ./requirements.txt
#ENTRYPOINT ["python"]
#CMD ["app.py"]
