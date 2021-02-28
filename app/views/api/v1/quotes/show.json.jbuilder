json.set! :quote do
  json.set! :id, @quote.id
  json.set! :content, @quote.content
  json.set! :author, @quote.author.fullname
  json.set! :film, @quote.film.title
end
