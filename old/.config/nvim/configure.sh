#! /usr/bin/sh
#

# Prerequisite: install ripgrep

# 1.Download packet panager - packer
#
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# create file packer.lua in lua/vmore with code 
# 	-- This file can be loaded by calling `lua require('plugins')` from your init.vim

#	-- Only required if you have packer configured as `opt`
#	vim.cmd [[packadd packer.nvim]]
#	
#	return require('packer').startup(function(use)
#	  -- Packer can manage itself
#	  use 'wbthomason/packer.nvim'
#	end)
# 2. Get fuzzy finder - telescope
#    put this code into packer.lua into require 
#   
#    use {
#    	'nvim-telescope/telescope.nvim', tag = '0.1.1',
#    	-- or                            , branch = '0.1.x',
#    	requires = { {'nvim-lua/plenary.nvim'} }
#    }
#    
#    create after/plugin/telescope.lua
#    and put
#   
#   	local builtin = require('telescope.builtin')
#   	vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
#   	vim.keymap.set('n', '<C-p>', builtin.git_files, {})
#   	vim.keymap.set('n', '<leader>ps', function()
#   		builtin.grep_string({ search = vim.fn.input("Grep > ") })
#   	end)
#   	
#   	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
#	
#
# 3. Install treesitter
# 	
# 	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
#
# 	transforms into
#
#       use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
#
#
