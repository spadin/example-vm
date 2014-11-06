ruby_build_dir = Helper.home('.rbenv/plugins/ruby-build')
plugins_dir    = Helper.home('.rbenv/plugins')

user_bash 'create rbenv plugins directory' do
  code "mkdir -p #{plugins_dir}"
end

git ruby_build_dir do
  repository 'git://github.com/sstephenson/ruby-build.git'
  action :checkout
  reference 'master'
  user 'vagrant'
end
