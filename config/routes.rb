Rails.application.routes.draw do
  # resourcesメソッド導入！！！！！
  resources :lists
  # よって、以下をコメントアウト！！！！！
  # get 'lists/new'
  # post 'lists' => 'lists#create'
  
  # get 'lists' => 'lists#index',as:'indexname'
  
  # get 'lists/:id' => 'lists#show',as:'showname'
  
  # get 'lists/:id/edit' => 'lists#edit' ,as:'editname'
  # patch 'lists/:id' => 'lists#update',as:'updatename'
  
  # delete 'lists/:id' => 'lists#destroy',as:'destroyname'
  
  # get 'top' => 'homes#top'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
