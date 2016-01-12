# vim-mode-plus-subword-movement package

This package adds add commands to navigate by Atom's subwords.

## Example keymap

```cson
'atom-text-editor.vim-mode-plus:not(.insert-mode)':
  'ctrl-e': 'vim-mode-plus-user:move-to-end-of-subword'
  'Q':      'vim-mode-plus-user:move-to-beginning-of-subword'
  'q':      'vim-mode-plus-user:move-to-next-subword'

'atom-text-editor.vim-mode-plus.operator-pending-mode, atom-text-editor.vim-mode-plus.visual-mode':
  'i q': 'vim-mode-plus-user:inner-sub-word'
  ```

  (not included)
