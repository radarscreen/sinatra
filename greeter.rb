# greeter.rb

class Greeter
  def greet
  		"Hey, I'm Frank and this is my wisdom:"
  end

  def quote tag=nil  
			
			quotes = {

				:love => [
									"You may be a puzzle, but I like the way the parts fit.", 
									"....A simple I love you means more than money....", 
									"For nobody else, gave me thrill-with all your faults, I love you still.", 
									"It had to be you, wonderful you, it had to be you."
									],


				:life => [
									"The best revenge is massive success.", 
									"The big lesson in life, baby, is never be scared of anyone or anything.", 
									"I'm gonna live till I die.", 
									"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels.", 
									"I would like to be remembered as a man who had a wonderful time living life, a man who had good friends, fine family - and I don't think I could ask for anything more than that, actually.", 
									"The best is yet to come and won't that be fine.", 
									"Don’t hide your scars. They make you who you are"
									],
				
				
				:alcohol => [
									"Alcohol may be man's worst enemy, but the bible says love your enemy."
									],

				}
				
				if tag && quotes[tag.to_sym]
						quotes[tag.to_sym].sample do |quote|
						"<body><ul><li><h3>'#{quote}'</h3></li></ul></body>"
						end	
				 else 
				 	"enter a proper path, ya moron :)"
				 end


  end
end