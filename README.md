## Rails + Docker + PostgreSQL 環境構築テンプレート

### はじめに

既存の Rails アプリを Docker で開発環境構築するためのテンプレートです。  
このリポジトリを `clone` して `docker compose up` するだけで、Rails 開発環境を構築できます。

---

### 使用技術

- Ruby 3.4.5  
- Rails 8.0.2  
- PostgreSQL 12  
- Docker version 28.3.2
- Docker Compose version v2.38.2
- Importmap-rails（Rails 8 対応）

---

### セットアップ手順

#### 1. リポジトリをローカルにクローンする

```bash
git clone https://github.com/rai-code11/rails-docker.git <任意のディレクトリ名>
cd <任意のディレクトリ名>
git checkout -b <任意のブランチ名>
```

#### 2. Dockerfileからコンテナのimageを作成する

```bash
docker compose build
```

#### 3. RailsとPostgreSQLのコンテナを起動する

```bash
docker compose up
```

#### 4. Railsのアプリ用にRailsコンテナ内にDB作成し設定を反映させる

```bash
docker compose exec web rails db:create
docker compose exec web rails db:migrate
```

#### 5. Importmap をインストールする

```bash
docker compose exec web rails importmap:install
```

###  アクセス方法

ブラウザで以下にアクセスして、Rails アプリの表示を確認する

```
http://localhost:3000
```

### 停止&起動方法
`control + c`で停止し、`docker compose up` で起動する

---
