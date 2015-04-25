require 'bundler'

Bundler.require

require_relative "models/moods.rb"
class MyApp < Sinatra::Base

  get '/' do
  	@moods_arr = Moods.new.moods
  	puts @moods_arr.class
  	erb :index

  end

  post '/picksong' do
    Song.new("Cry Me a River", "Justin Timerlake", "Heartbreak - Depressing", " ")
    Song.new("It Will Rain","Bruno Mars", "Heartbreak - Depressing", " ")
    Song.new("Somebody That I Used to Know", "Gotye feat. Kimbra", "Heartbreak - Depressing," " ") 
    Song.new("When You're Gone", "Avril Lavigne", "Heartbreak - Depressing", " ")
    Song.new("Here Without You", "3 Doors Down", "Depressing - Heartbreak", " ")
    Song.new("How Do I Live", "LeAnn Rimes", "Heartbreak - Depressing", " ")
    Song.new("All too Well", "Taylor Swift", "Heartbreak - Depressing", " ")
    Song.new("Already Gone", "Kelly Clarkson", "Heartbreak - Depressing", " ")
    Song.new("Amnesia", "5 Seconds of Summer", "Heartbreak - Depressing", " ")
    Song.new("Back to December", "Taylor Swift", "Heartbreak - Depressing", " ")
    Song.new("Because of You", "Kelly Clarkson", "Heartbreak - Depressing", " ")
    Song.new("Behind These Hazel Eyes", "Kelly Clarkson", "Heartbreak - Depressing", " ")
    Song.new("Ain't No Sunshine", "Bill Withers", "Heartbreak - Depressing", " ")
    Song.new("Stay With Me", "Sam Smith", "Heartbreak - Depressing", " ")
    Song.new("The Heart Wants What it Wants", "Selena Gomez", "Heartbreak - Depressing", " ")
    Song.new("Make You Feel My Love", "Adele", "Heartbreak - Depressing", " ")
    Song.new("Say Something", "A Great Big World Feat. Christina Aguilera", "Heartbreak - Depressing", " ")  
  
  end

  post '/picksong' do
    Song.new("Heartbreak Song", "Kelly Clarkson", "Heartbreak - Feel Good", " ")
    Song.new("Irreplaceable", "Beyonce", "Heartbreak - Feel Good", " ")
    Song.new("F* You", "Cee-Lo Green", "Heartbreak - Feel Good", " ")
    Song.new("So What", "Pink", "Heartbreak - Feel Good", " ")
    Song.new("Single Ladies", "Beyonce", "Heartbreak - Feel Good", " ")
    Song.new("We are never getting back together", "Taylor Swift", "Heartbreak - Feel Good", " ")
    Song.new("Stronger (What Doesn’t Kill You)", "Kelly Clarkson", "Heartbreak - Feel Good", " ")
    Song.new("Best Thing I never Had," "Beyonce", "Heartbreak - Feel Good", " ")
    Song.new("Problem", "Ariana Grande", "Heartbreak - Feel Good", " ")
    Song.new("My Life Would Suck Without You", "Kelly Clarkson", "Heartbreak - Feel Good", " ")
    Song.new("The one that got away", "Kelly Clarkson," "Heartbreak - Feel Good", " ")
    Song.new("Over You", "Daughtry", "Heartbreak - Feel Good", " ")
    Song.new("Clarity", "Zedd/feat.Foxes", "Heartbreak - Feel Good", " ")
    Song.new("Since You’ve Been Gone", "Kelly Clarkson", "Heartbreak - Feel Good", " ")
    Song.new("Where are you now", "Honor Society", "Heartbreak - Feel Good", " ")

  end

  post '/picksong' do
    Song.new("Happy", "Pharrell Williams", "Happy/Feel Good", " ")
    Song.new("Best Day of My Life", "American Authors", "Happy/Feel Good", " ")
    Song.new("The Man", "Aloe Blacc", "Happy/Feel Good", " ")
    Song.new("I Got a Feeling", "Black Eyed Peas", "Happy/Feel Good", " ")
    Song.new("Walking on Sunshine", "Katrina and the Waves", "Happy/Feel Good", " ")
    Song.new("Born This Way", "Lady Gaga", "Happy/Feel Good", " ")
    Song.new("1985", "Bowling for Soup", "Happy/Feel Good", " ")
    Song.new("Hotel California", "Eagles", "Happy/Feel Good", " ")
    Song.new("All About That Bass", "Meghan Trainor", "Happy/Feel Good", " ")
    Song.new("Pictures of you", "The Last Goodnight", "Happy/Feel Good", " ")
    Song.new("Beautiful Day", "U2", "Happy/Feel Good", " ")
  
  end

  post '/picksong' do
    Song.new("Kyrptonite", "3 Doors Down", "Frustrated/Agitated", " ")
    Song.new("Rude", "MAGIC!", "Frustrated/Agitated", " ")
    Song.new("Best Day of My Life", "Authors", "Frustrated/Agitated", " ")
    Song.new("The Man", "Aloe Blacc", "Frustrated/Agitated", " ")
    Song.new("Walking On Sunshine", "Katrina and the Waves", "Frustrated/Agitated", " ")
    Song.new("Born This Way", "Lagy Gaga", "Frustrated/Agitated"," ") 
  
  end

  post '/picksong' do
    Song.new("Angels", "Robie Williams", "Abandoned", " ")
    Song.new("Apologize", "OneRepublic", "Abandoned", " ")
    Song.new("Time After Time", "Cyndi Lauper", "Abandoned", " ")
    Song.new("With or Without You", "U2", "Abandoned", " ")
    Song.new("Away From the Sun", "3 Doors Down", "Abandoned", " ")
    Song.new("Need You Now", "Lady Antibellum", "Abandoned", " ")
    Song.new("Winter Winds", "Mumford and Sons", "Abandoned", " ")
    Song.new("Jar of Hearts", "Christina Perry", "Abandoned", " ")
    Song.new("I'm not the Only One", "Sam Smith", "Abandoned", " ")
    Song.new("Hotel Ceiling", "Rixton", "Abandoned", " ")
    Song.new("That Should be Me", "Justin Bieber", "Abandoned", " ")
    Song.new("Stairway to Heaven", "Led Zeppelin", "Abandoned", " ") 
  
  end

  post '/picksong' do
    Song.new("I Got a Feeling", "Black Eyed Peas", "Hyper/Pumped", " ")
    Song.new("LMFAO", "Party Rock Anthem", "Hyper/Pumped", " ")
    Song.new("Ain't It Fun", "Paramore", "Hyper/Pumped", " ")
    Song.new("Blurred Lines", "Robin Thicke", "Hyper/Pumped", " ")
    Song.new("Turn Down for What", "DJ Snake/Lil Jon", "Hyper/Pumped", " ")
    Song.new("The Real Slim Shady", "Eminem", "Hyper/Pumped", " ")
    Song.new("Time Of Our Lives", "Neyo/Pitbull", "Hyper/Pumped", " ")
    Song.new("I Wanna Dance With Somebody", "Whitney Houston", "Hyper/Pumped", " ")
    Song.new("Talk Dirty To Me", "Jason Derulo", "Hyper/Pumped", " ")
    Song.new("California Gurls", "Katy Perry", "Hyper/Pumped" " ")
    Song.new("Wake Me Up", "Avicii", "Hyper/Pumped", " ")
  
  end

  post '/picksong' do
    Song.new("Ain't No Mountain High Enough", "Marvin Gaye", "Inspired/Motivated", " ")
    Song.new("On Top of the Word", "Imagine Dragons", "Inspired/Motivated", " ")
    Song.new("Don't Stop Believing", "Journey", "Inspired/Motivated", " ")
    Song.new("Animals", "Maroon 5", "Inspired/Motivated", " ")
    Song.new("Blank Space", "Taylor Swift", "Inspired/Motivated", " ")
    Song.new("Born This Way", "Lady Gaga", "Inspired/Motivated", " ")
    Song.new("Carry On", "Olivia Holt", "Inspired/Motivated", " ")
    Song.new("Chandelier", "Sia", "Inspired/Motivated", " ")
    Song.new("People Like Us", "Kelly Clarkson", "Inspired/Motivated", " ")
    Song.new("Radioactive", "Imagine Dragons", "Inspired/Motivated", " ")
    Song.new("It's Time", "Imagine Dragons", "Inspired/Motivated", " ")
    Song.new("Roar", "Katy Perry", "Inspired/Motivated", " ")
    Song.new("Some Nights", "Fun", "Inspired/Motivated", " ")
    Song.new("Someday", "Rob Thomas", "Inspired/Motivated", " ")
    Song.new("Super Bass", "Nicki Minaj", "Inspired/Motivated", " ")
    Song.new("Animal", "Maroon 5", "Inspired/Motivated", " ")
    Song.new("Team", "Lorde", "Inspired/Motivated", " ")
    Song.new("Titanium", "Sia", "Inspired/Motivated", " ")
    Song.new("Till the World Ends", "Britney Spears", "Inspired/Motivated", " ")
  
  end

  post "/picksong" do
    Song.new("All About that Bass", "Meghan Trainor", "Loving yourself", " ")
    Song.new("Try", "Colbie Calliat", "Loving yourself", " ")
    Song.new("Who you are", "Jessie J", "Loving yourself", " ")
    Song.new("Beautiful", "Christina Agulara", "Loving yourself", " ")
    Song.new("The Way I Am", "Ingrid Michaelson", "Loving yourself", "")
    Song.new("Drops of Jupiter", "Train", "Loving yourself", " ")
    Song.new("Gold", "Britt Nicole", "Loving yourself", " ")
    Song.new("Born This Way", "Lady Gaga", "Loving yourself", " ")
  
  end

  post "/picksong" do
    Song.new("Soar", "Christina Aguilera", "Perseverance", " ")
    Song.new("Warrior", "Demi Lovato", "Perseverance", " ")
    Song.new("Stronger (What Doesn't Kill You", "Kelly Clarkson", "Perseverance", " ")
    Song.new("Unstoppable", "Rascall Flatts", "Perseverance", " ")
    Song.new("Fighter", "Christina Agulara", "Perseverance", " ")
    Song.new("Hall Of Fame", "The Script", "Perseverance", " ")
    Song.new("Roar", "Katy Perry", "Perseverance", " ")
    Song.new("Jesus Take the Wheel", "Carrie Underwood", "Perseverance", " ")
    Song.new("Firework", "Katy Perry", "Perseverance", " ")
    Song.new("Brave", "Sara Barrelis", "Perseverance", " ")
  
  end

  post "/picksong" do
    Song.new("House of the Rising Sun", "The Animals", "Agressive", " ")
    Song.new("Animal", "Neon Trees", "Agressive", " ")
    Song.new("Dangerous", "Big Data(feat. Joywave)", "Agressive", " ")
    Song.new("Holiday (The Original Broadway Cast Recording feat. John Gallagher Jr., Stark Sands, Theo Stockman & Company)", "Green Day", "Agreesive", " ")
  
  end

  post "/picksong" do
    Song.new("Unwritten", "Natasha Bendenfield", "Anxious", " ")
    Song.new("Make It Happen", "Mariah Carey", "Anxious", " ")
    Song.new("It's My Life", "Bon Jovi", "Anxious", " ")
    Song.new("Hit Me With Your Best Shot", "Pat Benatar", "Anxious", " ")
    Song.new("The Climb", "Miley Cyrus", "Anxious", " ")
    Song.new("Fighter", "Christina Aguilera", "Anxious", " ")
  
  end

  post "/picksong" do
    Song.new("The Funeral", "Band of Horses", "Defeated/Hopeless", " ")
    Song.new("How to Save a Life", "The Fray", "Defeated/Hopeless", " ")
    Song.new("Madness", "Muse", "Defeated/Hopeless", " ")
    Song.new("See You Again", "Wiz Khalifa", "Defeated/Hopeless", " ")
 
  end

  post '/picksong' do
    Song.new("Unfaithful", "Rihanna", "Ashamed/Guilty", " ")
    Song.new("I'm a loser", "The Beatles", "Ashamed/Guilty", " ")
    Song.new("Nobody's Perfect", "Madonna", " ")
    Song.new("If Mama Knew", "Leo Kottke", "Ashamed/Guilty", " ")
    Song.new("Nodoy's Fault But Mine", "Led Zeppelin", "Ashamed/Guilty", " ")
  
  end

  post '/picksong' do
    Song.new("Sorry", "Buckcherry", "Sorry/Apologetic", " ")
    Song.new("All the Things She Said", "Tatu", "Sorry/Apologetic", " ")
    Song.new("Always On Your Side", "Sheryl Crow", "Sorry/Apologetic", " ")
    Song.new("Better Than Me", "Hinder", "Sorry/Apologetic", " ")
    Song.new("Breathe", "Melissa Etheridge", "Sorry/Apologetic", " ")
    Song.new("Even Angels Fall", "Jessica Riddle", "Sorry/Apologetic", " ")
    Song.new("Here Without You", "3 Doors Down", "Sorry/Apologetic", " ")
    Song.new("Fear", "Sarah McLachlan", "Sorry/Apologetic", " ")
    Song.new("I'm Sorry", "Flyleaf", "Sorry/Apologetic", " ")
    Song.new("I Am", "Nine Days", "Sorry/Apologetic", " ")
    Song.new("I'll Be There For You", "The Rembrandts", "Sorry/Apologetic", " ")
    Song.new("It's Not Over", "Secondhand Serenade", "Sorry/Apologetic", " ")
    Song.new("Realize", "Colbie Caillat", "Sorry/Apologetic", " ")
    Song.new("Umbrella", "Rihanna and Marie Digby", "Sorry/Apologetic", " ")
  
  end

  post '/picksong' do
    Song.new("I Hate Everything About You", "Three Days Grace", "Angry", " ")
    Song.new("Platypus", "Green Day", "Angry", " ")
    Song.new("The Way I Am", "Eminem", "Angry", " ")
    Song.new("Breakin’ dishes", "Rihanna", "Angry", " ")
    Song.new("Gives You Hell", "The All-American Rejects", "Angry", " ")
    Song.new("Love Sosa", "Chief Keef", "Angry", " ") 
  
  end

  post '/picksong' do
    Song.new("Bohemian Rhapsody", "Queen", "Conflicted", " ")
    Song.new("Habits (Stay High) [Hippie Sabotage Remix]", "To Love", "Conflicted", " ")
    Song.new("Fame", "David Bowie", "Conflicted", " ")
    Song.new("Holy Grail", "Jay Z", "Conflicted", " ")
  
  end 

  post '/picksong' do
    Song.new("All I Want", "Kodaline", "Sentimental", " ")
    Song.new("All of Me", "John Legend", "Sentimental", " ")
    Song.new("All This Time", "OneRepublic", "Sentimental," " ")
    Song.new("Arms", "Christina Perri", "Sentimental", " ")
    Song.new("Good Riddance (Time Of Your Life)", "Green Day", "Sentimental", " ")
    Song.new("Thinking Out Loud", "Ed Sheeran", "Sentimental", " ")
    Song.new("A Thousand Years", "Christina Perri", "Sentimental", " ")
    
  
  end


end