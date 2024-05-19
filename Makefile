docker/setup:
	docker build -t docker-1password-env-sample .
	docker run -it --rm docker-1password-env-sample make 1pass/env-file-inject

1pass/env-file-inject:
	./env-file-setup.sh