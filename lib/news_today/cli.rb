class NewsToday::CLI

  def call
    puts "Welcome to News Today! Pick a news source to view the top headlines from that network."
    list_networks #list the networks to pick from
  end

  def list_networks
    puts <<-DOC
      1. NBC
      2. CNN
      3. FOX
      4. ABC
      5. MSN
      6. NPR
      DOC
  end

end
