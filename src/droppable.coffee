droppables        = require "./collection"

class DroppableDecorator

  ###
  ###

  constructor: (@view) ->
    @name = @view.droppable
    @view.once "render", @render
    @view.once "remove", @remove

  ###
  ###

  render: () =>
    droppables.add @name, @

  ###
  ###

  remove: () =>  
    droppables.remove @name, @

  ###
  ###

  @priority   : "display"
  @getOptions : (view) -> view.droppable
  @decorate   : (view, options) -> new DroppableDecorator view, options

module.exports = DroppableDecorator