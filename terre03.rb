#!/usr/bin/env ruby

# ***** L’alphabet à partir de *****
# Créez un programme qui affiche l’alphabet à partir de la lettre donnée en
# argument en lettres minuscules suivi d’un retour à la ligne.

# Attention : votre programme devra utiliser une boucle.

if (ARGV.length > 1)
    puts "#{__FILE__} requires one argument. For example: #{__FILE__} c"
    exit
end

lettre_donne = ARGV[0]

alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

for i in 0..(alphabet.length)
    if alphabet[i] == lettre_donne
        index = i + 1
    end
end

for i in index..(alphabet.length)
    print alphabet[i-1]
end

puts ""