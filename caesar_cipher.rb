def ceasar_cipher(message,shift)
    message_array_shift=[]
    message_array=message.split("")
    message_array.each { |n|
       k = 0
        if n.ord >= 97 and n.ord<=122 
            k=(n.ord + shift - 97)%26 + 97
            message_array_shift.push(k.chr)       
            
        elsif n.ord >=65 and n.ord<=90
            k=(n.ord + shift - 65)%26 + 65
            message_array_shift.push(k.chr)      
        else
            message_array_shift.push(n)
        end
         }
    puts  message_array_shift.join       
end    
ceasar_cipher("abcABC!!!",-3)