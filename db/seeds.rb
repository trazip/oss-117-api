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
von_zimmel = Author.create(fullname: 'Von Zimmel', user_id: trazip.id)
heinrich_von_zimmel = Author.create(fullname: 'Heinrich Von Zimmel', user_id: trazip.id)
moeller = Author.create(fullname: 'Gerhard Moeller', user_id: trazip.id)
carlotta = Author.create(fullname: 'Carlotta', user_id: trazip.id)
dolores = Author.create(fullname: 'Dolorès', user_id: trazip.id)
bill = Author.create(fullname: 'Bill Tremendous', user_id: trazip.id)
larmina = Author.create(fullname: 'Larmina El Akmar Betouche', user_id: trazip.id)
pelletier = Author.create(fullname: 'Raymond Pelletier', user_id: trazip.id)

puts 'Creating films'
oss_117_1 = Film.create(title: "OSS 117 : Le Caire, nid d'espions")
oss_117_2 = Film.create(title: "OSS 117 : Rio ne répond plus")

puts 'Creating quotes'
Quote.create(content: 'Avec moi, les histoires d’amour ne s’écrivent pas dans le temps, ce sont des histoires courtes, compactes, passionnelles. Je ne peux pas vivre autrement Dolorès. D’aucuns ont des aventures… Je suis une aventure.', author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: 'Je ne vois pas trop l’intérêt de ressembler à une femme.', author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: 'Ça fait un peu Jacadi a dit : « Pas de charcuterie ! »', author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: 'Pourchasser un nazi avec des juifs ? Quelle drôle d’idée !', author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: 'Pour rencontrer M. Li, il vaut mieux avoir une bonne couverture, sinon, je serai dans de beaux draps.', author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Ah ! J'ai fait de l'humour juif, je crois que c'est quand ce n'est pas rigolo et que ça ne parle pas de saucisses.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Ah ah bravo Bill, en plein dans l'dos !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Chou blanc donc...", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Vous avez bien une amicale des anciens nazis ? un club ? une association peut-être ?", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Voilà Dolorès, cadeau ... de Noël ! Non je dis Noël, c'est par rapport à mon prénom. Sinon il y ... il y a aussi les boules... Oh si, ça c'est rigolo ! Il faut absolument que j'appelle Armand !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Ma foi, comme un lundi, frais dans la matinée, soleil dans l'après midi, la recette des sports d'hiver réussis!", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Mais je vous en prie. D'ailleurs, ne dit-on pas qu'une femme qui éclabousse un homme, c'est un peu comme la rosée d'une matinée de printemps. C'est la promesse d'une belle journée et la perspective d'une soirée enflammée.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Je n'y suis pour rien. C'est l'inexpugnable arrogance de votre beauté qui m'asperge.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Bon, écoutez mon p'tit. Heu. J'ai fait mon boulot, moi. J'ai redressé l'avion, j'vous ai sauvé la vie. Là, je viens de tuer un croco. Alors si vous vous voulez qu'on travaille d'égal à égal, faudrait vous y mettre : vous pourriez au moins vous occuper du manger.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Une dictature, comme vous y allez ! Vous êtes bien sympathique, Dolorès, mais épargnez-moi vos analyses politiques… (Temps.) Savez-vous seulement ce que c'est qu'une dictature ? (Temps.) Une dictature c'est quand les gens sont communistes, déjà. Qu'ils ont froid, avec des chapeaux gris et des chaussures à fermeture éclair. C'est ça, une dictature, Dolorès.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Pas le moins du monde, il aura fait une erreur sur la personne voilà tout... N'oublions pas que de son point de vue nous nous ressemblons tous !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Un nazi n'a-t-il pas des yeux ? Un nazi n'a-t-il pas des mains, des organes, des dimensions, des sens, de l’affection, de la passion ; nourri avec la même nourriture, blessé par les mêmes armes, exposé aux mêmes maladies, soigné de la même façon, dans la chaleur et le froid du même hiver et du même été que les Chrétiens ? Si vous nous piquez, ne saignons-nous pas ? Si vous nous chatouillez, ne rions-nous pas ? Si vous nous empoisonnez, ne mourrons-nous pas ?", author_id: von_zimmel.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Oh pardon, je suis affreusement maladroite, apparemment je vous ai... éclaboussé.", author_id: carlotta.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Mais, me juger de quoi ? Je vais ni faire à manger, ni faire une petite table. Parce qu'on juge une femme sur sa cuisine, c'est ça ?", author_id: dolores.id, user_id: trazip.id, film_id: oss_117_2.id )
Quote.create(content: "Shut up ! Kiss my ass !", author_id: bill.id, user_id: trazip.id, film_id: oss_117_2.id )

Quote.create(content: "J'ai décidé d'appeler cela.... des enregistroscopes ! Le temps que les écrans chauffent...", author_id: moeller.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "La famille royale est peut-être dégénérée mais j'peux vous assurer que la princesse Al Tarouk vaut le détour. J'peux vous dire que quand elle s'affaire elle laisse son sang royal au vestiaire ! Mais elle gueule mon vieux ! On dirait une poissonnière de Ménilmontant !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "On est en 1955 les gars, faut se réveiller. Les ânes partout, les djellabas, l’écriture illisible, ça va hein ! S’agirait de grandir ! S’agirait de grandir...Moi j’suis dans le poulet, eh ben j’vois rien que dans le poulet c’est un bordel !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Vous voyez l'automobile derrière moi ? Ça fait un petit moment que je l'observe.. elle est absolument impeccable.. C'est quand même bien mieux une voiture propre, non ? À l'occasion, je vous mettrai un petit coup de polish.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "C'est notre Raïs à nous : c'est monsieur René Coty. Un grand homme. Il marquera l'Histoire. Il aime les Cochinchinois, les Malgaches, les Marocains, les Sénégalais… c'est donc ton ami. Ce sera ton porte-bonheur.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "En tout cas, on peut dire que le Soviet éponge !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Tu n'es pas seulement un lâche, tu es un traitre... comme ta petite taille le laissait deviner !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Ne pas fumer me tue.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "23-0 ! C'est la piquette Jack !!! Tu sais pas jouer, Jack ! T'es mauvais hahahahaha !!!", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime les panoramas.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime me battre.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime me beurrer la biscotte.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Comment est votre blanquette ?", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "On me dit le plus grand bien des harengs pommes à l’huile ?", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime le bruit blanc de l'eau.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Des millions ?! Haha, des millions ! Vous êtes charmante mais vous voyez déjà ce que ça fait un million Larmina ?", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "C’est là que l’on voit la grandeur de votre civilisation. Construire pareil ouvrage il y a 4000 ans il fallait être visionnaire !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime quand on m'enduit d'huile.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J'aime quand une jolie femme brune m'apporte mon petit déjeuner au lit.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Jolie voiture ! Dommage qu’elle soit si sale !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Le IIIe reich et l’ideologie nazie m’ont toujours rendu dubitatif.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Comment s’appelle cette guitare en forme de gros tourteau fromager ?", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Bien, mais dépêchons-nous, je n’ai que quelques heures.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "OSS 117, pour vous servir !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "J’ai été réveillé par un homme qui hurlait à la mort du haut de cette tour ! J’ai dû le faire taire.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Ah ! C’était donc ça tout ce tintouin.", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Et non pas le gratin de pommes de terre ! (Larmina le regarde) Nan, parce que ça ressemble à carotte, Cairote. Le... Le légume, puisque vous avez dit gratin... Gratin de pommes de terre... C’est, c’est une astuce...", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Faudrait vraiment arrêter avec les noms d’animaux... A force c’est vexant !", author_id: oss_117.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Bla bla bla bla bla... C'est marrant, c'est toujours les nazis qui ont toujours le mauvais rôle... Nous sommes en 1955, Herr Bramard ! On peut avoir une deuxième chance ?! Merci...", author_id: moeller.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Ça suffit Loktar, tu te tais ou je te tais !", author_id: moeller.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Vous voulez terminer comme ces poulets ? Vous voulez mourir Bramard ? Décapité, vidé, plumé, c’est ça qu’vous voulez ?", author_id: pelletier.id, user_id: trazip.id, film_id: oss_117_1.id )
Quote.create(content: "Non, il jouait au jokari avec un ami, l’élastique s’est distendu, la balle est partie... il l’a suivie emporté par les flots...", author_id: larmina.id, user_id: trazip.id, film_id: oss_117_1.id )
