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
    japan = value[0]
    pp japan

  end
end

# def get_japanese_emoticon(file, emoticon)
#   emojis = load_library(file)
#   if emojis["get_emoticon"][emoticon] == nil
#     return "Sorry, that emoticon was not found"
#   else
#     emojis["get_emoticon"][emoticon]
#   end
# end
#
# def get_english_meaning(file, emoticon)
#   emojis = load_library(file)
#   if emojis["get_meaning"][emoticon] == nil
#     return "Sorry, that emoticon was not found"
#   else
#     emojis["get_meaning"][emoticon]
#   end
# end
