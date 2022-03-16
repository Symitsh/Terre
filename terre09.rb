#!/usr/bin/env ruby 

# ***** Racine carrée d’un nombre ******
# Créez un programme qui affiche la racine carrée d’un entier positif.

if /\D/.match(ARGV[0]) || /\D/.match(ARGV[1])
    puts "erreur."
    exit
elsif (ARGV.length >= 2) || (ARGV.length < 1)
    puts "erreur."
    exit
end

puts Math.sqrt(ARGV[0].to_i).round
