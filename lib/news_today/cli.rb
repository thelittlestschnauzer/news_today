class NewsToday::CLI

  def call
    list_networks #list the networks to pick from
    #list_top_stories
  end

  def list_networks
    puts "Welcome to News Today! Pick a news source to view the top headlines from that network."
    puts <<-DOC
      1. NBC
      2. CNN
      3. FOX
      4. ABC
      5. MSN
      6. NPR
      DOC
      list_top_stories
  end

  def list_top_stories
    puts "Enter the number to see the stories on that network. Type 'list' to see the list of networks again or type 'exit' when you are done."
    input = gets.strip.downcase

      if input == "1"
        puts "stories from NBC"
      elsif input == "2"
        puts "stories from CNN"
      elsif input == "3"
        puts "stories from FOX"
      elsif input == "4"
        puts "stories from ABC"
      elsif input == "5"
        puts "stories from MSN"
      elsif input == "6"
        puts "stories from NPR"
      elsif input == "list"
        list_networks
      elsif input == "exit"
        exit_news
      else
        puts "Invalid response, please type 'list' or 'exit'."
        list_top_stories
      end
    end

  def exit_news
    puts "Come back for the latest news"
  end
end
