class ReviewsController < ApplicationController

  before_action :set_restaurant, only: %i[new create]

  def new
    # je dois identifier un restaurant avec son ID (integer) avant de créer un review.
    # Donc je code ma metho set_restau(en bas) qui me permet de trouver mon restaurant :{"restaurant_id"=>"7"}
    @review = Review.new
    # coquille vide que mon forme va proposer à l'utilisateur, à remplir
  end

  def create
    # identifier un restaurant pour pouvoir le lier à la review
    # créer une review en utilisant params(valeurs récu)
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # save the review
    if @review.save
    # si c'est save, je vais vers restaurant show
      redirect_to restaurant_path(@restaurant)
    else
    # si c'est pas save, je renvoie l'erreur de formulaire unprecessable entity
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
