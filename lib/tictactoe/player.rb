class Player
  def initialize(marker = nil)
    if !marker #first player
      @marker = self.choose_marker
    else #second player
      @marker = set_opposite_marker(marker)
    end
    @marker_name = self.set_marker_name(@marker)
  end

  def choose_marker()
    puts ('Do you want to be naughts (O) or crosses (X)?')
    while input = gets.chomp.downcase.strip
      if ['naughts', 'crosses', 'x', 'o'].include? input then break end
      puts ("Please type 'o', 'x, 'naughts', or 'crosses'.")
    end
    return self.set_marker(input)
  end

  def set_marker(input)
    if input == 'o' or input == 'naughts' then 'O' else 'X' end
  end

  def set_opposite_marker(input)
    if input == 'o' then 'x' else 'o' end
  end

  def set_marker_name(marker)
    if marker == 'o' then 'naughts' else 'crosses' end
  end

  attr_accessor :marker, :marker_name
end