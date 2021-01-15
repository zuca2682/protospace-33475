# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| name      | string | null: false |
| email     | string | null: false |
| password  | string | null: false |
| profile   | text   | null: false |
| occupation| text   | null: false |
| position  | text   | null: false |

### Association

- has_many :prototype_users
- has_many :prototypes, through: prototype_users
- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| title     | string    | null: false |
| catch_copy| text      | null: false |
| concept   | text      | null: false |
| image     |           | null: false |

### Association

- has_many :prototype_users
- has_many :users, through: prototype_users
- has_many :comments
- belongs_to :user

## prototype_users テーブル

| Column    | Type      | Options     |
| --------- | --------- | ----------- |
| user      | reference | null: false, foreign_key: true |
| prototype | reference | null: false, foreign_key: true |

### Association
- belongs_to :prototype
- belongs_to :user

## comments テーブル

| Column   | Type      | Options     |
| -------- | --------- | ----------- |
| text     | text      |             |

### Association

- belongs_to :prototype
- belongs_to :user