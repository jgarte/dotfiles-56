local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'RRethy/nvim-base16'
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-treesitter/nvim-treesitter'
  use "lukas-reineke/indent-blankline.nvim"
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  if packer_bootstrap then
    require('packer').sync()
  end
end)

