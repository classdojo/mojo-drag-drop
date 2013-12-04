Draggable = require "./draggable"
Droppable = require "./droppable"

module.exports = (app) ->
  app.decorator Draggable
  app.decorator Droppable