json.array!(@pages) do |page|
  json.extract! page, :id, :creative_id, :line_id
  json.url page_url(page, format: :json)
end
