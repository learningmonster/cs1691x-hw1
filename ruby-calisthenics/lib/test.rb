
[%w(cars scar), %w(four), %w(for), %w(creams scream)].each do |group|
	p group
        #@anagrams.should include(group)
end





#str = "#{self}"
source = "34bla_h!GK#x".downcase
#str = source.scan(/([^[\w]+])/)
#str = source.scan(/([\w]+)/)
#str = source.scan(/([^[\w]+])/)
str = source.scan(/([\w]+)/)
p str
#stripped = str
#str.each { |x| source.delete!(x)}
stripped = str.join('')
#stripped = source.delete(str)
#str.join!
p stripped
p stripped.reverse
#stripped = str.gsub(([\w]+))
#p stripped

    a = "foo,bar,baz"
    #b = a.sub( "foo", "boo" )
    
    arr = ['a','b']

	b = a.gsub( "a", "" )
	    
    arr.each { |x| a.gsub!(x, "") }
	b = a
   
    puts b

#    $ ./1.rb
#    foo,bar,baz
#    gsub$ ./1.rb
#    boo,bar,baz 
