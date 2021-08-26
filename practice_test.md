# RB109 Written Practice Exam

1. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
```

2. What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 5.2
b = 7.3

a = b

b += 1.1
```

3. Why is `"George"` output in this snippet? How would you change it to output `"Lisa"` instead?

```Ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name
```

4. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```

5. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```

6. Are these three local variables pointing to the same object?

```ruby
a = 'name'
b = 'name'
c = 'name'
```

And when we add these two lines of code... ?

```ruby
a = c
b = a
```

What about now?

```ruby
a = :name
b = :name
c = :name
```

7. What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```


8. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
```

9. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
```

10. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
```

11. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
```

12. What does the following code return? What does it output? Why? What concept does it demonstrate? What values do `s` and `t` have? Why?
```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

13. What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

15. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

16. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
user_input = gets

loop do
  name = user_input
  break
end

if user_input
  puts "Hello " + name
end
```

17. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
```

18. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

19. What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y
```

20. What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```