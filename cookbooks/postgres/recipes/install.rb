apt_sources_list_file 'postgresql.list'

bash 'apt key/apt-get update' do
  code Helper.apt_key('https://www.postgresql.org/media/keys/ACCC4CF8.asc')
end

apt_package 'libpq-dev'
apt_package 'postgresql-9.3'
