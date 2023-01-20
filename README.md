# README
# アプリケーション名
CookRecipe

# アプリケーション概要
レシピの投稿、シェアを行いレシピ情報の交換やコミュニケーションをとる事ができる
# URL
*https://cookrecipe.onrender.com
# テスト用アカウント
・Basic認証パスワード：admin

・Basic認証ID：3333

・ユーザー①

・メールアドレス：test@com

・パスワード：aaaaaa

・ユーザー②

・メールアドレス：com@test

・パスワード：bbbbbb
# 利用方法

## レシピ投稿
１、トップページのヘッダーからユーザー新規登録を行う。

２、ヘッダーの新規投稿ボタンから投稿内容（写真、料理名、材料、作り方）を入力し）を入力し投稿する。

３、投稿したレシピが一覧表示され気になる投稿があれば詳細ページに行く。

## 他者と情報交換を行う
１、自身のレシピを公開すると同時に他者のレシピも閲覧共有できる。

２、コメント機能によって具体的なやり取りや内容ができ調理法など知りたいことの情報交換が出来る。

# アプリケーションを作成した背景
無数にあるレシピサイトですが課金するほどでもない登録までの課程がめんどくさい、掲示されている情報が
多すぎるなど、調理でレシピアプリを使う際に考える機会がありました。
ネットで気に入ったレシピをみつけてスクリーンショットをするも画像フォルダに埋もれてしまう。同様な意
見を持つ利用者は多いと考えました。

もっとシンプルなレシピアプリを作りたいと思い、簡易的必要最低限の機能で情報交換や他者のレシピを見れ自身の気に入ったレシピも投稿できるシンプルなアプリを開発することにしました。


# 洗い出した要件
要件定義シート
https://docs.google.com/spreadsheets/d/1qAPftvOjiPZ19QvZAqvwkXbvdhFJgzLJMpjRDVL3XaA/edit#gid=982722306
# 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/38b58f075f0196056e7cdfc9d66b7a78.png)](https://gyazo.com/38b58f075f0196056e7cdfc9d66b7a78)

[![Image from Gyazo](https://i.gyazo.com/f1e7f4aba135e0c6b7a58b52a55ca1b9.png)](https://gyazo.com/f1e7f4aba135e0c6b7a58b52a55ca1b9)

トップページのヘッダーから新規登録ページ、ログインページにそれぞれ遷移します。

必要項目入力しログインをします

[![Image from Gyazo](https://i.gyazo.com/6b79194c109dc78e76fdf4b49396478d.gif)](https://gyazo.com/6b79194c109dc78e76fdf4b49396478d)

一覧表示ページ（トップページ）です。各ページに遷移できるボタンがあり、投稿したレシピが表示されます。

マイページ、詳細ページに遷移したり削除、編集が行えます。

[![Image from Gyazo](https://i.gyazo.com/88efb96650c2a3a6a6073deae09b485f.gif)](https://gyazo.com/88efb96650c2a3a6a6073deae09b485f)

レシピ投稿ページです。必要項目入力し投稿します。

投稿すると一覧ページに遷移します。

[![Image from Gyazo](https://i.gyazo.com/7def7cfee66f17c72b78f0a83f88efcd.png)](https://gyazo.com/7def7cfee66f17c72b78f0a83f88efcd)

詳細ページです。レシピの材料、作り方を見れます。

コメント投稿、削除を行えます。

投稿の削除、編集ページにも遷移できます。

[![Image from Gyazo](https://i.gyazo.com/be46cbf1890066932e2ba67f86bf17f5.gif)](https://gyazo.com/be46cbf1890066932e2ba67f86bf17f5)

投稿したレシピの編集が行えます。編集したい項目を編集して投稿ボタンを押します。

[![Image from Gyazo](https://i.gyazo.com/9041ec95b6b05314ecded93692d70853.jpg)](https://gyazo.com/9041ec95b6b05314ecded93692d70853)

マイページです。トップページ、詳細ページから遷移できます。

そのユーザの投稿したレシピが見られます。

# 実装予定の機能
・いいね機能。
・レシピのカテゴリー検索機能。
# データベース設計

[![Image from Gyazo](https://i.gyazo.com/75b7a6939a477f4a19b693ca60280d46.png)](https://gyazo.com/75b7a6939a477f4a19b693ca60280d46)

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/dd34f885f3b44000edfb578d29fb9286.png)](https://gyazo.com/dd34f885f3b44000edfb578d29fb9286)

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

・フロントエンド

・バックエンド
# ローカルでの操作方法
% git clone https://github.com/ryu0929miki/cookrecipe

% cd ajax_app

% bundle install

% yarn install

