# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Article.destroy_all

10.times do
  article = Article.new(
    title: Faker::Hipster.sentence,
    content: Faker::Hipster.paragraph,
    subtitle: Faker::Hipster.sentence(word_count: 3, supplemental: true),
    paragraph: Faker::Hipster.paragraphs,
    second_subtitle: Faker::Hipster.sentence(word_count: 3, supplemental: true, random_words_to_add: 4),
    second_paragraph: Faker::Hipster.paragraph

  )
  if article.save!
    puts "Article '#{article.title}' créé avec succès."
  else
    puts "Erreur lors de la création de l'article : #{article.errors.full_messages.join(', ')}"
  end
end
