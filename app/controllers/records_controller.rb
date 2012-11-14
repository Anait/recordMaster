class RecordsController < ApplicationController
    def index

    end

    def new
	@record = Record.new
    end	

    def create
	@record = Record.new(params[:record])
	puts params.inspect
	if @record.save
		flash[:notice] = "New Record has been created."
		redirect_to @record
	else
		#nothing yet
	end
    end
    
    def show
	@record = Record.find(params[:id])
    end

end
