#ce fichier contient les infos nécessairent au lancement du serveur
#un fichier .ru est un fichier rack up, qui appartient a Ruby

require 'bundler' #ces deux lignes permettent de lire les différents Gem dans le fichier gemfile
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Controller'

run ApplicationController