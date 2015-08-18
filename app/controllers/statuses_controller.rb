class StatusesController < ApplicationController
  def home
  end

  def public
    t = twitter
    @statuses = t.list_timeline('bendyworks', 'bendyworkers', count: 50)
  end

  private

  def twitter
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
    end
  end
end
