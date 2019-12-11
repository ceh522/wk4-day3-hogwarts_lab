require('sinatra')
require('sinatra/contrib/all')
require_relative('models/student')
require_relative('models/house')
also_reload('./models/*')

# index

get '/students' do
  @students = Student.all()
  erb(:index)
end

# new
get '/students/new' do
  erb(:new)
end

# show
get '/students/:id' do
  @student = Student.find( params[:id].to_i() )
  erb(:show)
end

# create
post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

# edit

# update

# destroy

# HTTP VERB	ROUTE	Action	Used For
# GET	'/students'	index action	index page to display all students
# GET    	'/students/new'      	new action  	displays create student form
# GET    	'/students/:id'	show action  	displays one student based on ID in the url
# POST	'/students'  	create action	creates one student
# GET	'/students/:id/edit'	edit action	displays edit form based on ID in the url
# POST	'/students/:id'	update action	replaces an existing student based on ID in the url
# POST	'/students/:id/delete'	destroy action	deletes one student based on ID in the url
# Add the corresponding views
