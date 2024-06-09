FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl jq make

COPY . ./

COPY --from=1password/op:2 /usr/local/bin/op /usr/local/bin/op

# バックグラウンドで実行を続けるプロセスを起動
CMD ["tail", "-f", "/dev/null"]