# README
## child_minder(保育者)テーブル
|Column|Type|Options|
|------|----|-------|
|child_minder_nickname(ニックネーム)|string|null: false|
|gender_id(性別)|integer|null: false|
|icon(写真)|string|
|years_of_experience_id(経験年数)|integer|null: false|
|introduction(紹介文)|string|

## parent(親)テーブル
|Column|Type|Options|
|------|----|-------|
|parent_nickname(ニックネーム)|string|null: false|
|gender_id(性別)|integer|null: false|
|parent_icon(写真)|string|

## parent_garden中間テーブル
|Column|Type|Options|
|------|----|-------|
|garden|references|foreign_key: true, null: false|
|parent|references|foreign_key: true, null: false|

## garden(保育室)テーブル
|Column|Type|Options|
|------|----|-------|
|child_minder|references|foreign_key: true, null: false|
|postal_code(〒)|string|null: false|
|prefecture_id(県)|integer|null: false|
|city_id(市)|integer|null: false|
|detail(区町村番地|string|null: false|
|building(ビル名)|string|
|visit_id(見学可否)|integer|null: false|
|price(料金)|integer|null: false|
|acceptable_people_id(受け入れ可能人数)|integer|null: false|

## child(子)テーブル
|Column|Type|Options|
|------|----|-------|
|parent|references|foreign_key: true, null: false|
|garden_id|integer|
|child_nickname(ニックネーム)|string|null: false|

## contact_book(連絡帳)テーブル
|Column|Type|Options|
|------|----|-------|
|garden|references|foreign_key: true, null: false|
|status_id(用途)|integer|
|contact_comment(コメント)|string|null: false|












