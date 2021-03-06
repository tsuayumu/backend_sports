class VirtualCurrencyController < ApplicationController
  def index
    render json: res_json
  end

  private

  def res_json
    { virtual_currencys: res_virtual_currencys }
  end

  def res_virtual_currencys
    VirtualCurrency.all.map do |v|
      {
        id: v.id,
        name: v.name,
        tweet_infos: res_tweet_infos(v)
      }
    end
  end

  def res_tweet_infos(virtual_currency)
    virtual_currency.virtual_currency_tweet_words.map do |tw|
      {
        id: tw.id,
        word: tw.word,
        per_day: res_per_day(tw),
        count: tw.virtual_currency_tweets.size
      }
    end
  end

  def res_per_day(tweet_word)
    tweet_word.virtual_currency_tweets.map do |tweet|
      {
        text: tweet.text,
        user_id: tweet.twitter_user_id
      }
    end
  end
end
