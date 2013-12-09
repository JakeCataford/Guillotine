Rails.application.routes.draw do

  mount Guillotine::Engine => "/guillotine"
end
