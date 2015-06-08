require 'htmlentities'

class BUCNEWS
  attr_accessor :title, :description, :thumbimg, :url 

FEED = "http://adventist.org.uk/news/news.rss".freeze
  #FEED = "http://adventist.org.uk/news/news.rss".freeze

  def initialize(params)
    @title       = params[:title]
    @description = params[:description]
    @thumbimg = params[:thumbimg]
    @url         = params[:url]
  end

  def self.load(amount=0)
    data = Hash.from_xml(open(FEED).read)
    items = data["rss"]["channel"]["item"]

    items[0..amount-1].collect do |item|
      BUCNEWS.new(
        :title => HTMLEntities.new.decode(item["title"]),
        :description => HTMLEntities.new.decode(item["description"]),
        :thumbimg => HTMLEntities.new.decode(item["guid"]),
	:url => item['link'])
	
    end
  end
end