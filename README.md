# Local Development Setup

## Technology Stack
The setups steps expect following tools installed on the system.

- Ruby 3.0.3
- Rails 6.1.3
- Bundler 2.x
- PostgreSQL

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

### 4. Configure secret key

Now generate a secret key

```ruby
rake secret
```

Open the credentials file from the command line.

```bash
EDITOR=nano rails credentials:edit --environment development
```

And paste in the following, with the key generated from running rake secret above.

```yaml
devise:
  jwt_secret_key: <rake secret key>
```

### 5. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000/tweets/home
