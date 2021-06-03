# Get My Number Game
# Author: Desire kaleba

puts "Welcome to 'Get My Number!'"

# Get the player's name, and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess.
target = rand(100) + 1

# Track how many guesses the player has made.
num_guesses = 0

# Track whether the player has guessed correctly
has_guessed_it = false

puts "I've got a random number between 1 and 100 inclusive."
puts "Can you guess it?"

until num_guesses == 10 || has_guessed_it
    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    # Compare the guess to the target.
    # Print the appropriate message
    if guess < target
        puts "Oops. Your guess was LOW."
    elsif guess > target
        puts "Oops. Your guess was HIGH."
    else
        puts "Good job, #{name}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        has_guessed_it = true
    end

    # Increment the num_guesses
    num_guesses += 1
end

# If player didn't guess in time, show the target number.
unless has_guessed_it
    puts "sorry. You didn't get my number. (It was #{target}.)"
end
