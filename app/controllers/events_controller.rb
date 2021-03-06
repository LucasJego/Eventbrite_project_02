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

  # Méthode qui va créer le nouvel événement à partir du formulaire de 'new.html.erb' soumis par l'utilisateur
  # Le contenu de ce formulaire est accessible via le hash 'params'
  # A la création, l'utilisateur est redirigé vers la page 'show' de l'événement
  def create
  	puts 'a' *60
  	puts params
  	puts 's'*68
  	@event = Event.new(start_date: params[:start_date], duration: params[:duration], title: params[:title], description: params[:description], price: params[:price], location: params[:location], administrator_id: current_user.id)

    # Si l'événement a pu être sauvegardé dans la BDD, i.e. si @event.save est true
  	if @event.save
      flash[:success] = "Ton Evenement a été créé !"
      redirect_to events_path
    # Sinon
    else
      flash.now[:danger] = "Ton evenement n'a pas été créé"
      render :new
    end

  	#redirect_to 
  end
end
