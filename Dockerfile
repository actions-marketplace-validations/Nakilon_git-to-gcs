FROM google/cloud-sdk:alpine
COPY main.rb /main.rb
RUN sh -c "pwd && ls -l /github/home && ls -l /github/workflow && ls -l /github/workspace && apk add ruby && ruby main.rb"
