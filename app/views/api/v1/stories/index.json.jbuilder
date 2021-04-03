json.stories do
  json.array! @stories do |story|
    json.extract! story, :id, :title, :description
  end
end

# "stories": [{"id": 1, "title":"..", "description": "..."}, ...]


