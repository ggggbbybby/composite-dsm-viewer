Rails.application.routes.draw do
  resources :composite_images, only: :show
end
