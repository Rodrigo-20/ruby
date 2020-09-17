   

def sub_strings(string,dictionary)
    #included=[]
    included= dictionary.map{ |word| Array.new(string.split(word).length, word)}.reduce(Array.new) do |wordin,wordrep  |
        wordin+wordrep 
    end
    included.reduce(Hash.new(0)) do |word, word_hits| 
        word[word_hits]+=1
        word
    end
    #return asd
    

end
result= sub_strings("hello world! my name is rodrigo and my second name is also rodrigo or maybe is not",["rodrigo","is"])
puts result
