class StudentsController < ApplicationController
	def new
		@student = Student.new 
	end
	def create
		@student = Student.new(params[:student])
		if @student.save 
			render :text => "COngs"
			else
			render :action => 'new'	
		end	
		 
	end
end
