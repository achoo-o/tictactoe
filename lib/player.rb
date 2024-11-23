class Player
  def initialize()
    @marker = self.choose_marker
  end

  def choose_marker()
    puts ('Do you want to be naughts (O) or crosses (X)?')
    while marker = gets.chomp.downcase
      if self.marker_valid?(marker) then break end
      puts ("Please type 'o', 'x, 'naughts', or 'crosses'.")
    end
    marker
  end

  def marker_valid?(marker)
    ['naughts', 'crosses', 'x', 'o'].include? marker
  end

  attr_accessor :marker
end