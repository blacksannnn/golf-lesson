# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| score              | text   | null: false |



## lesson テーブル

| Column                    | Type         | Options     |
| ------                    | ------       | ----------- |
| day                       | string       | null: false |
| golf club                 | text         | null: false |
| number of balls           | text         | null: false |
| contents of teaching      | references   | null: false |
| user                      | references   | null: false, foreign_key: true |


## comments テーブル

| Column       | Type       | Options                        |
| -------      | ---------- | ------------------------------ |
| content      | text       | null: false                    |
| lesson       | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |