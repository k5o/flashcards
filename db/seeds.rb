User.create :email => "a@a.com",
            :password => "1234"
User.create :email => "a@b.com",
            :password => "1234"

Deck.create :name => "Ruby Trivia",
            :num_cards => 38

Deck.create :name => "Movie Trivia",
            :num_cards => 23

file = Hash[*IO.read('public/flashcardssource.txt').split(/[\n*]/)] 
file.each do |pair|
  Deck.find(1).cards << Card.create(:definition => pair[0], :answer => pair[1], :deck_id => 1)
end

file = Hash[*IO.read('public/movie_trivia.txt').split(/[\n*]/)] 
file.each do |pair|
  Deck.find(2).cards << Card.create(:definition => pair[0], :answer => pair[1], :deck_id => 2)
end
