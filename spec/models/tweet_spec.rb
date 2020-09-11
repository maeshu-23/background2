require 'rails_helper'

describe Tweet do
  describe '#create' do
    it "タイトルが空ならNG" do
      tweet = build(:tweet, title: nil)
      tweet.valid?
      expect(tweet.errors[:title]).to include("を入力してください")
    end
    it "投稿内容が空ならNG" do
      tweet = build(:tweet, body: nil)
      tweet.valid?
      expect(tweet.errors[:body]).to include("を入力してください")
    end
  end
end
