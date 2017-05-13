Rails.application.routes.draw do
  get 'set/_process'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'process#index'
  get 'string_process/set_string' => 'string_process#set_string'
  get 'string_process/get_string' => 'string_process#get_string'
  get 'list_process/length' => 'list_process#length'
  get 'list_process/push' => 'list_process#push'
  get 'list_process/left_pop' => 'list_process#left_pop'
  get 'list_process/right_pop' => 'list_process#right_pop'
  get 'list_process/range' => 'list_process#range'
  get 'set_process/add' => 'set_process#add'
  get 'set_process/card' => 'set_process#card'
  get 'set_process/members' => 'set_process#members'
  get 'set_process/remove' => 'set_process#remove'
  get 'set_process/intersect' => 'set_process#intersect'
  get 'expire_process/key' => 'expire_process#key'
  get 'expire_process/delete' => 'expire_process#delete'
  get 'expire_process/flush' => 'expire_process#flush'
end
