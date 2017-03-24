require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the word_find counter path', {:type => :feature} do
  it('processes the user input and checks how many times the word exists in the sentence') do
    visit('/')
    fill_in('word', :with => 'pen')
    fill_in('sentence', :with => 'pendel is pendeling for pen in pen on pen')
    click_button('Go!')
    expect(page).to have_content ('Your word has been found 3 time(s) in your sentence')
  end
end

describe 'the letter_find counter path', {:type => :feature} do
  it('processes the user input and checks how many times the word exists in the sentence') do
    visit('/')
    fill_in('word', :with => 'pen')
    fill_in('sentence', :with => 'pendel is pendeling for pen in pen on pen delpen')
    click_button('Go!')
    expect(page).to have_content ('Your combination of letters has been found 6 time(s) in your sentence')
  end
end
