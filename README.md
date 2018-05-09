# Homework 4 - Building a simple Rails application Part 2

## Due Date

Tuesday, May 15, 2018 @ 1:30 PM

## Goals

- The purpose of this homework is to extend homework #3 with the following
  functionality:

  - create the necessary routes, controllers, model, and views for adding, deleting, and updating an author

  - create `Author` model should have the following fields

    - first_name - string

    - last_name - string

    - age - integer

  - create a `full_name` method on the `Author` model which returns
    the author's first name and last name separated by a space.

    ```
    rails c
    >> author = Author.create!(first_name: 'Jane', last_name: 'Doe')
    >> author.first_name
    => "Jane"
    >> author.last_name
    => "Doe"
    >> author.full_name
    "Jane Doe"
    ```

  - remove the `author` field from the `books` table

    Note:  You'll need to create a Rails migration to remove this field from
           the `books` table.

  - add a `sub_title` field to the books table

    Note:  You'll need to use a Rails migration for adding the additional field.

  - update column titles on `Books#index.html.erb` to display the following information:

    - Title
    - Author(s)
    - Classification
    - Genre
    - Book Type
    - Year

  - create `Authorship` model which associates a book to an author with the following fields:

    - book_id - integer

    - author_id - integer

  - add the proper association statements to both your Author and Book models

    Note:  That this represents a many to many association.  For example, a book
           has many authors and an author has many books.  Hint:  Use the

           `has_many :through` association.  Why?  On the author's `show.html.erb`,  you'll display a single author and all of their books.  On the book's `show.html.erb`, you'll display all the authors which wrote a given book.

  - add a little Bootstrap styling to the search field and the index page of results

## Readings and Resources

Active Record Migrations - http://guides.rubyonrails.org/active_record_migrations.html

The has_many :through Association - http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association

Faker - https://github.com/stympy/faker

Seed File - http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html

## Creating Branch for Part 2

  ```
  $ cd fh-homework-02
  $ git checkout -b part-02-refactoring
  ```

## Generate Fake Data

- Use a Ruby gem called `faker` to create 50 books and 25 authors

  - create 50 books

  - create 25 authors

- Create the authorships by using the following algorithm:

  - get an array of all the books

  - get an array of all the author IDs

  for each book in books
    1) generate a random author ID from the list of possible author IDs
    2) create an authorship which has the current book ID and the ID of the author
       from step 1
  end for

## Deliverables

  - push changes to Github

    ```
    $ git checkout part-02-refactoring
    $ git push
    ```

  - merge changes into the master branch and push to Github

    ```
    $ git checkout master
    $ git merge part-02-refactoring
    $ git push
    ```

  - send me the link to your `part-02-refactoring` branch

## Have Questions

Please make a reasonable effort to complete the homework prior to our next session.  If you have any questions regarding this homework, please do send me a message via Slack.
