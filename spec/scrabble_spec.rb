require('rspec')
require('scrabble')

describe('String#scrabble') do

  it("returns a scrabble score for a letter") do
    expect("d".scrabble()).to(eq(2))
  end

  it("returns a scrabble score for multiple letters") do
    expect("apple".scrabble()).to(eq(9))
  end

end
