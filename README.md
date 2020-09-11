# README
  <img width="1440" alt="home" src="https://user-images.githubusercontent.com/67140111/92088175-7ac2f400-ee07-11ea-89d7-31a0fafa1005.png">
  

## アプリ概要
  自分の知っているワードに纏わる背景・裏話・プチ雑学などを投稿し、共有し合うアプリです。
  
## App URL  
  https://backgrrround.herokuapp.com

## 制作背景
  そのワードに対する背景や裏話を知ることによってより知識が深まり、好感や親近感が持てるのではないかと思い、制作しました。 
  また、当アプリは こういうアプリが存在してたら使うだろうな を軸にし、ターゲット層を設定しました。  
 - ターゲット層  
   - 探究心が旺盛な人  
   - 知識という武器を身に付けたい人  
   - 自分の知っている知識や雑学を人に言いたい人  
   
 美味しいお店を調べたいから食べログを見ると同様に、この人・物についてもっと知りたいからBackgroundで調べてみよう！みたいな感覚で使用して頂けたら幸いです。
  
## DEMO
  - 新規登録画面<img width="1440" alt="new" src="https://user-images.githubusercontent.com/67140111/92088570-0046a400-ee08-11ea-91df-4a9a71d4c7d0.png">

  - ログイン画面からゲストユーザーとしてログインして頂けます![guest](https://user-images.githubusercontent.com/67140111/92088989-937fd980-ee08-11ea-8c52-9a8012002908.gif) 
  
  - ユーザー一覧画面&新規投稿画面&投稿一覧画面![menu](https://user-images.githubusercontent.com/67140111/92091195-5a953400-ee0b-11ea-880f-05b65724a356.gif)
  
  - マイページ&投稿削除機能![mm](https://user-images.githubusercontent.com/67140111/92091640-00e13980-ee0c-11ea-9d77-ddde109b7b9e.gif)
  
  - 投稿編集機能![tweet](https://user-images.githubusercontent.com/67140111/92092612-47836380-ee0d-11ea-9635-09f46c4f1a01.gif)
  
  - いいね機能![f](https://user-images.githubusercontent.com/67140111/92093207-0770b080-ee0e-11ea-886c-637b87b7e646.gif)

## 工夫したポイント
  見やすさ・分かりやすさ・使いやすさの3点を重視して作成しました。  
  特に、マイページではプロフィール画像やプロフィールを設定できるようにして、普段使い慣れてるようなSNSアプリに近づけました。


## 使用技術
  Ruby/Ruby on Rails/MYSQL/Github/Heroku/AWS/Visual Studio Code


## 今後実装したい機能
  - 検索機能  
  - フォロー機能


## DB設計
  ### usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|


#### Association
- has_many :tweets, dependent: :destroy
- has_many :favorites, dependent: :destroy



### tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|title|string|null: false|
|body|text|null: false|

#### Association
- belongs_to :user
- has_many :favorites, dependent: :destroy


### favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|tweet_id|integer|null: false|

#### Association
- belongs_to :user
- belongs_to :tweet
