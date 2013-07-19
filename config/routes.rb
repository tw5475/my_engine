MyEngine::Engine.routes.draw do
   root :to=>'auth#index'
   match 'facebook/callback' => 'auth#callback' , :via => 'get'
end
