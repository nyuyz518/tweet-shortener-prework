def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
   }
end

def word_substituter(tweet)
	words_to_be_shortened = tweet.split.collect do |word|
		if dictionary.keys.include?(word.downcase)
			word = dictionary[value.downcase]
		else
			word
		end
	end
	words_to_be_shortened.join(" ")
end

# def bulk_tweet_shortener(tweet_array)
#   tweet_array.each do |tweet|
#     puts word_substituter(tweet)
#   end
# end

# tweet_array = ["Hello I too am tweeting.", "Here are two tweets", "too many tweets?", "and here are four"]
# bulk_tweet_shortener(tweet_array)

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length >= 140
    shortened_tweet[0...135] + "(...)"
  else
    shortened_tweet
  end
end
tweet = "and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test and if two too be hello for four test"
shortened_tweet_truncator(tweet)

