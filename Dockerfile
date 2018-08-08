FROM python:3.7.0-alpine3.7

ENV PORT=443
ENV PWD=sky1088

WORKDIR /usr/src/app
ADD requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install shadowsocks
COPY . .

CMD ["ssserver" ,"-p" ,$PORT, "-k", $PWD, "-m", "re4-md5", "--user", "nobody", "start"]