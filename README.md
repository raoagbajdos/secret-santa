###Secret Santa Web App - Ruby
---
```
As a user
I want to be able to sign_up to secret Santa
```

```
As a user
I want my name and email address to be added to the secret Santa database
```

```
As a user I want to be paired randomly with a cohort
member for secret Santa
```

```
As a user
I want to be able to view the gift I receive or need to give to my pair
```

- Connect to psql
- Create the database using the psql command CREATE DATABASE Secret_Santa;
- Connect to the database using the pqsl command \c Secret_Santa;
- Run the query we have saved in the file 01_create_secret_santa_table.sql


.
├── Gemfile
├── Gemfile.lock
├── app.rb
├── config.ru
└── spec
    ├── features
    └── spec_helper.rb
