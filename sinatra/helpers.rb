require 'sinatra/base'
module Sinatra
  module Parsers
    def parse_text(text)
      split_text = text.split
      new_array = Array.new
      split_text.each do |split|
        if split.match(/http\:\/\/[a-zA-Z0-9*\D]{8,100}/)
          new_array.push("<a href=\"#{split}\" target=\"_blank\">#{split}</a>")
        elsif split.match(/@[a-zA-Z0-9*\D]{3,30}/)
          new_split = split.gsub("@", "")
          new_array.push("<a href=\"http://twitter.com/#{new_split}\" target=\"_blank\">#{split}</a>")
        else
          new_array.push(split)
        end
      end
      parsed_text = new_array.join(" ")
      return parsed_text
    end

    def formatted_date(date)
      date.gsub("+0000", "")
    end
  end

  helpers Parsers
end
