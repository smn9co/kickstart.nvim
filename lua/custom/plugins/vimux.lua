return {
  'preservim/vimux',

  config = function()
    -- Define VimuxSlime function
    vim.g.VimuxSlime = function()
      vim.cmd 'call VimuxRunCommand(@v, 0)'
      -- vim.cmd 'call VimuxSendKeys("Enter")'
      -- vim.cmd 'call VimuxSendKeys("Enter")'
    end

    vim.keymap.set('n', '<leader>rb', '<Cmd>call VimuxRunCommand("python " . bufname("%"))<CR>', { desc = ' [R]un current file' })
    vim.keymap.set('n', '<leader>vp', '<Cmd>VimuxPromptCommand<CR>', { desc = ' [P]rompt for command to run' })
    vim.keymap.set('n', '<leader>vl', '<Cmd>VimuxRunLastCommand<CR>', { desc = ' Run [l]ast command executed by VimuxRunCommand' })
    vim.keymap.set('n', '<leader>vi', '<Cmd>VimuxInspectRunner<CR>', { desc = ' [I]nspect runner pane' })
    vim.keymap.set('n', '<leader>vq', '<Cmd>VimuxCloseRunner<CR>', { desc = ' [Q]uit open runner' })
    vim.keymap.set('n', '<leader>vx', '<Cmd>VimuxInterruptRunner<CR>', { desc = ' Interrupt running command' })
    vim.keymap.set('n', '<leader>vz', '<Cmd>call VimuxZoomRunner()<CR>', { desc = ' [Z]oom runner pane (ctrl-s z to restore)' })
    vim.keymap.set('n', '<leader>v<C-l>', '<Cmd>VimuxClearTerminalScreen()<CR>', { desc = ' [C-l]ear terminal screen' })
    vim.keymap.set('v', '<leader>vs', '"vy <Cmd>lua vim.g.VimuxSlime()', { desc = ' save selected text and send it to tmux ' })
    vim.keymap.set('n', '<leader>vs', 'vip "vy <Cmd>lua vim.g.VimuxSlime()<CR><Esc>', { desc = ' send paragraph to tmux ' })
  end,
}
