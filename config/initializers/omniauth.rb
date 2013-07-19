providers = %w(twitter facebook).inject([]) do |providers, provider|
  fpath = Rails.root.join('config', "#{provider}.yml")
 
  if File.exists?(fpath)
    config = YAML.load_file(fpath)
    #providers << [ provider, '142587319096346', '6e715caf611fa2d640eb764cf9e49c6c' ]
    providers << [ provider, config['consumer_key'].to_s , config['consumer_secret'] ]
  end
 
  providers
end
 
raise 'You have not created config/twitter.yml or config/facebook.yml' if providers.empty?
 
Rails.application.config.middleware.use OmniAuth::Builder do
  providers.each do |p|
    provider *p
  end
end
