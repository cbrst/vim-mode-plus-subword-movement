requireFrom = (pack, path) ->
  packPath = atom.packages.resolvePackagePath(pack)
  require "#{packPath}/lib/#{path}"

Base = requireFrom 'vim-mode-plus', 'base'
swrap = requireFrom 'vim-mode-plus', 'selection-wrapper'
Motion = Base.getClass('Motion')
TextObject = Base.getClass('TextObject')

class MoveToNextSubword extends Motion
  @commandPrefix: 'vim-mode-plus-user'
  moveCursor: (cursor) ->
    cursor.moveToNextSubwordBoundary()

class MoveToEndOfSubword extends Motion
  @commandPrefix: 'vim-mode-plus-user'
  moveCursor: (cursor) ->
    cursor.moveToNextSubwordBoundary()
    cursor.moveLeft()

class MoveToBeginningOfSubword extends Motion
  @commandPrefix: 'vim-mode-plus-user'
  moveCursor: (cursor) ->
    cursor.moveToPreviousSubwordBoundary()

class Subword extends TextObject
  @commandPrefix: 'vim-mode-plus-user'
  selectTextObject: (selection) ->
    wordRegex = selection.cursor.subwordRegExp()
    @selectInner(selection, wordRegex)

  selectInner: (s, wordRegex) ->
    swrap(s).setBufferRangeSafely s.cursor.getCurrentWordBufferRange({wordRegex})

class InnerSubword extends Subword
  @extend()

module.exports = {
  MoveToNextSubword,
  MoveToEndOfSubword,
  MoveToBeginningOfSubword,
  InnerSubWord
}
