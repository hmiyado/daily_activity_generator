# DailyReportGenerator

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/daily_report_generator`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'daily_report_generator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install daily_report_generator

### for Github

Write `~/.netrc`

```
machine api.github.com
  login your_username
  password password_or_your_api_token
```

### for Google Calendar

Create your service account and download credential file in `~/credentials.json`
see: https://cloud.google.com/docs/authentication/getting-started?hl=en

### for Slack

Set your slack access token as environment variable `SLACK_API_TOKEN`

## Usage

```
$ bundle exec ruby exec/daily_report_generator help
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hmiyado/daily_report_generator.

