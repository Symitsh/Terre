#!/usr/bin/env ruby 

# ***** 24 to 12 *****
# Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.

if (ARGV.length >= 2) || (ARGV.length < 1)
  puts "erreur."
  exit
end

if (ARGV[0][2] != ":") || (ARGV[0][2] == ":" && ARGV[0][3] == nil)
  puts "erreur. Affiche les ':' et 2 chiffres après.\n ex: 12:00"
  exit
elsif (ARGV[0][0] >= "3") || (ARGV[0][3] >= "6")
  puts "erreur. Affiche une heure correct en format 24:00"
  exit
elsif (ARGV[0][3] == nil) || (ARGV[0][4] == nil)
  puts "erreur. Affiche une heure correct en format 24:00"
  exit
elsif (ARGV[0][5] != nil)
  puts "erreur.."
  exit
end

hours_minutes = ARGV[0].split(':')
hour_12 = hours_minutes[0].to_i - 12

if hour_12 == 0
  hour_12 = "12"
  am_pm = "PM"
elsif hour_12 == -12
  hour_12 = "12"
  am_pm = "AM"
elsif hour_12 > 0
  am_pm = "PM"
elsif hour_12 < 0
  hour_12 += 12
  am_pm = "AM"
end

puts "#{hour_12}:#{hours_minutes[1]}#{am_pm}"