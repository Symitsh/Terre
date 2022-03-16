#!/usr/bin/env ruby 

# ***** Inverser une chaîne *****
# Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.

# En utilisant la methode .reverse! :
# str1 = ARGV.to_s.tr('()[]"“', '')
# puts str1.reverse!

if (ARGV.length < 1)
    puts "Requires minimum one argument. \nFor example: #{__FILE__} Hello world!"
    exit
end

str1 = ARGV.to_s.tr('()[],"“', '')
newstr = ''

i = 1
for i in 1..str1.length
    newstr += str1[str1.length - i]
end
puts newstr