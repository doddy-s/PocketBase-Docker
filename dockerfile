FROM alpine:latest


RUN mkdir pocketbase
RUN cd pocketbase
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.12.3/pocketbase_0.12.3_linux_amd64.zip
RUN unzip -o pocketbase_0.12.3_linux_amd64.zip
RUN rm CHANGELOG.md LICENSE.md pocketbase_0.12.3_linux_amd64.zip
RUN chmod +x ./pocketbase


EXPOSE 8090


CMD ["./pocketbase", "serve", "--http", "0.0.0.0:8090"]