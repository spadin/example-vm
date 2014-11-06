bash 'make ZSH the default login shell' do
  code "sudo chsh -s `which zsh` #{Helper.user}"
end
