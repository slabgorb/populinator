class Corpus < ActiveRecord::Base
  require 'net/http'
  belongs_to :language
  after_save do
    create_histogram language.lookback
  end

  @@start_token = ' '
  @@end_token = ' '

  ##
  # Reads the file from the web and converts it into an array
  # @see Corpus#histogram
  # TODO: make this work even if pointed to a large file
  #
  def get_text
    Net::HTTP.get(URI('http://' + url.gsub(/http:\/\//,''))).downcase.split(//)#gsub(/[[:[punct]:]:]/, ' ').downcase.gsub(/\s+/, @@end_token).split(//)
  end

  def histogram
    JSON::parse(attributes[:histogram])
  end

  private
  ##
  # Compiles the letter probability data structure.
  #
  def create_histogram(lookback)
    histo = Hash.new
    key = [@@start_token] * lookback
    get_text.each do |char|
      ((histo[key.clone] ||= { })[char] ||= 0)
      histo[key.clone][char] += 1
      key.push(char).shift
    end
    update_attribute :histogram, histo.to_json
  end

end
