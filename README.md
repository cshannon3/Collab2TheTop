# README


So set up github auth using https://richonrails.com/articles/github-authentication-in-ruby-on-rails

rails g model User username avatar_url email uid provider oauth_token

rake db:migrate

rails g controller sessions new create destroy

// Now set up challenges and entries //

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


/// Git stuff
git status //shows what needs to be added or "staged" to be commited

git add -A // add all the changes to the "stage" where they can then be committed to the tree

git commit -m "message"//commit your changes to whatever branch you are working on, so now the version of the code that git has is the version you just committed

git remote add origin https://github.com/cshannon3/Collab2TheTop.git  
// Create a new empty repo on github then run command above to link the remote repo to this git tree

git push -u origin master
// push the git tree to remote(named origin) from local(named master)


