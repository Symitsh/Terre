#!/usr/bin/env ruby 

# ***** Trié ou pas *****
# Créez un programme qui détermine si une liste d’entiers est triée ou pas.

# TODO: si plus de 4 arguments dire erreur max 4.
# TODO: si 0 donné en argument erreur.

if /\D/.match(ARGV[0]) || /\D/.match(ARGV[1]) || /\D/.match(ARGV[2])
    puts "erreur. Exemple : #{__FILE__} 11 40 34"
    exit
elsif (ARGV.length >= 5)
    puts "erreur. Exemple : #{__FILE__} 34 11 40 32 \n Maximum 4 arguments"
    exit
elsif (ARGV.length <= 1)
    puts "erreur. Exemple : #{__FILE__} 34 11 40 \n Minimum 2 arguments"
    exit
end

a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
d = ARGV[3].to_i
tableaux = [a, b, c, d].sort

if tableaux[0] == 0
    tableaux.delete(0)
end

if (a == tableaux[0].to_i) && (b == tableaux[1].to_i) && 
    (c == tableaux[2].to_i) && (d == tableaux[3].to_i)
    puts "Triée !"
else
    puts "Pas triée !"
end