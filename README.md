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

So set up github auth using https://richonrails.com/articles/github-authentication-in-ruby-on-rails

rails g model User username avatar_url email uid provider oauth_token

rake db:migrate

rails g controller sessions new create destroy

// Now set up challenges and entries

rails g controller challenges

rails g controller entries

rails g model Challenge title:string description:text difficulty:integer

rails g model Entry title:string url1:string url2:string score:integer

// Add challenge ref to Entry and add githubusername to entry and challenges

rails g migration AddChallengeRefToEntries challenge:references

rails g migration AddGithubusernameToEntry githubusername:string

rails g migration AddGithubusernameToChallenge githubusername:string

rails db:migrate

/// Add creatorentry bool (integer where 1 is true, 0 is false) to entry to signify if entry is from the creator

rails g migration AddCreatorentryToEntry creatorentry:integer

rails db:migrate

