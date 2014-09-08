#Author: Rahul Govind
# Overall notes at the bottom. 

def is_palindrome (n) #Checks to see if the number is a palindrome
  if n == n.reverse
    return true
  end
end

def run (filename) #runs filename 
  array = []
  palin = []
  
    file = File.open(filename, "r") do |file| #reads file
      file.each_line{|line | array << line} #adds each line into an array 
    end
    
    from = array[0] #first number as the start of range
    to = array[1] # second number as end of range
     
    puts "File checked: #{filename}"
    puts "Range: #{from}" + "..." + "#{to}"

   for num in from..to #iterate through range
      if is_palindrome(num) 
        palin.push(num) #adds correct number to the palindrome list
      end
    end
    puts "Palindromes: #{palin.length}" #outputs total number of palindromes checked
end

run ("example.txt")
run ("another-test.txt")
run ("test-1.txt")
run ("test-2.txt")

#Notes

#Unfortunately this was as close to the solution as I could get, as the second line of the file reading was not able to correctly identify the number due to the break line not being removed.
#However, I have made notes throughout the code to show my method.
