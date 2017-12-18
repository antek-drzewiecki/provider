# README


## Requirements
This application requires the following application to run
- docker
- rvm or preinstalled ruby 2.3.4
- postgres 


## How to run
Run first `docker-compose up -d` this will start a postgres instance with the password `provider`.


Then set up the project with ruby 2.3.4.

### Inital steps
```ruby

bundle

bundle exec rake db:create

bundle exec rake db:migrate

bundle exec rake db:seed

```

### Start the server

Once this is set up initially you can run the app with
`bundle exec rails s`

This will start a server on localhost:3000.



### Usage

This application functions as an oauth provider with an api
The API consists of the user info and some posts.
The Api can be found under /api/v1/.

Additionally difference applications can be configured to access the app.
This can be done by accessing `http://localhost:3000/oauth/applications`.


Start creating blog posts on `http://localhost:3000/posts` and allow them to be accessed from an different app.

## Tests

If having done the initial steps run:
 
`bundle exec rspec`
