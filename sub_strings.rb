   

def sub_strings(string,dictionary)
    #included=[]
    test_string="! "+string+" !"
    included= dictionary.map{ |word| Array.new(test_string.downcase.split(word).length - 1, word)}.reduce(Array.new) do |wordin,wordrep  |
        wordin+wordrep 
    end
    included.reduce(Hash.new(0)) do |word, word_hits| 
        word[word_hits]+=1
        word
    end
    #return asd
    

end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
result= sub_strings("Howdy partner, sit down! How's it going?",dictionary)
puts result
