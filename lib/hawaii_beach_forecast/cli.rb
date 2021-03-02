require_relative '../environment.rb'

class CLI

  def call     
    puts "-----------------------------------------".red                                            
    puts "Welcome to The Hawaii Beaches Forecast!!!".blue
    puts "-----------------------------------------".red
    sleep(1.0)
    learn_more 
   
  end
 

  def learn_more
    # puts "\n------------------------------------------------------------------".red
    puts "\nWould you like to learn more on using The Hawaii Beaches Forecast?".blue
    # puts "--------------------------------------------------------------".red
    # puts "\n-----------------------".red
    puts "Please type (yes or no)".blue
    # puts "--------------------------------------------------------------------".red
    input = gets.chomp
    if input.downcase == "yes"
      puts "\nloading...".yellow
      sleep(1)
      list_beaches
      menu
    elsif input.downcase == "no"
      goodbye  
    else
      puts "\nInvalid input please put either yes or no".yellow
      sleep(1.0)
      learn_more                                                    
    end
  end

  def list_beaches
    puts ""
    Beach.all.each.with_index(1) do |b, i|
      sleep(0.1)
      puts "#{i}. #{b.beach}".blue
    end
  end

  def display_beaches
    Beach.all.each.with_index(1) do |b, i|
    end
  end

  def menu
    input = nil
    while input != "exit"
    puts "\n-----------------------------------------------------------------------".red
    puts "Enter the index number of the beach you will like the forecast info on,".blue
    puts "or type list to see the beaches again or type exit to leave application.".blue
    puts "------------------------------------------------------------------------".red
    input = gets.strip.downcase
    if input.to_i > 0 && input.to_i < 26
      puts "\nloading...".yellow
      sleep(0.5)
      the_beach = display_beaches[input.to_i-1] 
      puts "\nName: #{the_beach.beach}"
      puts "Shore Location: #{the_beach.shore}"
      puts "Temperature: #{the_beach.temp} degrees"
      puts "Weather: #{the_beach.weather}"
      puts "Wind: #{the_beach.wind}"
      puts "Surf Height: #{the_beach.surf}"
    elsif input == "list"
      list_beaches
    elsif input != "exit"
      puts "\nThat is an invalid input, please put a number from 1-25, list or exit ".yellow
      sleep(1)
    else input = "exit"
      goodbye
    end
   end
  end

  def goodbye
    sleep(0.5)
    puts "--------------------------------------------------".red
    puts "Thank you for using The Hawaii Beaches Forecast!!!".blue
    puts "--------------------------------------------------".red
  end

end