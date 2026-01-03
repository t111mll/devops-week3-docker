FROM ubuntu:22.04
WORKDIR /app
COPY hello.sh /app/hello.sh
RUN chmod +x /app/hello.sh
CMD [ "/app/hello.sh" ]
