homeshick_dir = Helper.home('.homesick/repos/homeshick')
repos_dir     = Helper.home('.homesick/repos')

user_bash 'create homeshick directory' do
  code "mkdir -p #{repos_dir}"
end

git homeshick_dir do
  repository 'git://github.com/andsens/homeshick.git'
  action :checkout
  reference 'master'
end
