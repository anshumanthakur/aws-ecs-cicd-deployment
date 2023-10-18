FROM python:3.7.2-slim

RUN apt update \
&& apt install -y curl

COPY ./ /

RUN apt install build-essential -y
RUN apt-get install manpages-dev -y
RUN apt-get install libffi-dev

RUN pip3 install -r ./requirements.txt \
&& pip3 install awscli

RUN chmod +x ./*.sh \
&& chmod +x ./*.py \
&& chmod 777 ./*.sh \
&& chmod 777 ./*.py

CMD ["sh", "master.sh"]
