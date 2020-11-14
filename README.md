## usersテーブル

| Column          | Type    | Option     |
|-----------------|---------|------------|
| nickname        | string  | null: false|
| first_name      | string  | null: false|
| last_name       | string  | null: false|
| email           | string  | null: false|
| password        | string  | null: false|

### Association
has_many :templates
has_many :orders

## templatesテーブル

| Column          | Type       | Option     |
|-----------------|------------|------------|
| template_explain| string     | null: false|
| category_id     | refarences | null: false, foreign_key: true|
| template_image  | string     | null: false|
| user_id         | references | null: false, foreign_key: true|



### Association
belongs_to :user
has_one :order


## ordersテーブル

| Column          | Type       | Option     |
|-----------------|------------|------------|
| order_message   | string     | null: false|
| template_id     | references | null: false, foreign_key: true|
| category_id     | references | null: false, foreign_key: true|
| user_name       | references | null: false, foreign_key: true|

### Association
belongs_to :template
belongs_to :user



# アプリケーションの説明

## アプリケーション名  :WebMaker

## WebMakerの説明
### 近年、個人がをWEBサイト作成できるサービスも増え、自分のWEBサイトを誰もが持てる時代になってきています。またプログラミングスクールの普及などでWEBアプリケーションの作成をできる技術力を持つ人も増えいると思います。そこでWEBサイトを作りたい人と作れる人の需要と供給をマッチングできるようなアプリケーションを作成しています。
# 機能
### WebMakerは従来あったWeb作成アプリとは違う機能として、クリエイター登録できるという事です。クリエイターの機能としてテンプレート掲載機能という物があり、viewファイルのスクリーンショットをテンプレートとして掲載します。ユーザーにテンプレート、ジャンル、その他の説明など注文内容を入力してもらい注文が確定するとクリエイターが注文内容を元にホームページを作成します。作成中の打ち合わせや細かなやり取りなどのためにチャット機能なども追加実装していきたいと考えています。
## ユーザー認証機能
### gemのdeviceを使いユーザー認証機能を実装しました。クリエイターの登録も実装予定です。
## テンプレート掲載機能　
### クリエイターが自分で作成したviewのスクリーンショットやジャンル、細かな説明などを入力し掲載できる機能です。
## 注文機能
### ユーザーがテンプレート、ジャンルを選択するとクリエイターに注文が入ります。
## チャット機能
### ユーザーとクリエイターのメッセージのやり取りを可能にするための機能です。
## クリエイター評価
### ホームページ作成完了後にユーザー側がクリエイターの評価をつけることでユーザー側に良いクリエイターがはっきりわかるようになります。




