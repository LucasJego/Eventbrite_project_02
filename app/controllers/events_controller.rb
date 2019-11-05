class EventsController < ApplicationController

  # Méthode qui va permettre d'afficher tous les événements en redirigeant vers la page d'URL '/'
	def index
		# On récupère tous les événements dans la variable @events_array pour l'utiliser dans la view 'index.html.erb'
		@events_array = Event.all

	end

  # Méthode qui va permettre d'afficher la page pour pouvoir créer un nouvel événement en redirigeant vers la page d'URL '/event/new'
	def new

	end

  # Méthode qui va servir à afficher un événement en particulier en redirigeant vers la page d'URL '/event/id'
	def show
    @event = Event.find(params[:id])
	end

  #
  def create
  	@city = ['Ouagadougou', 'Montpellier']
  	puts '-'*60
  	puts @city
  	puts '*' * 60
  	puts params
  end
end
