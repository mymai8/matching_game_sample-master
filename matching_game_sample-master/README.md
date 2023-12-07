# アプリケーション名
MatchingGame  
  
  
# アプリケーション概要
APEXというFPSゲームを人に教えてあげたい人と教えてもらいたい人がマッチングできるアプリです。  
  
  
# URL
https://matching-game-2suz.onrender.com  
  
  
# テスト用アカウント
Basic認証ID:admin  
Basic認証パスワード:2222  
出品者用メールアドレス:taro@com  
出品者用パスワード:123abc  
購入者用メールアドレス:hanako@com  
購入者用パスワード:abc123  
  
  
# 利用方法
▼ユーザー登録方法  
「新規登録」をクリック  
⇒必要情報を入力  
⇒「Sign up」をクリック  
  
▼教える人＝出品  
「コーチ登録」をクリック  
⇒必要情報を入力  
⇒「登録する」をクリック  
  
▼教えてもらいたい人＝購入  
受けたいコーチング内容をクリック  
⇒必要情報を入力  
⇒「購入」をクリック  
  
▼マッチング後  
2人のルームが作成され、会話ができるようになります。  
  
  
# アプリケーションを作成した背景
ゲームをしている中で、そのゲームに詳しい人にコーチングをしてもらいたいと思いつつも、Twitterなどで探すのに苦労した経験がありました。  
そこで、コーチと生徒がマッチングするアプリケーションがあったら便利だと思い、制作しました。  
  
  
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1hRrlotkTldTG1a4uX_kbTlvfCY65I3BCOmA9qaxV4Gg/edit?usp=sharing  
  
  
# 実装した機能についての画像やGIFおよびその説明
コーチとしての登録は、右上の「コーチ登録」を押し、必要情報を入力して「登録する」ボタンを押します。  
[![Image from Gyazo](https://i.gyazo.com/c5f39ecbec5992cb797c4bbf7b63c219.gif)](https://gyazo.com/c5f39ecbec5992cb797c4bbf7b63c219)  
  
コーチングの受講を希望する場合は、トップ画面に並んでいるコーチング情報の中から受けたいものをクリックし、必要情報を入力して「購入」ボタンを押します  
[![Image from Gyazo](https://i.gyazo.com/9f171b39f285cbada2c1a831f8abebbd.gif)](https://gyazo.com/9f171b39f285cbada2c1a831f8abebbd)  
  
  
# 実装予定の機能
購入後、購入したことがわかるよう出品者と購入者だけのルームを実装予定です。  
また、購入前に出品者に確認したいことがある場合にコメントできるよう、コメント機能を実装予定です。  
  
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/47377ff139815794a87290410f6038b8.png)](https://gyazo.com/47377ff139815794a87290410f6038b8)  
  
  
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/57d53684ba316f95c1d3042134a0f65e.png)](https://gyazo.com/57d53684ba316f95c1d3042134a0f65e)  
  
  
# 開発環境
* フロントエンド  
* バックエンド  
* インフラ  
* テスト  
* テキストエディタ  
  
  
# ローカルでの動作方法
以下のコマンドを順に実行してください。  
% git clone https://github.com/mymai8/matching_game.git  
% cd matching_game  
% bundle install  
% yarn install  
  
  
# 工夫したポイント
使用キャラクターやプラットフォーム、コミュニケーションツールは複数選択が予想されるため、text型にしてチェックボックスとしてデータを保存するよう工夫しました。  
カリキュラムでは扱っていない内容でしたので、webで検索しながら実装しました。  
まだまだビューが整っていない部分はありますが、私自身の「こんなアプリがあったらいいな」という思いを形にすることができました。  
