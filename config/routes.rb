Rails.application.routes.draw do

  devise_for :nusers
  scope({path: 'api'}) {
    resources(:shows)
  }

end
