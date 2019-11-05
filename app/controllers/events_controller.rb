class EventsController < ApplicationController

  # Méthode qui va afficher tous les événements
	def index
		# On récupère tous les événements dans la variable @events_array pour l'utiliser dans la view 'index.html.erb'
		@events_array = Event.all

	end

  # Méthode qui va afficher la page pour pouvoir créer un nouvel événement
	def new

	end
end
