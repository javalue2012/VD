json.array!(@news) do |news|
  json.extract! news, :id, :title, :t1, :t2, :t3, :t4, :t5, :t6
  json.url news_url(news, format: :json)
end
