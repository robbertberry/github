# frozen_string_literal: true

class TweetSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :body, :user_id, :tweet_id, :likes_count, :retweet_count, :is_liked, :is_retweet_by_user,
             :created_at, :updated_at

  def likes_count
    object.likes.count
  end

  def retweet_count
    if object.tweet_id.present?
      Tweet.where(tweet_id: object.tweet_id).count
    else
      Tweet.where(tweet_id: object.id).count
    end
  end

  def user_name
    object.user.name
  end

  def is_liked
    object.liked_by?(current_user)
  end

  def is_retweet_by_user
    object.tweet_id.present? && (object.user == current_user)
  end
end
