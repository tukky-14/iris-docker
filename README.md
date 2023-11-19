## Docker を使用して IRIS 環境を構築

| コマンド             | 説明                                                                           |
| -------------------- | ------------------------------------------------------------------------------ |
| docker-compose up -d | docker-compose.yml があるファイルで実行（-d オプションでバックグラウンド実行） |
| docker-compose ps    | 起動状態の確認                                                                 |
| docker-compose stop  | 停止                                                                           |
| docker-compose rm    | 削除                                                                           |
| docker-compose down  | 停止・削除・ネットワーク削除                                                   |

- 管理ポータル
  - http://localhost:52773/csp/sys/%25CSP.Portal.Home.zen
- ターミナル

  - コンテナにアクセス
    ```
    docker exec -it iris_docker bash
    ```
  - コンテナ内の bash シェルで IRIS ターミナルを開始する
    ```
    iris session iris
    ```
  - 時刻出力
    ```
    w $zdt($h, 3, 1)
    ```

<br/>

### 参考資料

- [intersystems/iris-community](https://hub.docker.com/r/intersystems/iris-community/tags)
- [Docker に IRIS を構築する簡単なチュートリアル](https://jp.community.intersystems.com/post/docker%E3%81%ABiris%E3%82%92%E6%A7%8B%E7%AF%89%E3%81%99%E3%82%8B%E7%B0%A1%E5%8D%98%E3%81%AA%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB)
