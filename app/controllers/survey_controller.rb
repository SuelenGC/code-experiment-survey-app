class SurveyController < ApplicationController
  def index

  	# add gists here
  	smelly = ['1f4f157a97576bfb0b4f', 'c16290595a10b4dd317b'] 
  	non_smelly = ['b0a5e27ceb8ab0eaac9c', '5cf61842a4abd9c440be'] 

  	smelly_sample = smelly.sample(smelly.size)
  	non_smelly_sample = non_smelly.sample(non_smelly.size)

  	smelly_to_be_evaluated = [smelly_sample[0], smelly_sample[1]]
  	non_smelly_to_be_evaluated = [non_smelly_sample[0], non_smelly_sample[1]]

  	@classes = smelly_to_be_evaluated + non_smelly_to_be_evaluated
  	@classes = @classes.sample(@classes.size)

  	p @classes

  end

  def save
  	a = Answer.new(:text => params)

  	a.save
  end
end
