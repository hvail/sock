FROM python:3.7.0-alpine3.7

ENV PORT=443
ENV PWD=sky1088

RUN ls -An
# WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["ssserver", "-p", $PORT, "-k", $PWD, "-m", "re4-md5", "--user", "nobody", "-d", "start"]