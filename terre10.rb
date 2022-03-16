#!/usr/bin/env ruby 

# ***** Nombre premier *****
# Créez un programme qui affiche si un nombre est premier ou pas.

number = ARGV[0].to_i

if /\D/.match(ARGV[0]) || /\D/.match(ARGV[1])
    puts "erreur."
    exit
elsif (ARGV.length >= 2) || (ARGV.length < 1)
    puts "erreur."
    exit
elsif (number == 0) || (number == 1)
    puts "Non, #{number} n’est pas un nombre premier."
    exit
end

is_prime = true
for i in 2..number-1
    if number % i == 0
    is_prime = false
    end
end

if is_prime == true
    puts "Oui, #{number} est un nombre premier."
else
    puts "Non, #{number} n’est pas un nombre premier."
end