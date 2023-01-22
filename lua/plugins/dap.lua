local dap = require("dap")  
	  dap.adapters.go = {
	  type = 'executable';
	  command = 'node';
	  args = {os.getenv('HOME') .. '$HOME/vscode-go/dist/debugAdapter.js'};
  }
  dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = true;
    program = "${file}";
    dlvToolPath = vim.fn.exepath('/opt/goinfre/sonjadav/homebrew/Cellar/go/1.19.5/bin')  -- Adjust to where delve is installed
  },
}
-- require("").setup(config)
-- >vim
-- nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
-- nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
-- nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
-- nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
-- nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
-- nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
-- nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
-- nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
-- nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
-- <


-- lua require('damp').setup {
--   -- Additional dap configurations can be added.
--   -- dap_configurations accepts a list of tables where each entry
--   -- represents a dap configuration. For more details do:
--   -- :help dap-configuration
--   dap_configurations = {
--     {
--       -- Must be "go" or it will be ignored by the plugin
--       type = "go",
--       name = "Attach remote",
--       mode = "remote",
--       request = "attach",
--     },
--   },
--   -- delve configurations
--   delve = {
--     -- time to wait for delve to initialize the debug session.
--     -- default to 20 seconds
--     initialize_timeout_sec = 20,
--     -- a string that defines the port to start delve debugger.
--     -- default to string "${port}" which instructs nvim-dap
--     -- to start the process in a random available port
--     port = "${port}"
--   },
-- }
