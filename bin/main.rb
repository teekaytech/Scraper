notice =
<<-begin 
This app scrapes International Scholarship Opportunities
for developing countries, from all around the globe.'
It sources data from 
https://www.scholars4dev.com/category/target-group/any-developing-country-scholarships/ \n
begin

instruction = 
<<-eos
Enter:
1 for scrapiing first page only,
2 for scrapping all available pages,
3 for scraping scholarships in the UK,
4 for other countries except UK, and 
...any other key to EXIT the app"
eos

puts notice
print instruction
option = gets.chomp

case option.to_i
when 1
  puts "You're a genius #{option}"
when 2
  puts "You're a rr #{option}"
when 3
  puts "You're a 333 #{option}"
when 4
  puts "You're a 444 #{option}"
else
  puts "Thank you."
end