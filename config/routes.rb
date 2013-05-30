Marysia::Application.routes.draw do

  root to: 'home#start'

  match 'start', to: 'home#start'
  match 'co', to: 'home#co'
  match 'gdzie', to: 'home#gdzie'
  match 'goscie', to: 'home#goscie'
  match 'jajecznica', to: 'home#jajecznica'

end
