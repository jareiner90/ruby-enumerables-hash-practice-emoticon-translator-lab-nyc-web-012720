# require modules here
require "yaml"



def load_library(library)
  # code goes here
  library = YAML.load_file("./lib/emoticons.yml")
  returned_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  library.each do |key, value|
    english = value[0]
    japan = value[1]
    returned_hash["get_meaning"][japan] = key
    returned_hash["get_emoticon"][english] = japan
  end
  returned_hash
end


def get_japanese_emoticon(file, emoticon)
  lib = load_library(file)
  pp lib["get_emoticon"][emoticon] == nil 
end






# def get_english_meaning(file, emoticon)
#   emojis = load_library(file)
#   if emojis["get_meaning"][emoticon] == nil
#     return "Sorry, that emoticon was not found"
#   else
#     emojis["get_meaning"][emoticon]
#   end
# end
