# Array representing the group of cats. ** Clowder is a group of cats. **
clowder = []
puts "How many cats in your clowder?"
cats = gets.chomp.to_i

if cats > 0
  # Make passes by the cats specified by their amount. Each one position further.
  # Pass 0 creates the array.
  pass = 0
  while pass <= cats
    # Create array with cats with hats on .
    if pass == 0
      init_pos = 0
      while init_pos < cats
        clowder.push "1"
        init_pos += 1
      end
    # Start cat hat manipulation.
    # Verify each position in the group of cats.
    else
      cat_position = 0
      while cat_position < cats
        if ((cat_position + 1) % pass == 0) # Divisible by the "passing" number with modulo operator.
          if clowder[cat_position] == "1"
            clowder[cat_position] = "0"    # Remove the hat of the cat at this position.
          else
            clowder[cat_position] = "1"     # Put a hat on the cat at this position.
          end
        end
        cat_position += 1                   # Next cat in the clowder.
      end
    end
    pass += 1                               # Next pass.
  end
  puts "Cats with hats have a '1'; Cats with no hats have a '0':"
  p clowder
else
  puts "Not a valid amount of cats."
end
