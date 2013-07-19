require 'omniauth'
require 'omniauth-twitter'
require 'omniauth-facebook'
module MyEngine
  class Engine < ::Rails::Engine
    isolate_namespace MyEngine
  end
end
