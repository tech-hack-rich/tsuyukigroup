# TSUYUKI group ホームページ

#概要
知り合いのグループ会社露木グループのホームページを作ってみました。会社と連携をして実際にウェブサイトを作る経験をしてみたかったので、社長にお願いして作らせてもらいました。
まだ未実装のところもありますが、途中経過を紹介します。

#ポイント
- 求人フォームが欲しいとのことで、指定したgmailアドレスにフォームの内容が届くように実装しています。
- 求人フォームに登録された内容はデータベースに保存しています
- youtubeの動画を埋め込んでいます（後に会社紹介の動画作成しホームページに載せたいとのことでした）
- 元のホームページの内容を引継ぎつつ、自分なりに会社のイメージを汲み取り作成しています。

# 課題と今後実装したい機能
## 課題
- レスポンシブの調整
## 今後実装したい機能
- googlemapの挿入（施設が複数のため）

# 求人フォーム
[![求人フォーム](https://i.gyazo.com/f8ca0e36fda8f0661b49468b7a20d44a.jpg)](https://gyazo.com/f8ca0e36fda8f0661b49468b7a20d44a)

# 求人フォームのメール内容
[![Image from Gyazo](https://i.gyazo.com/6944cd45b32be02ab088c87ce3405d82.png)](https://gyazo.com/6944cd45b32be02ab088c87ce3405d82)

- googlemapの挿入（施設が複数のため）

# 使用技術（開発環境）
## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML,CSS

## データベース
mysql2

## ソース管理
GitHub, GitHubDesktop

## テスト
Rspec

## エディタ
VsCode

# テーブル設計

## information テーブル 

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| name_spell | string | null: false |
| birhtdate  | date   | null: false |
| email      | string | null: false |
| motivation | text   | null: false |
