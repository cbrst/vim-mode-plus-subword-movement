# DEPRECATED!
Subword support is now part of vim-mode-plus: https://github.com/t9md/atom-vim-mode-plus/pull/634

# vim-mode-plus-subword-movement

This package adds commands to navigate by Atom's subwords.


Due to the implementation as `TextObject`, the movement commands can be used by all of vim-mode-plus commands, i.e. `c`, `d`, `v`.

![preview](https://gist.github.com/crshd/6f3591dcb73ea87febd0/raw/1cf0e2d00ceb61e2acf45b46c9ce5bff10673349/LBCuzMY9uT.gif)

## Example keymap

```cson
'atom-text-editor.vim-mode-plus:not(.insert-mode)':
  'ctrl-e': 'vim-mode-plus-user:move-to-end-of-subword'
  'Q':      'vim-mode-plus-user:move-to-beginning-of-subword'
  'q':      'vim-mode-plus-user:move-to-next-subword'

'atom-text-editor.vim-mode-plus.operator-pending-mode, atom-text-editor.vim-mode-plus.visual-mode':
  'i q': 'vim-mode-plus-user:inner-subword'
  ```

  (not included)
