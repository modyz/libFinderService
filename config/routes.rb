Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/gems" => "gemies#create"
  get "/latest_gems" =>"gemies#recent_gems"
  post "/find_dependencies" => "gemies#find_dependencies"
  get "/operating_systems" => "operating_systems#index"
end
