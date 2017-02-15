Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :books
  end
  # get 'welcome/index'
  root 'welcome#index'
# Prefix Verb   URI Pattern                              Controller#Action
#   user_books GET    /users/:user_id/books(.:format)          books#index
#              POST   /users/:user_id/books(.:format)          books#create
# new_user_book GET    /users/:user_id/books/new(.:format)      books#new
# edit_user_book GET    /users/:user_id/books/:id/edit(.:format) books#edit
#    user_book GET    /users/:user_id/books/:id(.:format)      books#show
#              PATCH  /users/:user_id/books/:id(.:format)      books#update
#              PUT    /users/:user_id/books/:id(.:format)      books#update
#              DELETE /users/:user_id/books/:id(.:format)      books#destroy
#        users GET    /users(.:format)                         users#index
#              POST   /users(.:format)                         users#create
#     new_user GET    /users/new(.:format)                     users#new
#    edit_user GET    /users/:id/edit(.:format)                users#edit
#         user GET    /users/:id(.:format)                     users#show
#              PATCH  /users/:id(.:format)                     users#update
#              PUT    /users/:id(.:format)                     users#update
#              DELETE /users/:id(.:format)                     users#destroy
#         root GET    /                                        welcome#index      books#destroy
end
