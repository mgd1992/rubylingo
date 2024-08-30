require 'faker'
UserAnswer.destroy_all
UserChallenge.destroy_all
User.destroy_all
Answer.destroy_all
Question.destroy_all
Challenge.destroy_all


# Create students
10.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "students_#{i + 1}@gmail.com", password: "1234567", password_confirmation: "1234567", knowledge_level: rand(1..3))
end
puts "created students"

#Create teachers

10.times do |i|
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "teachers_#{i + 1}@gmail.com", password: "1234567", password_confirmation: "1234567", is_teacher: true)
end
puts "created teachers"

# LEVEL 1
# Challenge 1: INTRODUCTION TO RUBY

challenge_introduction_to_ruby = Challenge.create!(title: "Introduction to ruby", level: 1, order: 1)


question_array = Question.create!(content: "How do you delimit an Array?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "With curly braces", is_correct: false, question: question_array)
Answer.create!(content: "With square brackets", is_correct: true, question: question_array)
Answer.create!(content: "With double quotes", is_correct: false, question: question_array)

question_variable = Question.create!(content: "What is a variable?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "It doesn't mean anything in Ruby", is_correct: false, question: question_variable)
Answer.create!(content: "It's an object that holds data", is_correct: true, question: question_variable)
Answer.create!(content: "It's the equivalent of a function in Javascript", is_correct: false, question: question_variable)

question_basic_syntax_1 = Question.create!(content: "What is the correct way to comment a single line in Ruby?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "// This is a comment", is_correct: false, question: question_basic_syntax_1)
Answer.create!(content: "# This is a comment", is_correct: true, question: question_basic_syntax_1)
Answer.create!(content: "; This is a comment", is_correct: false, question: question_basic_syntax_1)

question_basic_syntax_2 = Question.create!(content: "How do you print a string to the console?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "print(\"Hello, world!\")", is_correct: true, question: question_basic_syntax_2)
Answer.create!(content: "console.log(\"Hello, world!\")", is_correct: false, question: question_basic_syntax_2)
Answer.create!(content: "puts \"Hello, world!\"", is_correct: true, question: question_basic_syntax_2)

question_basic_syntax_3 = Question.create!(content: "What is the purpose of the `end` keyword in Ruby?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "To terminate a block of code", is_correct: true, question: question_basic_syntax_3)
Answer.create!(content: "To declare the end of a variable", is_correct: false, question: question_basic_syntax_3)
Answer.create!(content: "To start a new line of code", is_correct: false, question: question_basic_syntax_3)

question_basic_syntax_4 = Question.create!(content: "What is the data type of the value `true`?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "String", is_correct: false, question: question_basic_syntax_4)
Answer.create!(content: "Boolean", is_correct: true, question: question_basic_syntax_4)
Answer.create!(content: "Integer", is_correct: false, question: question_basic_syntax_4)

question_basic_syntax_5 = Question.create!(content: "How do you concatenate two strings?", challenge: challenge_introduction_to_ruby)
Answer.create!(content: "Using the `+` operator", is_correct: true, question: question_basic_syntax_5)
Answer.create!(content: "Using the `join` method", is_correct: false, question: question_basic_syntax_5)
Answer.create!(content: "Using the `concat` method", is_correct: false, question: question_basic_syntax_5)

# Challenge 2: VARIABLES AND DATA TYPES

challenge_variables_and_data_type = Challenge.create!(title: "Variables and data types", level: 1, order: 2)

question_variables_and_data_types_1 = Question.create!(content: "What is the difference between a local and a global variable?", challenge: challenge_variables_and_data_type)
Answer.create!(content: "Local variables are accessible within a method, while global variables are accessible from anywhere in the program.", is_correct: true, question: question_variables_and_data_types_1)
Answer.create!(content: "There is no difference between local and global variables in Ruby.", is_correct: false, question: question_variables_and_data_types_1)
Answer.create!(content: "Local variables are declared with the `var` keyword, while global variables are declared with the `global` keyword.", is_correct: false, question: question_variables_and_data_types_1)

question_variables_and_data_types_2 = Question.create!(content: "What is the data type of the value `3.14`?", challenge: challenge_variables_and_data_type)
Answer.create!(content: "Integer", is_correct: false, question: question_variables_and_data_types_2)
Answer.create!(content: "Float", is_correct: true, question: question_variables_and_data_types_2)
Answer.create!(content: "String", is_correct: false, question: question_variables_and_data_types_2)

question_variables_and_data_types_3 = Question.create!(content: "How do you check the data type of a variable?", challenge: challenge_variables_and_data_type)
Answer.create!(content: "Using the `typeof` method", is_correct: false, question: question_variables_and_data_types_3)
Answer.create!(content: "Using the `class` method", is_correct: true, question: question_variables_and_data_types_3)
Answer.create!(content: "Using the `type` method", is_correct: false, question: question_variables_and_data_types_3)

question_variables_and_data_types_4 = Question.create!(content: "What is the result of the following expression: `5 + \"2\"`?", challenge: challenge_variables_and_data_type)
Answer.create!(content: "7", is_correct: false, question: question_variables_and_data_types_4)
Answer.create!(content: "\"52\"", is_correct: true, question: question_variables_and_data_types_4)
Answer.create!(content: "An error", is_correct: false, question: question_variables_and_data_types_4)

question_variables_and_data_types_5 = Question.create!(content: "How do you convert a string to an integer?", challenge: challenge_variables_and_data_type)
Answer.create!(content: "Using the `to_i` method", is_correct: true, question: question_variables_and_data_types_5)
Answer.create!(content: "Using the `int` method", is_correct: false, question: question_variables_and_data_types_5)
Answer.create!(content: "Using the `parse_int` method", is_correct: false, question: question_variables_and_data_types_5)

# Challenge 3 manipulation

challenge_string_manipulation = Challenge.create!(title: "String Manipulation", level: 1, order: 3)

question_concatenation = Question.create!(content: "How do you concatenate two strings in Ruby?", challenge: challenge_string_manipulation)
Answer.create!(content: "Using the `+` operator", is_correct: true, question: question_concatenation)
Answer.create!(content: "Using the `join` method", is_correct: false, question: question_concatenation)
Answer.create!(content: "Using the `concat` method", is_correct: false, question: question_concatenation)

question_interpolation = Question.create!(content: "What is string interpolation and how is it used?", challenge: challenge_string_manipulation)
Answer.create!(content: "It's a way to embed expressions within a string.", is_correct: true, question: question_interpolation)
Answer.create!(content: "It's used to create new strings.", is_correct: false, question: question_interpolation)
Answer.create!(content: "It's used to convert strings to integers.", is_correct: false, question: question_interpolation)

question_string_methods = Question.create!(content: "What does the `upcase` method do on a string?", challenge: challenge_string_manipulation)
Answer.create!(content: "Converts all characters to uppercase", is_correct: true, question: question_string_methods)
Answer.create!(content: "Converts all characters to lowercase", is_correct: false, question: question_string_methods)
Answer.create!(content: "Reverses the string", is_correct: false, question: question_string_methods)

question_string_length = Question.create!(content: "How do you find the length of a string in Ruby?", challenge: challenge_string_manipulation)
Answer.create!(content: "Using the `length` method", is_correct: true, question: question_string_length)
Answer.create!(content: "Using the `size` method", is_correct: true, question: question_string_length)
Answer.create!(content: "Both `length` and `size` methods can be used", is_correct: true, question: question_string_length)

question_string_comparison = Question.create!(content: "How do you compare two strings for equality in Ruby?", challenge: challenge_string_manipulation)
Answer.create!(content: "Using the `==` operator", is_correct: true, question: question_string_comparison)
Answer.create!(content: "Using the `===` operator", is_correct: false, question: question_string_comparison)
Answer.create!(content: "Using the `equal?` method", is_correct: false, question: question_string_comparison)

question_string_indexing = Question.create!(content: "How do you access a specific character in a string by its index?", challenge: challenge_string_manipulation)
Answer.create!(content: "Using square brackets `[]`", is_correct: true, question: question_string_indexing)
Answer.create!(content: "Using the `slice` method", is_correct: true, question: question_string_indexing)
Answer.create!(content: "Both `[]` and `slice` methods can be used", is_correct: true, question: question_string_indexing)

question_string_reversal = Question.create!(content: "How do you reverse a string in Ruby?", challenge: challenge_string_manipulation)
Answer.create!(content: "Using the `reverse` method", is_correct: true, question: question_string_reversal)
Answer.create!(content: "Using the `split` and `join` methods", is_correct: false, question: question_string_reversal)
Answer.create!(content: "Using a loop to iterate over the string in reverse order", is_correct: false, question: question_string_reversal)




# LEVEL 2

challenge_control_flow_and_methods = Challenge.create!(title: "Control Flow and Methods", level: 2, order: 1)

# Challenge 1: CONDITIONAL STATEMENTS

question_conditional_statements_1 = Question.create!(content: "What is the correct syntax for an `if-else` statement in Ruby?", challenge: challenge_control_flow_and_methods)
Answer.create!(content: "if condition: do_something", is_correct: false, question: question_conditional_statements_1)
Answer.create!(content: "if condition; do_something; end", is_correct: true, question: question_conditional_statements_1)
Answer.create!(content: "if condition then do_something end", is_correct: false, question: question_conditional_statements_1)

question_conditional_statements_2 = Question.create!(content: "What is the purpose of the `elsif` keyword?", challenge: challenge_control_flow_and_methods)
Answer.create!(content: "To provide an alternative condition to be checked if the first condition is false", is_correct: true, question: question_conditional_statements_2)
Answer.create!(content: "To terminate the `if` statement", is_correct: false, question: question_conditional_statements_2)
Answer.create!(content: "To start a new line of code", is_correct: false, question: question_conditional_statements_2)

question_conditional_statements_3 = Question.create!(content: "What is the result of the following expression: `5 > 3 && 2 < 1`?", challenge: challenge_control_flow_and_methods)
Answer.create!(content: "true", is_correct: false, question: question_conditional_statements_3)
Answer.create!(content: "false", is_correct: true, question: question_conditional_statements_3)
Answer.create!(content: "nil", is_correct: false, question: question_conditional_statements_3)

question_conditional_statements_4 = Question.create!(content: "What is the difference between `==` and `=`?", challenge: challenge_control_flow_and_methods)
Answer.create!(content: "== is used for comparison, while = is used for assignment.", is_correct: true, question: question_conditional_statements_4)
Answer.create!(content: "There is no difference between == and = in Ruby.", is_correct: false, question: question_conditional_statements_4)
Answer.create!(content: "== is used for assignment, while = is used for comparison.", is_correct: false, question: question_conditional_statements_4)

# Challenge 2: DATA STRUCTURES

challenge_data_structures = Challenge.create!(title: "Data Structures", level: 2, order: 2)

question_hash = Question.create!(content: "How do you access a value in a Hash using a key?", challenge: challenge_data_structures)
Answer.create!(content: "hash.key", is_correct: false, question: question_hash)
Answer.create!(content: "hash[key]", is_correct: true, question: question_hash)
Answer.create!(content: "hash.get(key)", is_correct: true, question: question_hash)

question_arrays_1 = Question.create!(content: "How do you remove the last element from an array?", challenge: challenge_data_structures)
Answer.create!(content: "array.pop", is_correct: true, question: question_arrays_1)
Answer.create!(content: "array.delete_at(-1)", is_correct: true, question: question_arrays_1)
Answer.create!(content: "array.shift", is_correct: false, question: question_arrays_1)

question_stacks_1 = Question.create!(content: "How do you check if a stack is empty?", challenge: challenge_data_structures)
Answer.create!(content: "stack.empty?", is_correct: true, question: question_stacks_1)
Answer.create!(content: "stack.length == 0", is_correct: true, question: question_stacks_1)
Answer.create!(content: "stack.nil?", is_correct: false, question: question_stacks_1)

question_linked_lists_1 = Question.create!(content: "What is the time complexity of inserting an element at the beginning of a singly linked list?", challenge: challenge_data_structures)
Answer.create!(content: "O(1)", is_correct: true, question: question_linked_lists_1)
Answer.create!(content: "O(n)", is_correct: false, question: question_linked_lists_1)
Answer.create!(content: "O(log n)", is_correct: false, question: question_linked_lists_1)

question_trees_1 = Question.create!(content: "What is the difference between a binary search tree and a binary tree?", challenge: challenge_data_structures)
Answer.create!(content: "In a binary search tree, the left child is always less than the parent, and the right child is always greater than the parent.", is_correct: true, question: question_trees_1)
Answer.create!(content: "A binary tree can have any number of children, while a binary search tree can only have two.", is_correct: false, question: question_trees_1)
Answer.create!(content: "There is no difference between a binary search tree and a binary tree.", is_correct: false, question: question_trees_1)

# Challenge 3 

challenge_control_flow = Challenge.create!(title: "Control Flow", level: 2, order: 3)

question_conditionals = Question.create!(content: "What is the purpose of the `elsif` keyword?", challenge: challenge_control_flow)
Answer.create!(content: "To provide an alternative condition to be checked if the first condition is false", is_correct: true, question: question_conditionals)
Answer.create!(content: "To terminate an `if` statement", is_correct: false, question: question_conditionals)
Answer.create!(content: "To start a new line of code", is_correct: false, question: question_conditionals)

question_loops = Question.create!(content: "What is the difference between a `while` loop and a `for` loop?", challenge: challenge_control_flow)
Answer.create!(content: "A `while` loop continues as long as a condition is true, while a `for` loop iterates over a specific range or collection.", is_correct: true, question: question_loops)
Answer.create!(content: "A `while` loop is more efficient than a `for` loop.", is_correct: false, question: question_loops)
Answer.create!(content: "There is no difference between a `while` loop and a `for` loop.", is_correct: false, question: question_loops)

question_case_statements = Question.create!(content: "What is the purpose of the `when` keyword in a `case` statement?", challenge: challenge_control_flow)
Answer.create!(content: "To specify a condition to be checked against the case expression", is_correct: true, question: question_case_statements)
Answer.create!(content: "To define a new case in the statement", is_correct: false, question: question_case_statements)
Answer.create!(content: "To break out of the `case` statement", is_correct: false, question: question_case_statements)

question_ternary_operator = Question.create!(content: "What is the purpose of the ternary operator (`? :`) in Ruby?", challenge: challenge_control_flow)
Answer.create!(content: "To provide a concise way to write conditional expressions", is_correct: true, question: question_ternary_operator)
Answer.create!(content: "To define a new method", is_correct: false, question: question_ternary_operator)
Answer.create!(content: "To create a new object", is_correct: false, question: question_ternary_operator)

question_exception_handling = Question.create!(content: "What is the purpose of the `begin`, `rescue`, `ensure`, and `else` blocks in Ruby?", challenge: challenge_control_flow)
Answer.create!(content: "To handle exceptions that may occur during code execution", is_correct: true, question: question_exception_handling)
Answer.create!(content: "To define a new method", is_correct: false, question: question_exception_handling)
Answer.create!(content: "To create a new object", is_correct: false, question: question_exception_handling)

question_short_circuit_evaluation = Question.create!(content: "What is short-circuit evaluation in Ruby, and how does it work?", challenge: challenge_control_flow)
Answer.create!(content: "It's a technique where Ruby stops evaluating an expression as soon as the result is determined. For example, in `true || false`, Ruby doesn't evaluate `false` because `true` is already truthy.", is_correct: true, question: question_short_circuit_evaluation)
Answer.create!(content: "It's a type of loop that executes until a condition is met.", is_correct: false, question: question_short_circuit_evaluation)
Answer.create!(content: "It's a way to define multiple conditions in a single expression.", is_correct: false, question: question_short_circuit_evaluation)

question_break_next = Question.create!(content: "What is the difference between the `break` and `next` statements in Ruby?", challenge: challenge_control_flow)
Answer.create!(content: "`break` terminates the entire loop, while `next` skips the current iteration and moves to the next one.", is_correct: true, question: question_break_next)
Answer.create!(content: "`break` is used for conditional statements, while `next` is used for loops.", is_correct: false, question: question_break_next)
Answer.create!(content: "There is no difference between `break` and `next`.", is_correct: false, question: question_break_next)

# LEVEL 3

challenge_advanced_ruby_concepts = Challenge.create!(title: "Advanced Ruby Concepts", level: 3, order: 1)

# Challenge 1 
question_metaprogramming = Question.create!(content: "What is the purpose of the `method_missing` method?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "To define a default behavior for methods that are not defined on an object", is_correct: true, question: question_metaprogramming)
Answer.create!(content: "To call a method on another object", is_correct: false, question: question_metaprogramming)
Answer.create!(content: "To create a new method", is_correct: false, question: question_metaprogramming)

question_singleton_methods = Question.create!(content: "How do you define a singleton method on an object?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "object.define_singleton_method(:method_name) { ... }", is_correct: true, question: question_singleton_methods)
Answer.create!(content: "class << object; def method_name; ...; end; end", is_correct: true, question: question_singleton_methods)
Answer.create!(content: "object.method_missing(:method_name) { ... }", is_correct: false, question: question_singleton_methods)

question_reflection = Question.create!(content: "How do you get a list of all methods defined on a class?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "class.methods", is_correct: true, question: question_reflection)
Answer.create!(content: "class.instance_methods", is_correct: false, question: question_reflection)
Answer.create!(content: "class.constants", is_correct: false, question: question_reflection)

question_modules = Question.create!(content: "What is the difference between a class and a module?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "Classes can be instantiated into objects, while modules cannot.", is_correct: true, question: question_modules)
Answer.create!(content: "Modules can be included in multiple classes, while classes can only be inherited from.", is_correct: true, question: question_modules)
Answer.create!(content: "There is no difference between classes and modules.", is_correct: false, question: question_modules)

question_metaprogramming = Question.create!(content: "What is the purpose of the `method_missing` method?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "To define a default behavior for methods that are not defined on an object", is_correct: true, question: question_metaprogramming)
Answer.create!(content: "To call a method on another object", is_correct: false, question: question_metaprogramming)
Answer.create!(content: "To create a new method", is_correct: false, question: question_metaprogramming)

question_singleton_methods = Question.create!(content: "How do you define a singleton method on an object?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "object.define_singleton_method(:method_name) { ... }", is_correct: true, question: question_singleton_methods)
Answer.create!(content: "class << object; def method_name; ...; end; end", is_correct: true, question: question_singleton_methods)
Answer.create!(content: "object.method_missing(:method_name) { ... }", is_correct: false, question: question_singleton_methods)

question_reflection = Question.create!(content: "How do you get a list of all methods defined on a class?", challenge: challenge_advanced_ruby_concepts)
Answer.create!(content: "class.methods", is_correct: true, question: question_reflection)
Answer.create!(content: "class.instance_methods", is_correct: false, question: question_reflection)
Answer.create!(content: "class.constants", is_correct: false, question: question_reflection)

# Challenge 2

challenge_testing_and_debugging = Challenge.create!(title: "Testing and Debugging", level: 3, order: 2)

question_tdd = Question.create!(content: "What is the core principle of TDD, and how does it help in writing better code?", challenge: challenge_testing_and_debugging)
Answer.create!(content: "Write a failing test first, then write the code to make it pass. This approach helps ensure code correctness and maintainability.", is_correct: true, question: question_tdd)
Answer.create!(content: "Write all tests before writing any code.", is_correct: false, question: question_tdd)
Answer.create!(content: "Write tests after writing the code to verify its correctness.", is_correct: false, question: question_tdd)

question_debugging = Question.create!(content: "What is the purpose of a debugger, and how can it be used to identify and fix bugs in Ruby code?", challenge: challenge_testing_and_debugging)
Answer.create!(content: "A debugger is a tool that allows you to step through your code line by line, inspect variables, and set breakpoints.", is_correct: true, question: question_debugging)
Answer.create!(content: "A debugger is used to write tests for your code.", is_correct: false, question: question_debugging)
Answer.create!(content: "A debugger is only useful for finding syntax errors.", is_correct: false, question: question_debugging)

question_code_coverage = Question.create!(content: "What is code coverage, and why is it important?", challenge: challenge_testing_and_debugging)
Answer.create!(content: "Code coverage measures the percentage of your code that is executed by your tests. It helps identify untested areas that may contain bugs.", is_correct: true, question: question_code_coverage)
Answer.create!(content: "Code coverage is a measure of how well your code is written.", is_correct: false, question: question_code_coverage)
Answer.create!(content: "Code coverage is only useful for large projects.", is_correct: false, question: question_code_coverage)

question_mocking_and_stubbing = Question.create!(content: "What are mocking and stubbing, and how are they used in testing?", challenge: challenge_testing_and_debugging)
Answer.create!(content: "Mocking and stubbing are techniques used to replace dependencies with controlled objects for testing purposes. This isolates the code under test and makes testing easier.", is_correct: true, question: question_mocking_and_stubbing)
Answer.create!(content: "Mocking and stubbing are used to write better code.", is_correct: false, question: question_mocking_and_stubbing)
Answer.create!(content: "Mocking and stubbing are only useful for unit testing.", is_correct: false, question: question_mocking_and_stubbing)

question_profiling = Question.create!(content: "What is profiling, and how can it be used to optimize Ruby code?", challenge: challenge_testing_and_debugging)
Answer.create!(content: "Profiling is a technique used to measure the performance of your code and identify bottlenecks.", is_correct: true, question: question_profiling)
Answer.create!(content: "Profiling is only useful for large projects.", is_correct: false, question: question_profiling)
Answer.create!(content: "Profiling is used to write tests for your code.", is_correct: false, question: question_profiling)

# Challenge 3

challenge_string_manipulation = Challenge.create!(title: "String Manipulation", level: 3, order: 3)

question_regular_expressions_advanced = Question.create!(content: "What is the purpose of the `\\A` and `\\z` anchors in a regular expression?", challenge: challenge_string_manipulation)
Answer.create!(content: "To match the beginning and end of a string, respectively.", is_correct: true, question: question_regular_expressions_advanced)
Answer.create!(content: "To match any character.", is_correct: false, question: question_regular_expressions_advanced)
Answer.create!(content: "To match a word boundary.", is_correct: false, question: question_regular_expressions_advanced)

question_interpolation_methods = Question.create!(content: "How can you call a method within a string interpolation expression?", challenge: challenge_string_manipulation)
Answer.create!(content: "Enclose the method call in parentheses.", is_correct: true, question: question_interpolation_methods)
Answer.create!(content: "Use the `#{}` syntax.", is_correct: true, question: question_interpolation_methods)
Answer.create!(content: "Both options are correct.", is_correct: true, question: question_interpolation_methods)

question_string_encoding = Question.create!(content: "What is UTF-8, and why is it commonly used for strings in Ruby?", challenge: challenge_string_manipulation)
Answer.create!(content: "UTF-8 is a variable-width character encoding that can represent characters from almost all languages.", is_correct: true, question: question_string_encoding)
Answer.create!(content: "UTF-8 is only used for English characters.", is_correct: false, question: question_string_encoding)
Answer.create!(content: "UTF-8 is a fixed-width character encoding.", is_correct: false, question: question_string_encoding)

question_regular_expressions_grouping = Question.create!(content: "How do you group parts of a regular expression and capture the matched groups?", challenge: challenge_string_manipulation)
Answer.create!(content: "Use parentheses `()` to group parts of the expression and access the captured groups using the `MatchData` object.", is_correct: true, question: question_regular_expressions_grouping)
Answer.create!(content: "Use the `split` method to split the string based on a regular expression.", is_correct: false, question: question_regular_expressions_grouping)
Answer.create!(content: "There is no way to group parts of a regular expression.", is_correct: false, question: question_regular_expressions_grouping)

question_interpolation_variables = Question.create!(content: "How can you interpolate variables within a string using double quotes?", challenge: challenge_string_manipulation)
Answer.create!(content: "Use the `#{}` syntax.", is_correct: true, question: question_interpolation_variables)
Answer.create!(content: "Use the `+` operator to concatenate the variables and the string.", is_correct: false, question: question_interpolation_variables)
Answer.create!(content: "Use the `format` method.", is_correct: false, question: question_interpolation_variables)

question_string_case_conversion = Question.create!(content: "How can you convert all characters in a string to lowercase, regardless of the current locale?", challenge: challenge_string_manipulation)
Answer.create!(content: "Use the `downcase` method.", is_correct: true, question: question_string_case_conversion)
Answer.create!(content: "Use the `downcase!` method.", is_correct: false, question: question_string_case_conversion)
Answer.create!(content: "Use the `gsub` method with the regular expression `/[A-Z]/` and the substitution `\L&`.", is_correct: false, question: question_string_case_conversion)

puts "Challenges created"




