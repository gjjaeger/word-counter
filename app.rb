require('sinatra')
  require('sinatra/reloader')
  require('./lib/word_find')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/display') do
    @word = params.fetch('sentence').word_find(params.fetch('word'))
    @word2 = params.fetch('sentence').letter_find(params.fetch('word'))
    erb(:index)
  end
