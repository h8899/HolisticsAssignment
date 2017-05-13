Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'process#index'
  get 'string_process/set_string' => 'string_process#set_string'
  get 'string_process/get_string' => 'string_process#get_string'
  get 'list_process/length' => 'list_process#length'
  get 'list_process/push' => 'list_process#push'
  get 'list_process/left_pop' => 'list_process#left_pop'
  get 'list_process/right_pop' => 'list_process#right_pop'
  get 'list_process/range' => 'list_process#range'
end
