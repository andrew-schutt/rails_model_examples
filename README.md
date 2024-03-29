# README

## Running the Application

After cloning the repo you will need to run a few commands to get everything setup and running.

First try running `|> bundle install` from within the project root directory. This will setup all of the dependencies. You _might_ need to do a `|> gem install bundler` in order to be able to run this command. Bundler is a global CLI tool for managing Ruby dependecies (similar to say NPM). This install could take a minute as well.

Now that we have Rails and all of the necessary gems to run the project
we need to create the database.  To do this run `|> rails db:migrate` this
will create all of the tables and the table structure based off of
`db/schema.db`. This is one time setup.  Once the database is setup it
is good to go until you would like to recreate it.

Lastly in order to actually fire up the Rails server (and how to run the
application going forward) issue the following command.
`|> rails server`

## Using the Rails CLI to generate new resources

After running the initial project generation command (`rails new PROJECT_NAME`) I did the following couple commands to get the project in a good spot.

I ran two commands to generate the two models for this project.  The model files can be found in `app/models`.  The two commands that were run are the following.

`|> rails generate model Model email_address:string description:string`

`|> rails generate scaffold NewModel email_address:string description:string`

The first command only generates an empty class called `Model` that inherits from `ApplicationRecord` the Rails base class for all models and a migration that will add the specific fields `email_address` and `description` with the data type string.  This command also generates an empty test file and a [fixture file (sample test data)](http://guides.rubyonrails.org/testing.html#the-low-down-on-fixtures)

The second command generates many more files.  It generates an associated model, controller, views (index, edit, new, show, and form template), corresponding asset directories, migration, and finally test files for each.  This command will also add an entry into `/config/routes.rb` that will allow access to all controller methods.  These are all associated with `NewModel`.

The Rails official docs regarding `rails generate` lives here http://guides.rubyonrails.org/command_line.html#rails-generate

And some more advanced generator shortcuts can be found here https://richonrails.com/articles/rails-model-generator-shortcuts

Here are all the types that be used for fields on models:
```
integer
primary_key
decimal
float
boolean
binary
string
text
date
time
datetime
timestamp
```

Also I manually added the limit on the migration for `Model`, but the following command would have added the 106 character limit portion in the migration.

`|> rails generate model Model email_address:string description:string{106}`

![alt text](https://i.imgur.com/PdpaVOh.png)

The validation lines added in `Model` and in the migration for `Model` were the only "custom" code written.  Everything else was generated using the `rails` CLI.
