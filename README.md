This project is under Heroku

### Create heroku project
`heroku create`

### Deploy
`git push heroku master`

### Run migrations
`heroku run rake db:migrate`

### Connect to database
- Database infos: `heroku pg:info`
- Client to make queries: `heroku pg:psql`
- Quit psql client: `\q [ENTER]`