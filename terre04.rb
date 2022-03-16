#!/usr/bin/env ruby

# ***** Pair ou impair *****
# Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair..
# Attention : gérez aussi les entiers négatifs.

# \D = Any non-digit (expression régulière de Ruby)
if /\D/.match(ARGV[0]) 
    puts "Tu ne me la mettras pas à l'envers"
    exit
elsif (ARGV.length > 1) || (ARGV.length < 1)
    puts "Tu ne me la mettras pas à l'envers"
    exit
end

number = ARGV[0].to_i

if (number.even?)
    puts "pair"
else
    puts "impair"
end