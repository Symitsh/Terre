#!/usr/bin/env ruby 

# ***** Trouver la Suisse (lol) *****
# Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.

# TODO : géré les nombres à virgule
if /\D/.match(ARGV[0]) || /\D/.match(ARGV[1]) || /\D/.match(ARGV[2])
    puts "erreur. Exemple : #{__FILE__} 11 40 34"
    exit
elsif (ARGV.length != 3)
    puts "erreur. Exemple : #{__FILE__} 34 11 40"
    exit
elsif (ARGV[0] == ARGV[1]) || (ARGV[0] == ARGV[2]) || (ARGV[1] == ARGV[2])
    p "erreur. Requires 2 different arguments. Exemple : #{__FILE__} 34 11 40"
    exit
end

a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
tableaux = [a, b, c].sort
puts tableaux[1]