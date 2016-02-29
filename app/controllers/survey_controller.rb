class SurveyController < ApplicationController
  def index

  	# add gists here
  	smelly = [
      '16a325e68d0895814e68', 
      '048a087d72879e93dd00', 
      '726496ee53be8629c4ab', 
      'a34bcb6d7a85f9aab6c7', 
      '918e890d1b0ba122f384', 
      '720f8c6c30baf9c39797', 
      '488e833dd660bfb81341', 
      '62e4926460205840cd09', 
      '8cab664d69ddec453425', 
      '486cf29e5c3f806d35c9', 
      '9f8ac0799716c9f28a5f', 
      'f17f9c94cbfd019ad24b', 
      '86099882443ba7634557', 
      '107d1f544accb7918785', 
      '59716137d0073376cff3', 
      '8b8599792b51c17f3d8e', 
      'b7adb37c6ae92cb685e2', 
      'fdc7c53c6671b9fcec0b', 
      '699b7ad244914c636c20', 
      '35405203a8b648ee1732', 
      'b4ba8390df8b1a0bb12a', 
      'a928dd0a2df73a7c7ff0', 
      '1fdec542b84e707d5bae', 
      '5c9820b74856cad2037c', 
      '9535a956e379c3e8538b', 
      'd120e2bfde1e12809559', 
      'f15b7623b21b47068e24', 
      '245466acef7d03b5148d', 
      'b61e6825896b82d8db73',
      '82df0ea69516d4363847']

  	non_smelly = [
      '88045d1f019e063c7e51',
      '3b3631498742dfb0cb14',
      'fa39ac6faf61817e56ea',
      '56c23f384869c2b4e4e6',
      '3719bf9c1e9cbaf2579f',
      '7eeccd04cf8055adb9b3',
      '66b2323487128508984d',
      'a0bca7a4db8550860821',
      '77e658dddc9d50015087',
      '33a7fff4b57872f6b1a9',
      '9f46dadfd7f2b41a37b2',
      'ded54a2a9371e4966b82',
      '62b41b5b0cd8bbd7b187',
      '3c62bb2b317851661fb2',
      '12d01d338c092c499d4e',
      '0ace1d89104ce3368a57',
      '69747de135b5d77b36bc',
      '3ef77be78a58b3f6a8ce',
      '58e3f2d255f85b8f6d51',
      'bd1e118f808bfdfd25b4',
      '402bcf7e1920a9b46f5f',
      '9e4aabfbf55804d40819',
      '00cb695a8439597f2196',
      '66cd10480156eb2d061d',
      '5af1151394b5335e6532',
      '34609302e658345519e5',
      'ec968b66454ca62567c0',
      '62c8376205b1cb22dd14',
      'dfb637843514955dc599',
      '22d09258dcf0c052d5b3'
    ] 

  	smelly_sample = smelly.sample(smelly.size)
  	non_smelly_sample = non_smelly.sample(non_smelly.size)

  	smelly_to_be_evaluated = [smelly_sample[0], smelly_sample[1], smelly_sample[2]]
  	non_smelly_to_be_evaluated = [non_smelly_sample[0], non_smelly_sample[1], non_smelly_sample[2]]

  	@classes = smelly_to_be_evaluated + non_smelly_to_be_evaluated
  	@classes = @classes.sample(@classes.size)

  end

  def save
  	a = Answer.new(:text => params)

  	a.save
  end
end
