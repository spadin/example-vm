rbenv_dir = Helper.home('.rbenv')

git rbenv_dir do
  repository 'git://github.com/sstephenson/rbenv.git'
  action :checkout
  reference 'master'
  user 'vagrant'
end
