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

    traditional = [
      '8515daf09659c86bdcbc',
      '6089cb090f0ea26b6d71',
      '1a96890345f9d8bb70f5',
      '12dc7258b0145206b50b',
      '12449b0a9d59ec09e492',
      '65d2424767221bd54e34',
      'd48cc68beab6d41dffdf',
      '7f6970e03c9e3e597e88',
      '4675289298c47c33ca44',
      'f4606aa339ec10fe03a6',
      '8651d63a65bda738d1e1',
      '5442f78592ce005c96bf',
      '052e94681c42dea5b8c8',
      'dec44b58fa5a0daf5ec4',
      'e4b1849a39dd948263fb',
      '07c348b2e42e86cd27ed',
      'b7e2ae6018117b8049b0',
      'f4526a345a0a52c3ca99',
      '417386f3abdd61dc749a',
      '037130c87425b34f32e5',
      '15d5489eaa9f8c953d82',
      'a4544d6a950863b2a690',
      '31d93ec4abd621603a0f',
      'a484f2c0625f7fd3b391',
      '87a2b3659529e3094b6d',
      'b77c7995fee961e302fd',
      '3b4054c7483bad10d053',
      '67092613c012914a04f4',
      '86c0948a93685ab6bf0a',
      '2e2ce9756eb080c2015f',
      'c2a306f39fd82eaa3724'
    ]

  	smelly_sample = smelly.sample(smelly.size)
  	non_smelly_sample = non_smelly.sample(non_smelly.size)
    traditional_sample = traditional.sample(traditional.size)

  	smelly_to_be_evaluated = [smelly_sample[0], smelly_sample[1]]
  	non_smelly_to_be_evaluated = [non_smelly_sample[0], non_smelly_sample[1]]
    traditional_to_be_evaluated = [traditional_sample[0], traditional_sample[1]]

  	@classes = smelly_to_be_evaluated + non_smelly_to_be_evaluated + traditional_to_be_evaluated
  	@classes = @classes.sample(@classes.size)

  end

  def save
  	a = Answer.new(:text => params)

  	a.save
  end
end
