

--local lib = require("nvim-tree.lib")
--local view = require("nvim-tree.view")


--local function collapse_all()
--    require("nvim-tree.actions.tree-modifiers.collapse-all").fn()
--end

--local function edit_or_open()
--    -- open as vsplit on current node
--    local action = "edit"
--    local node = lib.get_node_at_cursor()

--    -- Just copy what's done normally with vsplit
--    if node.link_to and not node.nodes then
--        require('nvim-tree.actions.node.open-file').fn(action, node.link_to)
--        view.close() -- Close the tree if file was opened

--    elseif node.nodes ~= nil then
--        lib.expand_or_collapse(node)

--    else
--        require('nvim-tree.actions.node.open-file').fn(action, node.absolute_path)
--        view.close() -- Close the tree if file was opened
--    end

--end

--local function vsplit_preview()
--    -- open as vsplit on current node
--    local action = "vsplit"
--    local node = lib.get_node_at_cursor()

--    -- Just copy what's done normally with vsplit
--    if node.link_to and not node.nodes then
--        require('nvim-tree.actions.node.open-file').fn(action, node.link_to)

--    elseif node.nodes ~= nil then
--        lib.expand_or_collapse(node)

--    else
--        require('nvim-tree.actions.node.open-file').fn(action, node.absolute_path)

--    end

--    -- Finally refocus on tree if it was lost
--    view.focus()
--end
