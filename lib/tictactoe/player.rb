class Player
  def initialize(marker = nil)
    if !marker
      @marker = self.choose_marker
    else
      puts "yeehaw"
    end
  end

  def choose_marker()
    puts ('Do you want to be naughts (O) or crosses (X)?')
    while input = gets.chomp.downcase.strip
      if ['naughts', 'crosses', 'x', 'o'].include? input then break end
      puts ("Please type 'o', 'x, 'naughts', or 'crosses'.")
    end
    input
  end

  attr_accessor :marker
end