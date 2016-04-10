# Silly passion project: Hangman ASCII image
top = [
"\n***************************************************************",
'*********                   HANGMAN                   *********',
'***************************************************************'
]
board = [
'*                                                             *',
'*                 ----------                                  *',
'*                 |         |                                 *',
'*                 |         |                                 *',
'*                 |         O                                 *',
'*                 |        /|\\                                *',
'*                 |       / | \\                               *',
'*                 |         |                                 *',
'*                 |        / \\                                *',
'*                 |       /   \\                               *',
'*                 |                                           *',
'*      -----------|----------------------                     *',
'*      |                                |                     *',
'*      |                                --------              *',
'*      |                                        |             *',
'*      -------------------------------------------------      *',
'*                                                             *'
]

bottom = [
'*                                                             *',
'***************************************************************'
]

# Prints blank spaces for letters not guessed,
# reveals location of letters guessed
def print_letters(word, guessed)
  word.each_char do |char|
    if guessed.include?(char)
      print " _#{char.upcase}_"
    else print ' ___'
    end
  end
end

puts top
puts "* WHAT'S THE WORD?                                            * "
print '*  >> '
word = gets.chomp

puts '* WHICH LETTERS HAVE ALREADY BEEN GUESSED?                    *'
puts '* (Seperate with Commas)                                      * '
print '*  >> '
guessed = gets.chomp.split(',')

puts board
print '*     '
print_letters(word, guessed)
puts "\n"
puts bottom
