return {
  'karb94/neoscroll.nvim',
  opts = {
    mappings = { -- Keys to be mapped to their corresponding default scrolling animation
      '<C-y>',
      '<C-e>',
    },
    hide_cursor = true, -- Hide cursor while scrolling
    stop_eof = true, -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing = 'cubic', -- Default easing function
    pre_hook = nil, -- Function to run before the scrolling animation starts
    post_hook = nil, -- Function to run after the scrolling animation ends
    performance_mode = false, -- Disable "Performance Mode" on all buffers.
  },
  vim.keymap.set('n', '<ScrollWheelUp>', '<C-y>'),
  vim.keymap.set('n', '<ScrollWheelDown>', '<C-e>'),
  vim.keymap.set('i', '<ScrollWheelUp>', '<C-y>'),
  vim.keymap.set('i', '<ScrollWheelDown>', '<C-e>'),
  vim.keymap.set('v', '<ScrollWheelUp>', '<C-y>'),
  vim.keymap.set('v', '<ScrollWheelDown>', '<C-e>'),
}
