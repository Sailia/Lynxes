class LynxesController < ApplicationController
	def index
		@lynxes = Lynx.all
		@lynx = Lynx.new
	end

	def show
		@lynx = Lynx.find(params['id'])
	end

	def create
		@lynxes = Lynx.all
		@lynx = Lynx.new(lynx_params)
		if @lynx.save
			redirect_to lynxes_path
		else
			render :index
		end
	end

	private

	def lynx_params
		params.require(:lynx).permit(:name, :age, :furry)
	end
end