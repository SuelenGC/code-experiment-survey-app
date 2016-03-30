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
      '9535a956e379c3e8538b', 
      'd120e2bfde1e12809559', 
      'f15b7623b21b47068e24', 
      '245466acef7d03b5148d', 
      'b61e6825896b82d8db73',
      '82df0ea69516d4363847']

  	non_smelly = 
    [
    '1799643048a43e4a684e',
    'ab18b9ecb40e11e2ff4e',
    '1baddc4042b5231075a5',
    '8bdf3717ac4c6ebc76e1',
    '1ebd7f4dd526f46ab12c',
    '6096e619f522677ac556',
    'ef784aac0822b3be4dbf',
    'ca7eafecbe9fdfe1d536',
    'e011e3c26e1279476aab',
    '7605001ad814db8eefb9',
    '853df378f5b54a1c59f5',
    '2503e0005550ece5070d',
    'e0a59cbcaff388050aa2',
    '950a6a7bbfbed4cbec2e',
    '5eb995d9c512b3dc2e58',
    '3a94b9d4fa0345a4e90f',
    '2d283ffcc07cc3b4966a',
    '1b5bbf0371449befab96',
    '1939990d07c0a4ac6ded',
    '50f9307dbbe075322de5',
    '082c4fae0a667e6f327b',
    'eb00a01a3084470ad938',
    'a2a147bd2cfb5e931928',
    'cf398f6434fb936eb651',
    'd6f1e97e9d282dad71b8',
    '0ce4289556deb7512a02',
    'bb6427e7dce52e0b4d99',
    'f63a8768f795c57f1b2a',
    'f78f25f7ea35c50d293c',
    'b5acbbc96a68caeabdf9'
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
