#!/usr/bin/env ruby 

# ***** Divisions *****
# Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.

if /\D/.match(ARGV[0]) 
    puts "Tu ne me la mettras pas à l'envers"
    exit
elsif (ARGV.length >= 3) || (ARGV.length <= 1)
    puts "Tu ne me la mettras pas à l'envers"
    exit
end

numer = ARGV[0].to_i
denom = ARGV[1].to_i 

résultat = numer / denom rescue 0
reste = numer % denom rescue 0

if résultat == 0
    puts "erreur."
    exit
end

puts "résultat: #{résultat}"
puts "reste: #{reste}"