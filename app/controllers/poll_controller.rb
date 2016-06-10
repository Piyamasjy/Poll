class PollController < ApplicationController
	def create
		@poll = Poll.new		
		
	end

	def index
		@poll = Poll.new		
		
	end
	

	def new

		@poll = Poll.new
  		4.times { @poll.choices.build }
		#poll = Poll.new( name: params[:poll] [:name] )
		

	end

		#@poll = Poll.new
		#if poll.save
			#Todo: redirect to this user (show user)
			#redirect_to poll_show_path(poll.id)

			#puts "1111111111111111111111111"
			#render nothing: true
		#else
			#redirect_to poll_new_path			#puts "2222222222222222222222222"
		#end
	#end

	def show
		@poll = Poll.find(params[:id])
		@choices = @poll.choices
	end

	#def show
		#poll = Poll.new(name: params[:poll])
			#name: params[:poll] [:name],name: params[:poll] [:name])

		#@poll = Poll.find(params[:id])
		#poll = Poll.new( name: params[:poll] )
		#@poll = Poll.find(params[:id])
	#end

	#def two

		#@poll = Poll.new(name: params[:poll])
		#@poll = Poll.new
  		#4.times { @poll.choice.build }

	#end

	def vote
		puts 'xxxxxxx' + params.to_s
  	
  		@poll = Poll.find(params[:id])
  		@poll.selected_choice_id = params[:radio] 
#assign value
		
  	
		if @poll.save
			redirect_to poll_show_vote_path(@poll.id)
		else
			redirect_to poll_show_path	
		end		
		
  	end

	def create

		@poll = Poll.new(poll_params)
		
  		#4.times { @poll.choice.build }
  		#puts params.to_h
		#poll = Poll.new(name: params[:poll][:name])
		#poll.choices = params[:poll][:choices]
		 

		#poll = params.require(:poll).permit(:name,:Cone, :Ctwo, :Cthree,:Cfour )
		 #choices_attributes: [:id,:Cone, :Ctwo, :Cthree])
		#poll.choices = params[:poll][:choices]

		if @poll.save
			redirect_to poll_show_path(@poll.id)
		else
			redirect_to poll_new_path	
		end
	end

	def show_vote
		@poll = Poll.find(params[:id])
	end


	private

  	def poll_params
    	params.require(:poll).permit(:name, choices_attributes: [:name])
  	end

  	# def choice_params
   #  	params.require(:choice).permit(:name, choices_attributes: [:name])
  	# end

  	

  	

end


