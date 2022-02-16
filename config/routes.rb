Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # user can see all restos
  get "restaurants", to: "restaurants#index"

  # user can add a new resto
  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  # and be redirected to the show view of that new restaurant. (resto has no reviews yet.)
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  get "restaurants/:restaurants_id/reviews", to: "reviews#index"

  # A visitor can add a new review to a restaurant
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end
