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


