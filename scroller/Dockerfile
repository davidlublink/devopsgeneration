FROM bash


RUN mkdir /local
RUN echo "This is the original file" > /local/myfile.txt
COPY run.sh /opt/run.sh

ENTRYPOINT ["sh", "/opt/run.sh"]
