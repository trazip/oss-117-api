json.array! @quotes do |quote|
  json.content quote.content
  json.author quote.author.fullname
  json.film quote.film.title
  json.creator quote.user.username
end
