class Thorax.Views.StaticmeasureView extends Thorax.View
  template: JST['measures/static']

  initialize: ->
  	console.log('Static measures initializers called')
  	#@staticmeasure.on('reset', @render,this)
  	@listenTo(@staticmeasure, "change", @render)

  render: ->
  	console.log(@staticmeasure)
  	$(@el).html(@template(entries: @staticmeasure.attributes))
  	this