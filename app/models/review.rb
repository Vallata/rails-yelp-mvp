class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end


# Un avis doit appartenir à un restaurant.
# Un avis doit avoir un contenu.
# Un avis doit avoir une note.
# La note d’un avis doit être un nombre entre 0 et 5.
# La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
# Valide tous les tests du modèle avant de passer à la définition des routes. Tu peux utiliser cette commande :
