FROM ubuntu:18.04

LABEL version="Sample App"
LABEL description="Test with Labels & Env Variables in Image"
LABEL deployment="dev"

ENV MYSQL_HOST="DB_Server"
ENV MYSQL_USER="operations"
ENV MYSQL_PASSWORD="5TTnvuTDJJSq6"
ENV PC_ACCESS_KEY="5bc024ae-76b6-45f4-99e6-51b8453804d3"
ENV PC_SECRET="qO1Z82jmdZHEm0YW6BAYsnEHat0="
RUN apt-get update   && \
    apt-get -y upgrade   && \
    apt-get -y install openssl shellinabox ca-certificates iputils-ping wget curl telnet sudo && \
    adduser lab --gecos "Me,Office,WorkPhone,HomePhone" --disabled-password  && \
    echo 'lab:$6$88GqT260$I8mtFOPBqCSeDWUdDcWBV0oDR1c2NAbg7WFh/6n6cb60sWdXhLJDQ6ELEAIErDr2p5syvVZkcsualGt4pC8Es1' | chpasswd --encrypted  && \
    apt-get clean 

EXPOSE 4200

ENTRYPOINT ["shellinaboxd", "-s", "/:LOGIN", "--disable-ssl"]
