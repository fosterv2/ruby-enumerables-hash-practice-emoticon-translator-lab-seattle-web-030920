require 'yaml'

def load_library
  emoticons = YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon(eng_emoticon)
  emoticons = load_library
  emoticons.reduce({}) do |memo, (key, value)|
    if value[0] == eng_emoticon
      return value[1]
    end
    memo
  end
end

def get_english_meaning(jap_emoticon)
  emoticons = load_library
  emoticons.reduce({}) do |memo, (key, value)|
    if value[1] == jap_emoticon
      return key
    end
    memo
  end
end
