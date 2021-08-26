# Practice Test Answers

Remember:

> 1. Start timers
>
> 2. Open a terminal, have a scratch pad ready to go, make sure you're in the right directory
>
> 3. Take notes about the questions
>
> 4. Write answers in `.md`
>
> 5. Answers should demonstrate the following: 
>
>    a. Ability to parse code and describe it with precision
>
>    b. Knowledge of specific syntactical or language-specific aspect of Ruby
>
>    c. Understanding of some deeper, underlying principle, whether a fundamental aspect of Ruby or of programming more generally
>
> 6. Answers should contain the following:
>
>    a. Reasoning explained with reference to specific lines in the program
>
>    b. Extreme precision (ex. "method definition" or "method invocation" rather than "method")
>
>    c. Notations of any specific syntactical conventions or technical observations where relevant
>
>    d. Identification of the key fundamental concept or concepts demonstrated in the question

Also:

> Suggested response format (based on feedback from other students & Srdjan’s blog post):
>
> - **What does the code output? What are the return values?**
>
> - **Answer the why behind the output/return:** 
>
> - - Focus only on the lines of code that deliver the output and return values. 
>
> - **Summarize what the problem demonstrates and why:** This problem demonstrates the concept of local variable scope/etc…
>
> - - This can be at the beginning or end of your answer - personal preference.



1.

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

On Lines 1 and 2, two variables are initialized. `a` is assigned to the integer `4` and `b` is assigned to the integer `2`.

On Line 4, the `.times` method is called on the integer `2`, and a block is passed to it as argument on Lines 4-7. The block is given a parameter named `a`.  Inside the block on Line 5, the parameter `a` is assigned to the integer `5`. `a` is then passed as argument to the `puts` method on Line 6. On Lines 9-10, the variables `a` and `b` are both printed with `puts` as well.

When this code is run, the `times` method with the given block will print the integer `5` 2 times and return the integer `2`, the object `times` was called on. Line 9 will output the integer `4` and return `nil`. Line 10 outputs the integer `2` and returns nil.

This snippet demonstrates variable shadowing. The block argument to `times` is named `a`, so it shares a name with the variable `a` in outer scope. What this means is that the `a` variable initialized on Line 1 cannot be passed in to the `times` method. The parameter `a` inside the method is a separate object from the `a` variable in outer scope, so it is not reassigned when the `times` method executes the block argument. Therefore `a` remains assigned to the integer `4`.



2. 

```ruby
a = 5.2
b = 7.3

a = b

b += 1.1
```



On Line 1, the local variable `a` is initialized to the float `5.2`. On Line 2 the local variable `b` is initialized to the float `7.3`.  On line 4, `a` is reassigned to point to the same object referenced by variable `b`, meaning that at this point `a` is reassigned to the float `7.3`.  On Line 6, the `+=` operator reassigns variable `b` to the result of the expression `b + 1.1`. At the end of the program, `b` points to the float `8.4`. `a` meanwhile points to the float `7.3`.

This exercise demonstrates the concept of variables as pointers. Even though `a` is reassigned on Line 4 to point to the same object `b` references, `b` is reassigned on Line 6. It is important to remember that in Ruby, assignment operators are shorthand for an expression that includes both reassignment and concatenation. Line 6 could be written alternatively as `b = b + 1.1`. Because `b` is reassigned on Line 6, it no longer points to the same object as variable `a`.



3. Why is "George" output?

```ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name
```

On Lines 1-3 the method `name` is definied. On Line 2, we see that the body of `name` consists of the string "George". On Line 5 the variable `name` is set to the string `"Lisa"`. On lines 7-10 another method `display_name` is defined. In the body of the method on Line 8, the `puts` method is called, passing in the `name` variable as argument. On Line 11, the `display_name` method is called, which will output `George` and return `nil`.

RETURN HERE

What is the concept??



4. 

```ruby
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```

On Line 1 the variable `a` is initialized to the string `"Hello"`. Line 3-7 is a conditional statement. On Line 3, the condition of the `if` statement is set to the expression `a`. If the condition returns true, the condition on Line 4 will run, which consists of the `puts` method with the string `"Hello is truthy"` passed in as argument. If the condition returns false, the condition on Line 6 will run, which consists of the `puts` method with the string `"Hello is falsey"` passed in as argument. This statement will print `Hello is truthy` and return `nil`.

This exercise is an example of truthyness in Ruby. In Ruby, in the context of control flow, all expressions evaluate to `true` when used in control flow unless they evaluate to `false` or `nil`. Because the expression `a` evaluates to the string `"Hello"` and strings are considered truthy, the conditional runs the `true` condition.

(Really off on the wording here)



5.

```ruby
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
```

On Line 1 the variable `words` is set to the return value of the expression .... %w notation? ... which evaluates to the array `['jump', 'trip', 'laugh', 'run', 'talk']`. On Line 3 the variable `new_array` is initialized and set to the return value of the expression on lines 3-5. This expression is the Enumerable#map method called on the array referenced by the variable `words`, which is in turn passed a block on Lines 3-5, with a block parameter of `word`. In each iteration, the `word` parameter will point to an element of the calling array, starting with the element at index [0], until all have been passed through the block. The body of the block on Line 4 is that for each element, sigified by the parameter `word`, the `start_with?` method will be called, passing in the string `"t"` as parameter. On Line 7, the `p` method is called and passed in an argument of `new_array`. This will output `[false, true, false, false, true]` and return `[false, true, false, false, true].`

This exercise demonstrates the concept of ...? RETURN HERE

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

In the first code block, local variables `a`, `b`, and `c` are each separately set to the string `'name'`. However, they do not all point to the same object. 

In the second code block, local variable `a` is reassigned to point to the object referenced by local variable `c`. Now `a` and `c` both point to the same object, the string `'name'`, which was originally initialized to `c`. On Line 2, local variable `b` is reassigned to point to the object referenced by local variable `a`. The object referenced by `a` is the same object originally initialized to `c`. Now `a`, `b`, and `c`, all point to the same object.

In the third code block,   local variables `a`, `b`, and `c` are each separately initialized to the symbol`:name`. Unlike in the first code block, now `a`, `b`, and `c`, all point to the same symbol `:name`.

This exercise demonstrates the concept of variables as pointers. Variable assignment in Ruby can have a different result based on whether the object a local variable is assigned to is a mutable or immutable object. Immutable objects in Ruby occupy a single space in memory. So for the symbol `:name`, there is only one object in memory for that object, so any variables referencing it necessarily point to the same object. Variable reassignment always breaks the bounds between a variable and the object it references. 



RETURN HERE

7.

```Ruby
animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal
```

On Line 1, the local variable `animal` is set to the string `"dog"`

On Line 3, the `loop` method is called and passed the block on Lines 3-6 as argument. The block is given a parameter of `animal`. In the body of the block on Line 4, the parameter `animal` is assigned to the string `"cat"`. The `break` statement on Line 5 will terminate the loop after one iteration. On Line 8 the `puts` method is called, passing in the object referenced by the local variable `animal` as argument, which is the string `"dog"`. This code with output `dog` and return `nil`.

This exercise demonstrates variable shadowing. Because the parameter of the block on Lines 3-5 is named `animal`, the local variable `animal`initialized on Line 1 cannot be invoked from within the method. `animal` on Line 4 is the method parameter and not the same object as the local variable `animal` referenced on Lines 1 and 8. Because Line 4 has no impact on the local variable `animal` in outer scope, it remains assigned to the string `"dog"`, and that object is output on the final line.



8. 

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
```

On Line 1, the variable `arr` is initialized and assigned to the array `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`. On Line 3, local variable `incremented` is initialized and assigned to the return value of the expression on Lines 3-5. This expression is calling the `map` method on the array referenced by local variable `arr`, which is passed the block on lines 3-5, with the block parameter named `n`. On each iteration, `n` will be assigned to point to the object referenced by the elements in the array referenced by `arr`, beginning with the element at index [0], until reaching the end. According to the block body on Line 4, the current object will have the `+` method called on it, passing in the integer `1` as argument. On Line 6, the `p` method is called and passed the object referenced by the variable `incremented` as argument. This will output `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]` and return the array `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11]` .

This code demonstrates the concept of iteration and transformation in Ruby. When `map` is called on a collection, it will return a new collection with each item from the original collection mutated. How `map` mutates each element depends on the return value of the block. In this case, the block returned the return value of the expression `n + 1`. Because each element in the array `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` was an integer, the return value was always a new integer. These results were then returned by `map` in a new collection. The original collection, the object referenced by `arr`, is not mutated.

9.

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

On Lines 1-3, the method `test` is defined. The body of the method on Line 2 is the `puts` method called with the string `"written assessment"` passed in as argument. On Line 5, the local variable `var` is initialized to the evaluated result of the method call `test`, which returns `nil`. So on Line 5, `var` is assigned to the object `nil`. On Lines 7-11 is a conditional. The conditional expression given is `if var`, which will evaluate as false. Therefore the code on Line 10 will run. This will call the method `puts` with the string `"interview"` passed in as argument. The conditional will output `interview` and return `nil`.

This exercise demonstrates the concept of truthyness in Ruby. In Ruby, every object evaluates to true for control flow purposes unless the evaluated object is `false` or `nil`. When `var` is assigned to the evaluated result of the method call `test`, it is assigned the return value of `test`, which is `nil`. The `test` method has an implicit return value of `nil` because the last evaluated expression was the `puts` method call, which always returns `nil`. So even though calling the `test` method outputs `written assessment`, it returns `nil`, so the object assigned to `var` is `nil`. `nil` evaluates as false in control flow, so the conditional runs the `else` condition, as the conditional expression evaluates to `nil` which evaluates to `false`.

10.

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

On Lines 1-8, the method `example` is defined. On Line 1, `example` is given a parameter of `str`. Inside the method body, on Line 2, the local variable `i` is initialized to the integer `3`. Next inside the method, the `loop` method is called and passed the block on Lines 3-7 as argument. Inside the block on Line 4, the `puts` method is called with the parameter `str` passed in as argument. On Line 5, `i` is reassigned to the return value of the expression `i - 1`. On Line 6 a `break` statement is given which will run if the conditional statement `if i == 0` returns `true`. On Line 10 the method `example` is called and passed the string `'hello'` as argument. This code will output `hello` three times and return `nil`.

This exercise demonstrates iteration in Ruby.  In this example, the integer assigned to the variable `i` acts as a counter, preventing us from entering an infinite loop. Each time the loop iterates, `i` is reassigned to the integer returned in the expression `i - 1`, which is one fewer than the previous iteration, until eventually `i` points to `0`. When this is the case, the conditional statement executes, the loop breaks, and the method call finishes, implicitly returning `nil` because the last statement in the block to execute was the break statement, which returns `nil`. (Is this right? RETURN HERE)

11.

```ruby
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
```

On Line 1 the local variable `answer` is initialized and assigned to the integer `42`. On Lines 3-5 the method `mess_with_it` is defined and given the parameter `some_number`. On Line 4 from within the method body, the parameter `some_number` is reassigned to the return value of the expression `some_number - 8`. On Line 7, the local variable `new_answer` is initialized and assigned to the return value of calling the `mess_with_it` method with the object referenced by local variable `answer` passed in as an argument. The return value is the integer `50`, so `new_answer` is set to `50`. On Line 9 the `p` method is called and passed the return value of the expression `answer - 8` as an argument. The return value of the `-` method called on the object referenced by `answer` (the integer `42`) and the integer `8` passed in as argument is the integer `34`. This code outputs `34` and returns `34`.

While the local variable `new_answer` is assigned to the return value of `mess_with_it(answer)`, this is what happens: because the `some_number` parameter is initially assigned to point to the same object as `answer` when it is passed in as parameter. At this point both point to the same object. However, when `some_number` is reassigned with the  `+=`  operator on Line 4, it breaks the previous bond between `some_number` and `42` and reassigns it to the return value of `42 + 8`, which is `50`. At this point `some_number` and `answer` no longer reference the same object, so `answer` is unchanged. This makes `mess_with_it` a non-mutating method. No mutating methods are used within the method body.

12.

```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)
```

On Lines 1-5 the method `fix` is defined and given a parameter named `value`.  On Line 2 the `upcase!` method is called on the object referenced by the parameter `value`. On Line 3 the `concat` method is called on the object referenced by the parameter `value` and passed an argument of the string `'!'`. On Line 4, the parameter `value` is invoked. Because `value` is the last expression in the method `fix`, the method will implicitly return the object referenced by the parameter `value` when it executes.

On Line 7 the local variable `s` is initialized to the string `'hello'`. On Line 8 the local variable `t` is initialized and set to the return value of calling the method `fix` and passing it an argument of the object referenced by the variable `s`. At the end of this code, both `s` and `t` reference the same object, the string `'HELLO!`', which is the same object originally initialized to `s` on Line 7.

This exercise demonstrates mutability in Ruby. Both the `upcase!` and `concat` string methods are mutating. In this program, `s` is given as an argument to `fix`, the parameter `value` is first assigned to the same object as `s` as an alias. They both point to the same object. Because they point to the same object, when a mutating method is called on the object referenced by `value` on Line 2, the object referenced by `s` is also mutated because it is the same object. This is repeated on Line 3 with `concat`. Because `fix` returns the object referenced by `value`, `t` is assigned to the object referenced by `s`, which has been mutated as it was passed through the `fix` method. This makes `fix` a mutating method.

13.

```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```

On Lines 1-3, the method `add_name` is defined and given two parameters named `arr` and `name`. In the method body on Line 2, `arr` is reassigned to the result of calling the `<<` method on the object referenced by `arr`, passed the objected referenced by `name` as an argument.

On Line 5 the local variable `names` is initialized to the array of strings `['bob', 'kim']`. On Line 6, the method `add_name` is called and passed through arguments of the array referenced by the variable `names` and the string `'jim'`.  On Line 7, the `puts` method is called, passing in the object referenced by `names` as argument. This program outputs `bob kim jim` and returns `nil`.

This exercise demonstrates mutability. When the array referenced by `names` is passed in as an argument to the `add_name` method, the parameter `arr` is also assigned to point to that same array. So when `arr` is reassigned to the return value of `arr << name`, even though `arr` is at this point reassigned to a different object than the one referenced by `names`, a destructive method, `<<` was still called on the array referenced by `names` in the process. So the array is mutated. RETURN HERE?



15.

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
```

On Line 1 the iterative `any?` method is called on the hash `{ a: "ant", b: "bear", c: "cat" }` and given the block on Lines 1-3 as argument. The block sets two parameters named `key` and `value`, which reference the keys and values of the calling hash on each iteration. In the block body on Line 2, the `>` method is called on the return value of calling the `size` method on the value referenced by `value` and passed the integer `4` as argument. This program will output nothing and return `false`.

This exercise demonstrates...?



16.

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

On Line 1 the local variable `user_input` is set to the return value of calling the `gets` method, which solicits user input and returns a string.

On Lines 3-6 the `loop` method is called and passed the block on Lines 3-6 as parameter. Inside the loop on Line 4, the local variable `name` is initialized to point to the same object referenced by `user_input`. The loop is broken by the `break` statement on Line 5, meaning it will only run once.

On Lines 8-10 is an `if` statement. The conditional expression is `user_input`, which will evaluate as true as long as the object referenced by `user_input` is not `false` or `nil`. If the conditional expression evaluates to `true`, the expression on Line 9 will run. On Line 9, the `puts` method is called and passed an argument of the return value of calling the `+` method on the string `"Hello "` and passing it the object referenced by `name` as argument.

This code will output `Hello Andi` and return `nil`. This exercise is an example of local variable scope in Ruby. While the block passed to the `loop` method constitutes a new scope, the `if` statement does not create a new scope.

I actually don't understand this RETURN HERE



17.

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
```

On Line 1, the `all?` method is called on the array `[1, 2 ,3]` and passed the block on Lines 1-3 as parameter. The block is given the parameter `num`. On each iteration, the block will return the return value of calling the method `>` on the object referenced by `num` with the integer `2` passed in as parameter. This code block will output nothing and return `false`.

This code block demonstrates iteration. Because `any?` is an iterative method, on each iteration the `num` parameter is assigned to the next successive element in the calling array, beginning with the first. `all?` is also a method that only returns a boolean based on the return value of the block.

On its first iteration, this method evaluates the expression `1 > 2`. Because this returns false and `all?` the block must return `true` on each iteration in order for `all?` itself to return `true`, the method returns `false` after the first iteration and all subsequent iterations are skipped.



18.

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

On Line 1, the `select` method is called on the array `[1, 2, 3]` and passed the block on Lines 1-3 as parameter. The block is given the parameter `num`. On Line 2 in each iteration, the method `>` is called on the object referenced by the parameter `num` and passed the integer `5` as argument. On Line 3, the string `hi` is invoked. This method will output `hi` three times and return `[1, 2, 3]`.

The `select` method returns a new filtered collection based on the return value of the block. On each iteration, the current object referenced by `num` is added to the new collection only if the block returns `true`. In this case, because the last line of the block is the string `'hi'`, which will evaluate to `true` for control flow purposes, each item in the original array is selected for inclusion in the new array returned by `select`. This makes the expression on Line 2 effectively irrelevant as it has no impact on the return value of the block.

19. 

```ruby
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y
```

On Lines 1-3 the method `increment` is defined and given a parameter of `x`. Inside the method, the `<<` method is called on the object referenced by the parameter `x` and passed the string `'b'` as argument. On Line 5 the local variable `y` is initialized to the string `'a'`. On Line 6, the `increment` method is called and passed an argument of the object assigned to `y`, which is the string `'a'`. Inside the method, the parameter `x` is assigned to `'a'` as an alias. On Line 2, the `<<` method is called `'a'` and passed the string `'b'` as argument, returning the mutated string `'ab'`. On Line 8 the `puts` method is called and passed the object referenced by `y` as argument. This code outputs `ab` and returns `nil`.

This is an example of mutation in Ruby. When `y` is passed in as argument to `increment`, the parameter `x` is bound to the same object `y` references. Because in Ruby variables are pointers, when the `<<` method is called on `x` on Line 2, it is actually being called on the object `x` references, which is the same object `y` references. Because `<<` is a mutating method, the object `y` references is mutated within the method.

20.

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

On Line 1, local variable `numbers` is initialized and set to reference the array of integers `[1, 2, 2, 3]`. On Line 2, the `uniq` method is called on the array referenced by `numbers`. On Line 4 the `puts` method is called and passed the object referenced by `numbers` as argument. This code outputs `1 2 2 3` and returns `nil`.

This is an example of mutability in Ruby. `uniq` is not a mutating method, so when it is called on the array referenced by `numbers`, no permanent changes are made to the array. Therefore when it is printed with `puts` on Line 4, it is unchanged. The `puts` method always returns `nil`.

Immediate notes: Typora fucking crashed multiple times, the timer website didn't fucking work. That is bad fucking news.