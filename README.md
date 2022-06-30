# python-cpu-docker
ubuntu20.04のイメージをベースとしたpython開発環境。
基本的な設定の変更はdocker_compose.ymlを変更することで定義する。またコンテナ名に応じて、/docker/container_name.txtを書き換える、

Dockerに関するシェルスクリプトを`docker/`フォルダにまとめた。
`Docker`に関するコマンドを記載している。
各シェルスクリプトのファイルを実行すれば簡単にDockerを利用できる。

| ファイル | 説明 | 引数（デフォルト値） |
| --- | --- | --- |
| `./docker/build.sh` | DockerfileからDockerイメージを作る | コンテナで常時実行するコマンド (fish) |
| `./docker/run.sh` | コンテナを起動する。このシェルスクリプトを実行したディレクトリがコンテナ内の`/workspace/`に**マウントされ、ファイルが同期される**。 | コンテナで常時実行するコマンド (fish) |
| `./docker/exec.sh` | コンテナ内で新しいコマンドを実行する。 | 実行するコマンド (fish) |
| `./docker/stop.sh` | コンテナを停止させる。 | 実行するコマンド (fish) |
| `./docker/jupyter.sh` | コンテナ内でjupyter-labを実行する。このまま実行すると、同一LAN内からなら誰でもアクセスできるため**非常にセキュアでない**、実行には注意すること。（パスワードなし。）もしくは、｀--NotebookApp.token=''｀にNotebook アクセス時の token 文字列を設定できる。
| サーバーのポート (8888) |
