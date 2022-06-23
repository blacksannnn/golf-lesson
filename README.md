# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
| lesson day                | string       | null: false |
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