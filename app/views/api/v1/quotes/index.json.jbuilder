json.array! @quotes do |quote|
  json.id quote.id
  json.content quote.content
  json.author quote.author.fullname
  json.creator quote.user.username
end
