xml.channel do
  # Required to pass W3C validation.
  xml.atom :link, nil, {
    :href => recipes_url(:format => 'rss'),
    :rel => 'self', :type => 'application/rss+xml'
  }
  
  # Feed basics.
  xml.title             "Meine Rezepte"
  xml.description       "Rezeptsammlung"
  xml.link              recipes_url(:format => 'rss')
  
  # Posts.
  @recipes.each do |r|
    xml.item do
      xml.title         r.name
      xml.link          recipe_url(r)
      xml.pubDate       r.created_at.to_s(:rfc822)
      xml.guid          recipe_url(r)
    end
  end
end