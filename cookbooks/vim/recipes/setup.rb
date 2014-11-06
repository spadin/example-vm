user_bash 'install vundle plugins' do
  code "vim -u ~/.vimrc.d/setup_vundle.vim +BundleInstall +qall"
end
