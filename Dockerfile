FROM python:3.7.0-alpine3.7

# ENV PORT=443
# ENV PWD=sky1088

WORKDIR /usr/src/app
ADD requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN ls -An

ENTRYPOINT ["/usr/local/bin/ssserver" "start"]