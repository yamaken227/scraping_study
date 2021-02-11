require 'open-uri'
require 'nokogiri'

url = ''#切り出すURLを指定

charset = nil
html = open(url) do |f|
  charset = f.charset #文字種別を取得
  f.read 
end

page = Nokogiri::HTML.parse(html, nil, charset)

shuzo_meigen = page.search('p')

p shuzo_meigen.text