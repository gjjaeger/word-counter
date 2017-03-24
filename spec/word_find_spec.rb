require ('word_find')

describe ('String#word_find') do
  it ("returns the number of times the word was found in a string") do
    expect(("Hello this Hello hello").word_find("Hello")).to(eq(2))
  end
end
describe ('String#letter_find') do
  it ("returns the number of times the word was found in a string") do
    expect(("Hello this Hello hello apple bee yello o p oo").letter_find("o")).to(eq(7))
  end
end
