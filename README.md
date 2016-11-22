keyakifeed2-api
====

# TODO

## アプリ間のaddon(db)の共有

http://blog.flect.co.jp/labo/2015/01/addon-a943.html
https://kayakuguri.github.io/blog/2016/05/16/heroku-addon-attach/

### ツールのインストール

```
$ heroku plugins:install https://github.com/heroku/heroku-addon-attachments.git
```

### 事前確認

```
$ heroku addons
```

```
saitoushouta-no-MacBook-Pro:keyakifeed2-api saitoushouta$ heroku addons

Add-on                                      Plan       Price  State
──────────────────────────────────────────  ─────────  ─────  ───────
heroku-postgresql (postgresql-round-XXXXX)  hobby-dev  free   created
 └─ as DATABASE
```

### 接続

```
$ heroku addons:attach -a kf2-c-e0 postgresql-round-XXXXX
```
- kf2-c-e0 はアプリ名
- postgresql-round-XXXXX は連携するアプリ名

```
saitoushouta-no-MacBook-Pro:keyakifeed2-api saitoushouta$ heroku addons:attach -a kf2-c-e0 postgresql-round-XXXXX
Attaching postgresql-round-XXXXX to ⬢ kf2-c-e0... done
Setting DATABASE config vars and restarting ⬢ kf2-c-e0... done, v3
```
### 確認

```
saitoushouta-no-MacBook-Pro:keyakifeed2-api saitoushouta$ heroku addons

Add-on                                      Plan       Price  State
──────────────────────────────────────────  ─────────  ─────  ───────
heroku-postgresql (postgresql-round-XXXXX)  hobby-dev  free   created
 ├─ as DATABASE
 └─ as DATABASE on kf2-c-e0 app

The table above shows add-ons and the attachments to the current app (kf2-api) or other apps.
```
