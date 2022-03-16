#!/usr/bin/env ruby 

# ***** 12 to 24 *****
# Créez un programme qui transforme une heure affichée en format 12h en une heure affichée en format 24h.

if (ARGV.length >= 2) || (ARGV.length < 1)
    puts "erreur."
    exit
end

if (ARGV[0][2] != ":") || (ARGV[0][2] == ":" && ARGV[0][3] == nil)
    puts "erreur. Affiche les ':' et 2 chiffres après.\n ex:01:00AM"
    exit
elsif (ARGV[0][0] >= "3") || (ARGV[0][3] >= "6")
    puts "erreur. Affiche une heure correct en format 12h \n exemple: 06:00PM"
    exit
elsif (ARGV[0][3] == nil) || (ARGV[0][4] == nil)
    puts "erreur. Affiche une heure correct en format 12h \n exemple: 07:22AM"
    exit
elsif ((ARGV[0][0] >= "2") & (ARGV[0][5] == "P")) 
    puts "erreur. 13:00PM et plus n'existe pas"
    exit
elsif ((ARGV[0][1] >= "3") & ((ARGV[0][5] == "P") || ARGV[0][5] == "A"))
    puts "erreur."
    exit
elsif (ARGV[0][6] != "M")
    puts "erreur de format."
    exit
elsif (ARGV[0][5] != "A") && (ARGV[0][5] != "P") 
    puts "erreur de format."
    exit
end

hours_minutes = ARGV[0].split(':')
hour_12 = hours_minutes[0].to_i + 12

if (hour_12 == 24) & (ARGV[0][5] == "A")
    hour_12 = "00"
elsif (hour_12 == 24) & (ARGV[0][5] == "P")
    hour_12 = "12"
elsif ARGV[0][5] == "A"
    hour_12 = hours_minutes[0].to_i
elsif ARGV[0][5] == "P"
    hour_12 = hours_minutes[0].to_i + 12
end

puts "#{hour_12}:#{hours_minutes[1]}".delete('PM, AM')