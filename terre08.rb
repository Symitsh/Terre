#!/usr/bin/env ruby 

# ***** Puissance d’un nombre *****
# Créez un programme qui affiche le résultat d’une puissance.
# L’exposant ne pourra pas être négatif.

if /\D/.match(ARGV[0]) || /\D/.match(ARGV[1])
    puts "erreur."
    exit
elsif (ARGV.length >= 3) || (ARGV.length <= 1)
    puts "erreur."
    exit
end

number1 = ARGV[0].to_i
number2 = ARGV[1].to_i

puts number1**number2