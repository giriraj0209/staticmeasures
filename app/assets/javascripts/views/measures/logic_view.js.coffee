class Thorax.Views.LogicView extends Thorax.View
  template: JST['measures/logic']
  initialize: ->
    console.log("***************** INITIALIZING LOGIC VIEW*****************")
    @layout = new Thorax.Views.LogicLayoutView measure: @model
  changeFilter: (population) ->
    console.log("***************** CHANGEFILTER HAS BEEN CALLED and population is *************")
    console.log(population)
    @population = population
    @reloadPopulation() if @model.isPopulated()

  reloadPopulation: ->
    console.log("*************** am i in reload population? ****************")
    population = @model.get @population
    console.log(" ****** IN RELOAD POPULATION ******")
    console.log(population)
    view = if population?.has 'preconditions'
      console.log("************ in IF *********")
      console.log(population.get('preconditions').first())
      new Thorax.Views.PreconditionView model: population.get('preconditions').first()
    else
      console.log("****** in else ***********")
      new Thorax.Views.EmptyPopulationView population: @population
    @layout.setView view
  events:
    populate: -> @reloadPopulation()
  setModel: (model) ->
    super
    @layout.measure = model

class Thorax.Views.LogicLayoutView extends Thorax.LayoutView

# not sure if there's a better way to do this
class Thorax.Views.EmptyPopulationView extends Thorax.View
  template: JST['measures/empty_preconditions']
  className: 'text-muted'
  isDenominator: -> @population is 'DENOM'
