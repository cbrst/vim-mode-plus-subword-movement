{CompositeDisposable} = require 'atom'

module.exports =
  activate: ->
    @subscriptions = new CompositeDisposable

  deactivate: ->
    @subscriptions.dispose()
    @subscriptions = {}

  subscribe: (args...) ->
    @subscriptions.add args...

  consumeVim: ({Base}) ->
    {
      MoveToNextSubword,
      MoveToEndOfSubword,
      MoveToBeginningOfSubword,
      InnerSubWord
    } = require "./subword-movement"
    @subscribe MoveToNextSubword.registerCommand()
    @subscribe MoveToEndOfSubword.registerCommand()
    @subscribe MoveToBeginningOfSubword.registerCommand()
    @subscribe InnerSubWord.registerCommand()
