#require 'bundler'

#Bundler.require

require_relative "models/moods.rb"
require_relative "models/song.rb"
class MyApp < Sinatra::Base

  get '/' do
  	@moods_arr = Moods.new.moods
  	puts @moods_arr.class
  	erb :index

  end

  post '/picksong' do

  	@mood = params["mood"]


    @heartbreak_depressing = [
    Song.new("Cry Me a River", "Justin Timerlake", "Heartbreak - Depressing", "https://www.youtube.com/embed/DksSPZTZES0"),
    Song.new("It Will Rain","Bruno Mars", "Heartbreak - Depressing", "https://www.youtube.com/embed/W-w3WfgpcGg"),
    Song.new("Somebody That I Used to Know", "Gotye feat. Kimbra", "Heartbreak - Depressing", "https://www.youtube.com/embed/8UVNT4wvIGY"),
    Song.new("When You're Gone", "Avril Lavigne", "Heartbreak - Depressing", "https://www.youtube.com/embed/0G3_kG5FFfQ"),
    Song.new("Here Without You", "3 Doors Down", "Depressing - Heartbreak", "https://www.youtube.com/embed/kPBzTxZQG5Q"),
    Song.new("How Do I Live", "LeAnn Rimes", "Heartbreak - Depressing", "https://www.youtube.com/embed/MUFasKZcH_c"),
    Song.new("All too Well", "Taylor Swift", "Heartbreak - Depressing", "https://www.youtube.com/embed/XSEcrcxUs7M"),
    Song.new("Already Gone", "Kelly Clarkson", "Heartbreak - Depressing", "https://www.youtube.com/embed/f0T3WAbU6tg"),
    Song.new("Amnesia", "5 Seconds of Summer", "Heartbreak - Depressing", "https://www.youtube.com/embed/DCCJCILiX3o"),
    Song.new("Back to December", "Taylor Swift", "Heartbreak - Depressing", "https://www.youtube.com/embed/QUwxKWT6m7U"),
    Song.new("Because of You", "Kelly Clarkson", "Heartbreak - Depressing", "https://www.youtube.com/embed/Ra-Om7UMSJc"),
    Song.new("Behind These Hazel Eyes", "Kelly Clarkson", "Heartbreak - Depressing", "https://www.youtube.com/embed/yipoOY56MbM"),
    Song.new("Ain't No Sunshine", "Bill Withers", "Heartbreak - Depressing", "https://www.youtube.com/embed/tIdIqbv7SPo"),
    Song.new("Stay With Me", "Sam Smith", "Heartbreak - Depressing", "https://www.youtube.com/embed/pB-5XG-DbAA"),
    Song.new("The Heart Wants What it Wants", "Selena Gomez", "Heartbreak - Depressing", "https://www.youtube.com/embed/ij_0p_6qTss"),
    Song.new("Make You Feel My Love", "Adele", "Heartbreak - Depressing", "https://www.youtube.com/embed/4k-W6cZ2CiY"),
    Song.new("Say Something", "A Great Big World Feat. Christina Aguilera", "Heartbreak - Depressing", "https://www.youtube.com/embed/-2U0Ivkn2Ds")]

    @heartbreak_feel_good = [
    Song.new("Heartbreak Song", "Kelly Clarkson", "Heartbreak - Feel Good", "https://www.youtube.com/embed/d4_6N-k5VS4"),
    Song.new("Irreplaceable", "Beyonce", "Heartbreak - Feel Good", "https://www.youtube.com/embed/2EwViQxSJJQ"),
    Song.new("F* You", "Cee-Lo Green", "Heartbreak - Feel Good", "https://www.youtube.com/embed/K71XXSin4lc"),
    Song.new("So What", "Pink", "Heartbreak - Feel Good", "https://www.youtube.com/embed/FJfFZqTlWrQ"),
    Song.new("Single Ladies", "Beyonce", "Heartbreak - Feel Good", "https://www.youtube.com/embed/4m1EFMoRFvY"),
    Song.new("We are never getting back together", "Taylor Swift", "Heartbreak - Feel Good", "https://www.youtube.com/embed/WA4iX5D9Z64"),
    Song.new("Stronger (What Doesn’t Kill You)", "Kelly Clarkson", "Heartbreak - Feel Good", "https://www.youtube.com/embed/Xn676-fLq7I"),
    Song.new("Best Thing I never Had", "Beyonce", "Heartbreak - Feel Good", "https://www.youtube.com/embed/FHp2KgyQUFk"),
    Song.new("Problem", "Ariana Grande", "Heartbreak - Feel Good", "https://www.youtube.com/embed/iS1g8G_njx8"),
    Song.new("My Life Would Suck Without You", "Kelly Clarkson", "Heartbreak - Feel Good", "https://www.youtube.com/embed/cRM70Jw7F4M"),
    Song.new("The one that got away", "Katy Perry", "Heartbreak - Feel Good", "https://www.youtube.com/embed/Ahha3Cqe_fk"),
    Song.new("Over You", "Daughtry", "Heartbreak - Feel Good", "https://www.youtube.com/embed/m02-RHN_hQE"),
    Song.new("Clarity", "Zedd/feat.Foxes", "Heartbreak - Feel Good", "https://www.youtube.com/embed/IxxstCcJlsc"),
    Song.new("Since You’ve Been Gone", "Kelly Clarkson", "Heartbreak - Feel Good", "https://www.youtube.com/embed/R7UrFYvl5TE"),
    Song.new("Where are you now", "Honor Society", "Heartbreak - Feel Good", "https://www.youtube.com/embed/R7UrFYvl5TEciety")]

    @happy_feel_good = [
    Song.new("Happy", "Pharrell Williams", "Happy/Feel Good", "https://www.youtube.com/embed/i0A3-wc0rpw"),
    Song.new("Best Day of My Life", "American Authors", "Happy/Feel Good", "https://www.youtube.com/embed/Y66j_BUCBMY"),
    Song.new("The Man", "Aloe Blacc", "Happy/Feel Good", "https://www.youtube.com/embed/fm660vIn8Tg"),
    Song.new("I Got a Feeling", "Black Eyed Peas", "Happy/Feel Good", "https://www.youtube.com/embed/SPjrXbSSGOQ"),
    Song.new("Walking on Sunshine", "Katrina and the Waves", "Happy/Feel Good", "https://www.youtube.com/embed/5CeRWTdYFY8"),
    Song.new("Born This Way", "Lady Gaga", "Happy/Feel Good", "https://www.youtube.com/embed/wV1FrqwZyKw"),
    Song.new("Hotel California", "Eagles", "Happy/Feel Good", "https://www.youtube.com/embed/5a1rZrnUIRg"),
    Song.new("All About That Bass", "Meghan Trainor", "Happy/Feel Good", "https://www.youtube.com/embed/7PCkvCPvDXk"),
    Song.new("Pictures of you", "The Last Goodnight", "Happy/Feel Good", "https://www.youtube.com/embed/mgX7zmsrzBE"),
    Song.new("Beautiful Day", "U2", "Happy/Feel Good", "https://www.youtube.com/embed/LXrJdOD5syo") ]

    @frustrated = [ Song.new("Kyrptonite", "3 Doors Down", "Frustrated/Agitated", "https://www.youtube.com/embed/xPU8OAjjS4k"),
    Song.new("Rude", "MAGIC!", "Frustrated/Agitated", "https://www.youtube.com/embed/PIh2xe4jnpk"),
    Song.new("Best Day of My Life", "Authors", "Frustrated/Agitated", "https://www.youtube.com/embed/Y66j_BUCBMY"),
    Song.new("The Man", "Aloe Blacc", "Frustrated/Agitated", "https://www.youtube.com/embed/HGy9i8vvCxk"),
    Song.new("Walking On Sunshine", "Katrina and the Waves", "Frustrated/Agitated", "https://www.youtube.com/embed/iPUmE-tne5U"),
    Song.new("Born This Way", "Lagy Gaga", "Frustrated/Agitated","https://www.youtube.com/embed/wV1FrqwZyKw") ]

    @abandoned = [ Song.new("Angels", "Robbie Williams", "Abandoned", "https://www.youtube.com/embed/7LN-mg_5GGM"),
    Song.new("Apologize", "OneRepublic", "Abandoned", "https://www.youtube.com/embed/ZSM3w1v-A_Y"),
    Song.new("Time After Time", "Cyndi Lauper", "Abandoned", "https://www.youtube.com/embed/VdQY7BusJNU"),
    Song.new("With or Without You", "U2", "Abandoned", "https://www.youtube.com/embed/XmSdTa9kaiQ"),
    Song.new("Away From the Sun", "3 Doors Down", "Abandoned", "https://www.youtube.com/embed/DDK5qGlLT8s"),
    Song.new("Need You Now", "Lady Antibellum", "Abandoned", "https://www.youtube.com/embed/eM213aMKTHg"),
    Song.new("Winter Winds", "Mumford and Sons", "Abandoned", "https://www.youtube.com/embed/_KCg_QEHtkY"),
    Song.new("Jar of Hearts", "Christina Perry", "Abandoned", "https://www.youtube.com/embed/8v_4O44sfjM"),
    Song.new("I'm not the Only One", "Sam Smith", "Abandoned", "https://www.youtube.com/embed/nCkpzqqog4k"),
    Song.new("Hotel Ceiling", "Rixton", "Abandoned", "https://www.youtube.com/embed/hLS2ZTMayyI"),
    Song.new("That Should be Me", "Justin Bieber", "Abandoned", "https://www.youtube.com/embed/p5Jw-T4dVss") ]

    @hyper = [ Song.new("I Got a Feeling", "Black Eyed Peas", "Hyper/Pumped", "https://www.youtube.com/embed/uSD4vsh1zDA"),
    Song.new("LMFAO", "Party Rock Anthem", "Hyper/Pumped", "https://www.youtube.com/embed/KQ6zr6kCPj8"),
    Song.new("Ain't It Fun", "Paramore", "Hyper/Pumped", "https://www.youtube.com/embed/EFEmTsfFL5A"),
    Song.new("Turn Down for What", "DJ Snake/Lil Jon", "Hyper/Pumped", "https://www.youtube.com/embed/HMUDVMiITOU"),
    Song.new("The Real Slim Shady", "Eminem", "Hyper/Pumped", "https://www.youtube.com/embed/eJO5HU_7_1w"),
    Song.new("Time Of Our Lives", "Neyo/Pitbull", "Hyper/Pumped", "https://www.youtube.com/embed/bTXJQ5ql5Fw"),
    Song.new("I Wanna Dance With Somebody", "Whitney Houston", "Hyper/Pumped", "https://www.youtube.com/embed/eH3giaIzONA"),
    Song.new("Talk Dirty", "Jason Derulo", "Hyper/Pumped", "https://www.youtube.com/embed/RbtPXFlZlHg"),
    Song.new("California Gurls", "Katy Perry", "Hyper/Pumped", "https://www.youtube.com/embed/F57P9C4SAW4"),
    Song.new("Wake Me Up", "Avicii", "Hyper/Pumped", "https://www.youtube.com/embed/IcrbM1l_BoI") ]

    @inspired = [ Song.new("Ain't No Mountain High Enough", "Marvin Gaye", "Inspired/Motivated", "https://www.youtube.com/embed/20OiXaEL16o"),
    Song.new("On Top of the Word", "Imagine Dragons", "Inspired/Motivated", "https://www.youtube.com/embed/w5tWYmIOWGk"),
    Song.new("Don't Stop Believing", "Journey", "Inspired/Motivated", "https://www.youtube.com/embed/VcjzHMhBtf0"),
    Song.new("Animals", "Maroon 5", "Inspired/Motivated", "https://www.youtube.com/embed/7BJ3ZXpserc"),
    Song.new("Blank Space", "Taylor Swift", "Inspired/Motivated", "https://www.youtube.com/embed/e-ORhEE9VVg"),
    Song.new("Born This Way", "Lady Gaga", "Inspired/Motivated", "https://www.youtube.com/embed/wV1FrqwZyKw"),
    Song.new("Carry On", "Olivia Holt", "Inspired/Motivated", "https://www.youtube.com/embed/ZysBzkqYA68"),
    Song.new("Chandelier", "Sia", "Inspired/Motivated", "https://www.youtube.com/embed/2vjPBrBU-TM"),
    Song.new("People Like Us", "Kelly Clarkson", "Inspired/Motivated", "https://www.youtube.com/embed/yWbMz_aBlMU"),
    Song.new("Radioactive", "Imagine Dragons", "Inspired/Motivated", "https://www.youtube.com/embed/ktvTqknDobU"),
    Song.new("It's Time", "Imagine Dragons", "Inspired/Motivated", "https://www.youtube.com/embed/sENM2wA_FTg"),
    Song.new("Roar", "Katy Perry", "Inspired/Motivated", "https://www.youtube.com/embed/CevxZvSJLk8"),
    Song.new("Some Nights", "Fun", "Inspired/Motivated", "https://www.youtube.com/embed/qQkBeOisNM0"),
    Song.new("Someday", "Rob Thomas", "Inspired/Motivated", "https://www.youtube.com/embed/H6pODq8_FxE"),
    Song.new("Super Bass", "Nicki Minaj", "Inspired/Motivated", "https://www.youtube.com/embed/4JipHEz53sU"),
    Song.new("Animal", "Maroon 5", "Inspired/Motivated", "https://www.youtube.com/embed/gM7Hlg75Mlo"),
    Song.new("Team", "Lorde", "Inspired/Motivated", "https://www.youtube.com/embed/f2JuxM-snGc"),
    Song.new("Titanium", "Sia", "Inspired/Motivated", "https://www.youtube.com/embed/JRfuAukYTKg"),
    Song.new("Till the World Ends", "Britney Spears", "Inspired/Motivated", "https://www.youtube.com/embed/qzU9OrZlKb8") ]

    @loving_yourself = [ Song.new("All About that Bass", "Meghan Trainor", "Loving yourself", "https://www.youtube.com/embed/7PCkvCPvDXk"),
    Song.new("Try", "Colbie Calliat", "Loving yourself", "https://www.youtube.com/embed/GXoZLPSw8U8"),
    Song.new("Who you are", "Jessie J", "Loving yourself", "https://www.youtube.com/embed/j2WWrupMBAE"),
    Song.new("Beautiful", "Christina Agulara", "Loving yourself", "https://www.youtube.com/embed/eAfyFTzZDMM"),
    Song.new("The Way I Am", "Ingrid Michaelson", "Loving yourself", "https://www.youtube.com/embed/jJOzdLwvTHA"),
    Song.new("Drops of Jupiter", "Train", "Loving yourself", "https://www.youtube.com/embed/7Xf-Lesrkuc"),
    Song.new("Gold", "Britt Nicole", "Loving yourself", "https://www.youtube.com/embed/p9PjrtcHJPo"),
    Song.new("Born This Way", "Lady Gaga", "Loving yourself", "https://www.youtube.com/embed/wV1FrqwZyKw") ]

    @perserverance = [ Song.new("Soar", "Christina Aguilera", "Perseverance", "https://www.youtube.com/embed/OM4DpShc1wI"),
    Song.new("Warrior", "Demi Lovato", "Perseverance", "https://www.youtube.com/embed/UFeJkfB4xKo"),
    Song.new("Stronger (What Doesn't Kill You", "Kelly Clarkson", "Perseverance", "https://www.youtube.com/embed/Xn676-fLq7I"),
    Song.new("Unstoppable", "Rascall Flatts", "Perseverance", "https://www.youtube.com/embed/v1xF1L8ZS7s"),
    Song.new("Fighter", "Christina Agulara", "Perseverance", "https://www.youtube.com/embed/PstrAfoMKlc"),
    Song.new("Hall Of Fame", "The Script", "Perseverance", "https://www.youtube.com/embed/mk48xRzuNvA"),
    Song.new("Roar", "Katy Perry", "Perseverance", " "),
    Song.new("Jesus Take the Wheel", "Carrie Underwood", "Perseverance", "https://www.youtube.com/embed/mk48xRzuNvA"),
    Song.new("Firework", "Katy Perry", "Perseverance", "https://www.youtube.com/embed/CevxZvSJLk8"),
    Song.new("Brave", "Sara Barrelis", "Perseverance", "https://www.youtube.com/embed/CevxZvSJLk8") ]

    @aggressive = [ Song.new("House of the Rising Sun", "The Animals", "Aggressive", "https://www.youtube.com/embed/0sB3Fjw3Uvc"),
    Song.new("Animal", "Neon Trees", "Aggressive", "https://www.youtube.com/embed/gM7Hlg75Mlo"),
    Song.new("Dangerous", "Big Data(feat. Joywave)", "Aggressive", "https://www.youtube.com/embed/E8b4xYbEugo"),
    Song.new("Holiday (The Original Broadway Cast Recording feat. John Gallagher Jr., Stark Sands, Theo Stockman & Company)", "Green Day", "Aggreesive", "https://www.youtube.com/embed/A1OqtIqzScI") ]

    @anxious = [ Song.new("Unwritten", "Natasha Bendinfield", "Anxious", "https://www.youtube.com/embed/b7k0a5hYnSI"),
    Song.new("Make It Happen", "Mariah Carey", "Anxious", "https://www.youtube.com/embed/-Q6xx0JfMBI"),
    Song.new("It's My Life", "Bon Jovi", "Anxious", "https://www.youtube.com/embed/vx2u5uUu3DE"),
    Song.new("Hit Me With Your Best Shot", "Pat Benatar", "Anxious", "https://www.youtube.com/embed/0JRgHol94Xc"),
    Song.new("The Climb", "Miley Cyrus", "Anxious", "https://www.youtube.com/embed/NG2zyeVRcbs"),
    Song.new("Fighter", "Christina Aguilera", "Anxious", "https://www.youtube.com/embed/PstrAfoMKlc") ]

    @defeated = [ Song.new("The Funeral", "Band of Horses", "Defeated/Hopeless", "https://www.youtube.com/embed/cMFWFhTFohk"),
    Song.new("How to Save a Life", "The Fray", "Defeated/Hopeless", "https://www.youtube.com/embed/cjVQ36NhbMk"),
    Song.new("Madness", "Muse", "Defeated/Hopeless", "https://www.youtube.com/embed/Ek0SgwWmF9w"),
    Song.new("See You Again", "Wiz Khalifa", "Defeated/Hopeless", "https://www.youtube.com/embed/RgKAFK5djSk") ]

    @ashamed = [ Song.new("Unfaithful", "Rihanna", "Ashamed/Guilty", "https://www.youtube.com/embed/rp4UwPZfRis"),
    Song.new("I'm a loser", "The Beatles", "Ashamed/Guilty", "https://www.youtube.com/embed/ukWRRNqMAZ4"),
    Song.new("Nobody's Perfect", "Madonna", "Ashamed/Guilty", "https://www.youtube.com/embed/V0z2oz6FWE8"),
    Song.new("If Mama Knew", "Leo Kottke", "Ashamed/Guilty", "https://www.youtube.com/embed/bafBTIkj2wg"),
    Song.new("Nodoy's Fault But Mine", "Led Zeppelin", "Ashamed/Guilty", "https://www.youtube.com/embed/W8ahBqVuT68") ]

    @sorry = [ Song.new("Sorry", "Buckcherry", "Sorry/Apologetic", "https://www.youtube.com/embed/77pb0WXAz-Q"),
    Song.new("All the Things She Said", "Tatu", "Sorry/Apologetic", "https://www.youtube.com/embed/8mGBaXPlri8"),
    Song.new("Always On Your Side", "Sheryl Crow", "Sorry/Apologetic", "https://www.youtube.com/embed/FseuxxcTlvA"),
    Song.new("Better Than Me", "Hinder", "Sorry/Apologetic", "https://www.youtube.com/embed/TEXBmw2jBcA"),
    Song.new("Breathe", "Melissa Etheridge", "Sorry/Apologetic", "https://www.youtube.com/embed/inA6iPVY_S8"),
    Song.new("Even Angels Fall", "Jessica Riddle", "Sorry/Apologetic", "https://www.youtube.com/embed/JlFt3iZCKME"),
    Song.new("Fear", "Sarah McLachlan", "Sorry/Apologetic", "https://www.youtube.com/embed/xEzetAXZDI4"),
    Song.new("I'm Sorry", "Flyleaf", "Sorry/Apologetic", "https://www.youtube.com/embed/ORYosgfyS7M"),
    Song.new("If I Am", "Nine Days", "Sorry/Apologetic", "https://www.youtube.com/embed/g8eFm6jWqRg"),
    Song.new("I'll Be There For You", "The Rembrandts", "Sorry/Apologetic", "https://www.youtube.com/embed/q-9kPks0IfE"),
    Song.new("It's Not Over", "Secondhand Serenade", "Sorry/Apologetic", "https://www.youtube.com/embed/Cf3tOkiHh74"),
    Song.new("Realize", "Colbie Caillat", "Sorry/Apologetic", "https://www.youtube.com/embed/GlZxZ2n2zpw"),
    Song.new("Umbrella", "Rihanna and Marie Digby", "Sorry/Apologetic", "https://www.youtube.com/embed/CvBfHwUxHIk") ]

    @angry = [ Song.new("I Hate Everything About You", "Three Days Grace", "Angry", "https://www.youtube.com/embed/d8ekz_CSBVg"),
    Song.new("Platypus", "Green Day", "Angry", "https://www.youtube.com/embed/7RLDZaWN8b4"),
    Song.new("The Way I Am", "Eminem", "Angry", "https://www.youtube.com/embed/mQvteoFiMlg"),
    Song.new("Breakin’ dishes", "Rihanna", "Angry", "https://www.youtube.com/embed/v0YrTizC3JU"),
    Song.new("Gives You Hell", "The All-American Rejects", "Angry", "https://www.youtube.com/embed/uxUATkpMQ8A") ]

    @conflicted = [ Song.new("Bohemian Rhapsody", "Queen", "Conflicted", "https://www.youtube.com/embed/fJ9rUzIMcZQ"),
    Song.new("Habits (Stay High) [Hippie Sabotage Remix]", "To Love", "Conflicted", "https://www.youtube.com/embed/SYM-RJwSGQ8"),
    Song.new("Fame", "David Bowie", "Conflicted", "https://www.youtube.com/embed/FW9x7OkwpxA"),
    Song.new("Holy Grail", "Jay Z", "Conflicted", "https://www.youtube.com/embed/ldiXFpa-D7Q") ]

    @sentimental = [ Song.new("All I Want", "Kodaline", "Sentimental", "https://www.youtube.com/embed/-cOCmC_m23E"),
    Song.new("All of Me", "John Legend", "Sentimental", "https://www.youtube.com/embed/450p7goxZqg"),
    Song.new("All This Time", "OneRepublic", "Sentimental", "https://www.youtube.com/embed/lIY_2t0ZKPU"),
    Song.new("Arms", "Christina Perri", "Sentimental", "https://www.youtube.com/embed/MeW0Sl0tNS8"),
    Song.new("Good Riddance (Time Of Your Life)", "Green Day", "Sentimental", "https://www.youtube.com/embed/3NAFGZRBf1g"),
    Song.new("Thinking Out Loud", "Ed Sheeran", "Sentimental", "https://www.youtube.com/embed/lp-EO5I60KA"),
    Song.new("A Thousand Years", "Christina Perri", "Sentimental", "https://www.youtube.com/embed/rtOvBOTyX00"),
    Song.new("The Only Exception", "Paramore", "Sentimental", "https://www.youtube.com/embed/-J7J_IWUhls"),
    Song.new("Soldier", "Gavin Degraw", "Sentimental", "https://www.youtube.com/embed/2TuyT0knklM"),
    Song.new("Life of the Party", "Shawn Mendes", "Sentimental", "https://www.youtube.com/embed/O986FuTmQcM") ]

    @in_love = [ Song.new("Baby", "Justin Bieber", "In Love", "https://www.youtube.com/embed/kffacxfA7G4"),
    Song.new("Back For You", "One Direction", "In Love", "https://www.youtube.com/embed/j5oIz-8gDvs"),
    Song.new("Banga! Banga!", "Austin Mahone", "In Love", "https://www.youtube.com/watch?v=Xovw9Qpl_jE"),
    Song.new("Best I Ever Had", "Gavin Degraw", "In Love", "https://www.youtube.com/watch?v=NL2VBU604Jw"),
    Song.new("C'mon C'mon", "Ome Direction", "In Lover", "https://www.youtube.com/watch?v=ZqQrN-XbzJA"),
    Song.new("Love Me Harder", "Ariana Grande", "In Love", "https://www.youtube.com/watch?v=g5qU7p7yOY8"),
    Song.new("Love Me like You Do", "Ellie Goulding", "In Love", "Love somebody - Maroon 5  https://www.youtube.com/watch?v=MU8B4XDI3Uw"),
    Song.new("Love Somebody", "Maroon 5", "In Love", " "),
    Song.new("She Looks so Perfect", "5 Seconds of Summer", "In Love", "https://www.youtube.com/watch?v=X2BYmmTI04I"),
    Song.new("Steal My Girl", "One Direction", "In Love", "https://www.youtube.com/watch?v=UpsKGvPjAgw"),
    Song.new("Story of My Life", "One Direction", "In Love", "https://www.youtube.com/watch?v=W-TE_Ys4iwM"),
    Song.new("Style", "Taylor Swift", "In Love", "https://www.youtube.com/watch?v=-CmadmM5cOk"),
    Song.new("Unconditionally", "Katy Perry", "In Love", "https://www.youtube.com/watch?v=XjwZAa2EjKA"),
    Song.new("Waiting for Superman", "Daughtry", "In Love", "https://www.youtube.com/watch?v=SXjXKT98es") ]

    @jealous = [ Song.new("Jealous", "Nick Jonas", "Jealous", "https://www.youtube.com/watch?v=yw04QD1LaB0"),
    Song.new("Want You Back", "Cher/Demi Lavato", "Jealous", "https://www.youtube.com/watch?v=LPgvNlrBfb0"),
    Song.new("More Than This", "One Direction", "Jealous", "https://www.youtube.com/watch?v=b-RQIN3wo5U"),
    Song.new("True Colors", "Wiz Khalifa", "Jealous", "https://www.youtube.com/watch?v=4W7XhJSPYvg"),
    Song.new("When I was your Man", "Bruno Mars", "Jealous", "https://www.youtube.com/watch?v=ekzHIouo8Q4") ]

    @impulsive = [ Song.new("Lose Yourself", "Eminem", "Impulsive", " "),
    Song.new("Free Bird", "Lynyrd Skynyrd", "Impulsive", " ") ]

    @sassy = [ Song.new("Fancy", "Iggy Azalea and Charli XCX", "Sassy", " "),
    Song.new("Bad Girls", "M.I.A.", "Sassy", " "),
    Song.new("Sleazy", "Kesha", "Sassy", " "),
    Song.new("Partition", "Beyoncé", "Sassy", " "),
    Song.new("Million Dollar Bills", "Lorde", "Sassy", " "),
    Song.new("How to Be a Heartbreaker", "Marina & the Diamonds", "Sassy", " "),
    Song.new("What I Like", "Charli XCX", " Sassy", " "),
    Song.new("SMS (Bangerz)", "Miley Cyrus ft. Britney Spears", "Sassy", " ") ]

    @victorious = [ Song.new("The Distance", "Cake", "Victorious", " "),
    Song.new("Eye of the Tiger", "Survivor", "Victorious", " "),
    Song.new("U Can't Touch This", "MC Hammer", "Victorious", " "),
    Song.new("Don't Stop Believing", "Journey", "Victorious", " "),
    Song.new("We are the Champions", "Queen", "Victorious", " "),
    Song.new("Lose Yourself", "Eminem", "Victorious", " "),
    Song.new("Nothing's Gonna Stop us Now", "Starship", "Victorious", " "),
    Song.new("Stronger", "Kayne West", "Victorious", " ") ]

    if @mood == "heartbreak-depressing"
  		@songs = @heartbreak_depressing
  	elsif @mood == "angry"
  		@songs = @angry
  	elsif @mood == "heartbreak-feel good"
  		@songs = @heartbreak_feel_good
  	elsif @mood == "happy"
  		@songs = @happy_feel_good
  	elsif @mood == "frustrated/agitated"
  		@songs = @frustrated
  	elsif @mood == "hyper/pumped"
  		@songs = @hyper
  	elsif @mood == "inspired/motivated"
  		@songs = @inspired
  	elsif @mood == "abandoned"
  		@songs = @abandoned
  	elsif @mood == "aggressive"
  		@songs = @aggressive
  	elsif @mood == "anxious"
  		@songs = @anxious
  	elsif @mood == "ashamed"
  		@songs = @ashamed
  	elsif @mood == "conflicted"
  		@songs = @conflicted
  	elsif @mood == "sentimental"
  		@songs = @sentimental
  	elsif @mood == "jealous"
  		@songs = @jealous
  	elsif @mood == "impulsive"
  		@songs = @impulsive
  	elsif @mood == "sassy"
  		@songs = @sassy
  	elsif @mood == "victorious"
  		@songs = @victorious
  	elsif @mood == "apologetic"
  		@songs = @sorry
  	elsif @mood == "in love"
  		@songs = @in_love
  	elsif @moods == "loving yourself"
  		@songs = @loving_yourself
  	elsif @moods == "perserverance"
  		@songs = @perserverance
  	elsif @moods == "defeated"
  		@songs = @defeated
  	end

    erb :videos
  end

end