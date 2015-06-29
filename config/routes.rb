Rails.application.routes.draw do
  resources :composite_images, only: :show
end

# == Route Map
#
#          Prefix Verb URI Pattern                     Controller#Action
# composite_image GET  /composite_images/:id(.:format) composite_images#show
#            page GET  /pages/*id                      high_voltage/pages#show
#
