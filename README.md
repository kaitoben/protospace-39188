#テーブル設計

##usersテーブル

| Column             | Type      | Option     |
| ------------------ | --------- | ---------- |
| email              | string    | not null   |
| encrypted_password | string    | not null   |
| name               | string    | not null   |
| profile            | text      | not null   |
| occupation         | text      | not null   |
| position           | text      | not null   |


- has_many :prototypes
- has_many :comments


##prototypesテーブル

| Column     | Type       | Option   |
| ---------- | ---------- | -------- |
| title      | string     | not null |
| catch_copy | text       | not null |
| concept    | text       | not null |
| user       | references | not null |      


- belongs_to :users
- has_many :comments

##commentsテーブル

| Column    | Type       | Option   |
| --------- | ---------- | -------- |
| content   | text       | not null |
| prototype | references | not null |
| user      | references | not null |

- belongs_to :users
-  belongs_to :prototypes 