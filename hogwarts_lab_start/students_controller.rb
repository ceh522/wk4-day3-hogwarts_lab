require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index

get '/students' do
  @students = Student.all()
  erb(:new)
end

# show

# new

# create

# edit

# update

# destroy
