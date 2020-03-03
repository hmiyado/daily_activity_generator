# frozen_string_literal: true

require 'thor'
require 'roko/source/events'

module Roko
  class Cli < Thor
    package_name 'daily report generator'

    desc 'github', 'generate github daily report'
    def github
      Roko::Source::Events.setup
      github_events = Roko::Source::Events.github
      github_events.each { |event| puts event.oneline }
    end

    desc 'google_calendar', 'generate google calendar report'
    def google_calendar
      Roko::Source::Events.setup
      google_calendar_events = Roko::Source::Events.google_calendar
      google_calendar_events.each { |event| puts event.oneline }
    end

    desc 'slack', 'generate slack report'
    def slack
      Roko::Source::Events.setup
      events = Roko::Source::Events.slack
      events.map { |event| puts event.oneline }
    end

    desc 'today', 'generate today report'
    def today
      Roko::Source::Events.today
      today_events = Roko::Source::Events.all
      today_events.map { |event| puts event.oneline }
    end
  end
end