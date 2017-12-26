class SurveyController < ApplicationController
  def index
  	# add gists here
  	smelly = [
      '5314cc1203cc12fdb0c07aad11f74f65',
      'd2f67a44ae30c69292182a8bf1e6812a',
      '87eb0b690056eefde7cbeaab4339c1ee',
      '4b0540bc573e1e9d0277a609eba1e8e8',
      '468eb14bdc4cb14af3681473f501d3b1',
      'f399d930dc04f1971debb7f4ecd55d85',
      'febece2da1eba052711b16212a0a27b2',
      '0e11bb39c8df624cf925563c78388095',
      '612c179f5a50c99c35cb50297efd0766',
      '8ca89e8b15d458766c0fee9209359758',
      'bd40e9a9bb1f0b3647d1bd35c6d87feb',
      '964f77f587cd51f1a269201499ceeb9d',
      '76bc7926bebc73ff1d475e239244fa4f',
      'b1a4e52ea77ac1be174dd2bcef919dd5',
      '57335a2424ad70c8ffe97d1f53853296',
      'fbcbe2edabf73bb259e41a1b5ab57b6e',
      'ea5896799c99c1ab25483b36604e5984',
      'bd54fc8fb98f227a4a53d791df48e9bc',
      '6aa82c50d999eab877407f5def84a936',
      '36e7c268fe4f193644d774bcda482015',
      '91380358ddcd023960dea2139537ab00',
      '919e040a38ae48e9401ef644bd8a8ad9',
      'ecbbd2cec8d0201d52a61eb72cf98e54',
      'd95978aae64760e248841ff139d7c0a8',
      'abe273fe3e7e616fd19863b9d848a401'      
    ]

  	non_smelly = [
      '18038e100fd16d5d18d44b01942ddde7',
      'df97964a54f42e757c9532452a724f18',
      'a300c158eb5caed7dfe64c28e9f6afc1',
      '69ce601ad7e6e59d5d80010415118730',
      'd73c16b575dd0470cf936d7e5478b7f6'
    ]

  	smelly_sample = smelly.sample(smelly.size)
  	non_smelly_sample = non_smelly.sample(non_smelly.size)
    
  	smelly_to_be_evaluated = [smelly_sample[0], smelly_sample[1], smelly_sample[2], smelly_sample[3]]
  	non_smelly_to_be_evaluated = [non_smelly_sample[0], non_smelly_sample[1]]

  	@classes = smelly_to_be_evaluated + non_smelly_to_be_evaluated
  	@classes = @classes.sample(@classes.size)

  end

  def save
  	a = Answer.new(:text => params)
  	a.save
  end
end
