homeshick_sh = Helper.home('.homesick/repos/homeshick/homeshick.sh')

user_bash 'configure homeshick castles' do
  code <<-EOF
    source #{homeshick_sh}
    homeshick clone spadin/dotfiles
    homeshick clone jimeh/tmuxifier
    homeshick clone gmarik/vundle
    homeshick link -f
  EOF
end

user_bash 'fix spadin/dotfiles remote' do
  code <<-EOF
    cd /home/vagrant/.homesick/repos/dotfiles
    git remote rm origin
    git remote add origin git@github.com:spadin/dotfiles.git
  EOF
end
