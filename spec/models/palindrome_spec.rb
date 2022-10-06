require 'rails_helper'

RSpec.describe Palindrome, type: :model do
    let(:palindrome) { Palindrome.new }
    # Progressive types of palindrome tests
    describe "palindrome" do
        it "returns true if the string identical when read backwards" do
            expect(palindrome.palindrome("hannah")).to eq(true)
        end

        it "returns true if the number is indentical when read backwwards" do 
            expect(palindrome.palindrome(1028201)).to eq(true)
        end 

        it "returns true if a phrase is identical when read backwards" do 
            expect(palindrome.palindrome("Mr Owl ate my metal worm")).to eq(true)
        end

        it "returns true if there is punctuation and is identical when read backwards" do 
            expect(palindrome.palindrome("Go hang a salami, I'm a lasagna hog.")).to eq(true)
        end 

        it "returns true if there is a mix of numbers and slashes and is identical when read backwards" do
            expect(palindrome.palindrome("02/02/2020")).to eq(true) 
        end
    end
end 