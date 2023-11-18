# 基本イメージの指定
FROM intersystems/iris-community:latest-cd

# 必要なファイルやスクリプトをコンテナにコピー
# 例: COPY init_script.sql /tmp/init_script.sql

# イメージのビルド時に実行するコマンド
# 例: RUN iris start && iris sql < /tmp/init_script.sql && iris stop

# コンテナ起動時のエントリポイントの指定
# ENTRYPOINT [ "iris-main" ]