# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying everything'
Quote.destroy_all
Author.destroy_all
User.destroy_all

puts 'Creating main user'
trazip = User.create(username: 'trazip', email: 'p.penhard@gmail.com', password: 'password', password_confirmation: 'password')

puts 'Creating authors'
oss_117 = Author.create(fullname: 'Hubert Bonnisseur de la Bath (alias OSS 117)', user_id: trazip.id)
van_zimmel = Author.create(fullname: 'Van Zimmel', user_id: trazip.id)
heinrich_van_zimmel = Author.create(fullname: 'Heinrich Van Zimmel', user_id: trazip.id)

puts 'Creating quotes'
Quote.create(content: 'Avec moi, les histoires d’amour ne s’écrivent pas dans le temps, ce sont des histoires courtes, compactes, passionnelles. Je ne peux pas vivre autrement Dolorès. D’aucuns ont des aventures… Je suis une aventure.', author_id: oss_117.id, user_id: trazip.id )
Quote.create(content: 'Je ne vois pas trop l’intérêt de ressembler à une femme.', author_id: oss_117.id, user_id: trazip.id )
Quote.create(content: 'Ça fait un peu Jacadi a dit : « Pas de charcuterie ! »', author_id: oss_117.id, user_id: trazip.id )
Quote.create(content: 'Pourchasser un nazi avec des juifs ? Quelle drôle d’idée !', author_id: oss_117.id, user_id: trazip.id )
Quote.create(content: 'Pour rencontrer M. Li, il vaut mieux avoir une bonne couverture, sinon, je serai dans de beaux draps.', author_id: oss_117.id, user_id: trazip.id )
