# require modules here
require "yaml"



def load_library(library)
  library = YAML.load_file('./lib/emoticons.yml')
  # code goes here
  new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
 library.each do |meaning, translation|
   english = translation[0]
   japanese = translation[1]
   new_hash["get_meaning"][japanese] = meaning
   new_hash["get_emoticon"][english] = japanese
 end
  return new_hash
end

def get_japanese_emoticon(file, emoticon)
  emojis = load_library(file)
  if emojis["get_emoticon"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    emojis["get_emoticon"][emoticon]
  end
end

def get_english_meaning(file, emoticon)
  emojis = load_library(file)
  if emojis["get_meaning"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  else
    emojis["get_meaning"][emoticon]
  end
end
