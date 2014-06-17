Rails.application.routes.draw do

  # Only allow managing Mango Handcart from the master "end"
  constraints(subdomain: /master/) do
    mount MangoHandcart::Engine => "/mango_handcart"

    scope module: 'master' do
      resources :companies
      match '/', to: 'companies#index', via: [:get], as: :master_root
    end
  end

  # The default domain constraint configures what should match
  # when all the other routes fail to match other namespaces
  constraints MangoHandcart::DomainConstraint.default_constraint do
    root to: 'public#index'
  end

end
