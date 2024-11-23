class Player
  def initialize()
    @marker = self.choose_marker
  end

  def choose_marker()
    puts ('Do you want to be naughts (O) or crosses (X)?')
    while input = gets.chomp.downcase
      if ['naughts', 'crosses', 'x', 'o'].include? input then break end
      puts ("Please type 'o', 'x, 'naughts', or 'crosses'.")
    end
    marker
  end

  attr_accessor :marker
end