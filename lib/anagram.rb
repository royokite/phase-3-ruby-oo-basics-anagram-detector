class Anagram
    def initialize word
        @word = word
    end

    def match word_array
        match_array = []
        word_array.select do |e|
            if e.chars.sort == @word.chars.sort
                match_array << e
            end
        end
        p match_array
    end
end

word = Anagram.new("allergy")
word.match(%w[gallery ballerina regally clergy largely leading])
