class SurveyController < ApplicationController
  def index

  	# add gists here
  	smelly = [
      '888a18f07c9b9eea4279168cc278d8e8',
      '435bda2b2e937372a16b6422f27e6d3e',
      '0f0ffd5ee316dcaee4c0b518505ca284',
      '9886f05e6ac2447e0bf505191ef548fc',
      '9a14a898bb6720cce47297fb35e92527',
      'e8c7f716745eef0dfd52ef3d759cf25a',
      '297a541d94f23c8a7a44fbed1cf95794',
      '786215dd9b5ab6bab2205ca607086965',
      'df581688e8d3c54679363b05797ac6dc',
      'efc8598af615d4fbdec433752070648e',
      '3d212a0483540426a2374cb37822b3f2',
      '247438b056c56f9d3ee9f2b9bf3691a6',
      '2fea3ab206780b854e47fc4ebf1b3e61',
      'fe2a651aaf3fff76b6bedb9827ef2bab',
      'b075fa304b5c714751fdd6b7d9c45474',
      '4568e6e786f286940fbc8faffb427da3',
      '92612fea4b8d83e3cc4c705106ce9acb',
      '4c32a284e9c690c685fbcb5da892c48b',
      'ced7dc7e704411b1dcc37cdece973770',
      '3a479227601ad22198bfe601b63c009f',
      'bdf79ae8cbb56e469c5dfaeb29ed2caa',
      '7ef94f2a6d91c87522f2a6338b4002e2',
      '39df6c057886a0b080bf1d8f227d4c24'
    ]

  	non_smelly = [
      'afadf0dba401068c84b32815892306ee',
      'e2dad02841f9ae44a0bc77f0ce08911d',
      'dba39750ae9918829ea9e2d0271028bf',
      '2151f9877212701349310e49510d48c2',
      '6a98b37798ae404c66fd8cb62bfa4e0d',
      'e9c21e29a92bda4dcbe5a1d501654de4',
      '6eedabbe579e4cb000a437154c99562c',
      'ac09e7d421a498619b5d58a5adef4167',
      '94264f3f22437627f9fbe5dfd9632a80',
      '05b0cb062862197b81b94eb19bc2247d',
      '3e606ea7f7919d24949179db6f959049',
      '470b38d2aba8de807c7b129053b40007',
      'ae13b71b7c30c494169a03aad966a69a',
      '6103843a572ca0771f2af4a739112ab5',
      'd929cc83d5c36a65127eb0be10001802',
      '5fd303de6a1524d2b4e489d6f1d4f9c9',
      'b0705bcfdf509d9749bdbe1c21fa172b',
      '09eb01f74fb43c3629d383f8a24cd847',
      'db559b30d01e217d837712c4e52569e4',
      '57bc88ed93e633be9f96ecfed9028318',
      '5f178a76d32c3264d25449c6c664f9ea',
      '85417506421fb1319293ca6ba11825fb',
      '34a951530aeeb9cb95a4198d2b39fec6'
    ]

    traditional = [
      'd41b736fce33720e946ea4d373e48be1',
      '49f42e788c47438a3ca5038a5e81c98a',
      'ae0a596d7702bec34a1137656ff2bd4a',
      '7899cf2683a9312caa3e9a725ac37b0b',
      'df497480bd317cbe16e24ca9ed2ae42e',
      '88f0404098a0ec8482a2b9d648bb9116',
      '96c25866c2103048014c1c0dfcd18916',
      '94db31c1c3b6e00fa6e99056516218f0',
      '6654db5c4c0ae7a52a3ade759130228a',
      '5ed14f0056a0d236e21ade208e03900f'
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
