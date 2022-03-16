#!/usr/bin/env ruby 

# ***** Taille d’une chaîne *****
# Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.

if (ARGV.length == 0) || (ARGV.length > 1)
    puts "erreur."
    exit
elsif (/\d/.match(ARGV[0]))
    puts "erreur."
    exit
end

str1 = ARGV[0].length

puts str1