require_relative 'gossip'


class ApplicationController < Sinatra::Base #ici on lie la classe au sinatra donc on va afficher ce qu'il y a dans celle ci sur le site web, on hérite de toute les fonctionnalitées basiques de Sinatra grâce a Base

  get '/' do #dit a l'appli d'executer le code HTML ci dessous si l'utilisateur se rend sur l'URL
		erb :index, locals: {gossips: Gossip.all}
	end

	get '/gossips/new/' do 
		erb :new_gossip
	end

  post '/gossips/new/' do 

  	    Gossip.new(params["gossip_author"],params["gossip_content"]).save
  	   redirect '/'
  	end 

end

	#run! if app_file == $0 -> elle permet d'executer le code sans avoir a faire un perform