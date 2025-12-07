-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 通过uv设置python环境
if vim.loop.os_uname().sysname == "Darwin" or vim.loop.os_uname().sysname == "Linux" then
  vim.g.python_host_prog = "$HOME/.uv/nvim/.venv/bin/python"
  vim.g.python3_host_prog = "$HOME/.uv/nvim/.venv/bin/python"
elseif vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.python_host_prog = "%USERPROFILE%\\.uv\\nvim\\.venv\\bin\\python"
  vim.g.python3_host_prog = "%USERPROFILE%\\.uv\\nvim\\.venv\\bin\\python"
end
