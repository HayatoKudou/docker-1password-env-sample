# docker-1password-env-sample

1Password CCIを使い、1Passwordで管理しているアイテムからローカルの.envを生成するサンプルリポジトリ

# サンプル環境の構築

`make docker/setup` でDockerfileからイメージ作成 & イメージからコンテナの起動

# 1Password CLI実行
- `make docker/exec` を実行し、起動したコンテナに入る
- コンテナ内で `make 1pass/env-file-inject` を実行し、1Passwordへのサインインと.envファイルの作成