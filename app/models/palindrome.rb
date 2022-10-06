class Palindrome 

    def palindrome(str)
        str = str.to_s.downcase.gsub(/[^a-zA-Z0-9]+/, "")
        str == str.reverse
    end
end 