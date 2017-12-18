class SurveyController < ApplicationController
  def index
  	# add gists here
  	smelly = [
      '5314cc1203cc12fdb0c07aad11f74f65',
      '0902b1f1103babda2b78a884bde7a616',
      '66f9da1dc9ba73183f0d6eef10542ae1',
      '6192ef359b23fde4c8f9a3454155b604',
      'e4b0197cde11d7cfe1495246a218b008',
      '298d7b5fe349000790170270144162c8',
      'ef22d166e962d7ea6ab8233dc4dcdc2a',
      'd2f67a44ae30c69292182a8bf1e6812a',
      '599c9c2f9d14b39c3c1d5a1278841ccb',
      '87eb0b690056eefde7cbeaab4339c1ee',
      'c9cddbc1781c7227ebb6d7351f82eba4',
      'ab538ce9e16aaf3df80c936bec07d20b',
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
      'fdf1b57cace5e3b756d842d201b78095',
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
      'f62f6ffeb78201f592307f862fc11972',
      'c5c03d821057a47ba3355e735de6d8dc',
      '1411e67fba72915978aff2e38be3df80',
      '9d2b341138b0eb6a79ea776c0325f6e8',
      '2823e7a9f25bfe878609147b99efd57d',
      '0802fc818241f23b71925e5e5981b435',
      'ed10bff8bf7eb6e33d993e79d31edfdb',
      'e7f69902916ce54765d7675a0b3bfdb7',
      '93f6b2e9fb1d107add952257ecfabe32',
      'df97964a54f42e757c9532452a724f18',
      'a300c158eb5caed7dfe64c28e9f6afc1',
      '69ce601ad7e6e59d5d80010415118730',
      'c27d80b69c3bd2ebebed1adc58e4b02e',
      '068f54f6a053b0506e7b56ac982c4eff',
      'b27a38d42f03aa0004cc7174f40c582f',
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
    puts params
  	a = Answer.new(:text => params)
  	a.save
  end
end
