# Blog des familles

This is our first encounter with Rails, we only use it to practice our database knowledge.
We are creating a Facebook-like blog platform, with users, articles, categories, comments and likes functionalites.
The tables and architecture are detailed below.

## Gems and Libraries
- `ActiveRecord` library to manipulate an sqlite3 database, it comes along with Rails.
- `Faker` gem to populate our database with names, strings and paragraphs.

## What we did
Use the Rails generate command to generate the classes and migrations for User, Article and Category.
```sh
$ rails generate model User
```
We then filled the migration and class files.

## Start the project
```sh
$ bundle install
```

Seed the database with Faker names from the file `db/seeds.rb` created during  the exercise
```sh
$ rails db:seed
```

In case you need to reset the db (drop + create + migrate + seed)
```sh
$ rails db:reset
```

## General architecture
We have 5 tables in our DB:
- users :
  - first_name
  - last_name
  - email
- articles :
  - title
  - content
  - user_id
  - category_id
- comments :
  - content
  - user_id
  - article_id
- categories :
  - name
- likes :
  - user_id
  - article_id


### From the rails console
To create a new User:
```sh
> User.create(first_name: "name", last_name: "last_name", email: "email")
```

To create a new article
```sh
> Article.create(user_id: user_id, title: "title", content: "content")
```
### To visualize the DB
I used `DB Browser for sqlite3`

## Notes
Had to specify `optional: true` in order to create a instance without filling all the columns
The `index: true` isn't necessary, but is there for perfomance purpose (from my understanding)
