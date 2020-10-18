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
| category        | bigint     | null: false|
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
### 昨今、Jimdoやwix.comのような個人や団体がホームページなどをプログラミングやWebアプリケーションの知識がなくても、作成できるサービスが出てきています。従来、ホームページの作成などは高額な費用が必要になっていま
### したが、低価格で個人でも団体でもホームページを作成可能なサービスというのは、プログラミングやWebアプリケーションの知識を学んでさらにすごいサービスなのだなと実感しました。そして初めて自分で作るアプリケーションはこのようなアプリケーションを作りたいと思い、WebMakerを作成しています。




