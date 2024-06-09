docker/setup:
	docker build -t docker-1password-env-sample .
	docker run --name docker-1password-env-sample -d docker-1password-env-sample

docker/exec: docker_option=-it
docker/exec: service=docker-1password-env-sample
docker/exec: command=bash
docker/exec:
	docker exec $(docker_option) $(service) $(command)

# パスワード入力等インタラクティブな処理がありMakefileで実行するのは難しいためスクリプトで実行する
1pass/env-file-inject:
	./env-file-setup.sh