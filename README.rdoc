This project is under Heroku

### Create heroku project
`heroku create`

### Deploy
`git push heroku master`


### Run migrations
`heroku run rake db:migrate`

### Connect to database
- Data base infos: `heroku pg:info`
- Client do make queries: `heroku pg:psql`
- Sair do clint: `\q [ENTER]`