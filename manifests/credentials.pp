# Parameters:
# credentials = [] (Default)
# Array of hashes with config options to create credentials in Jenkins
#
# Example use
#
# class{ 'jenkins::credentials':
#   credentials => [{
#     'type' => 'basic', #or 'privatekey'
#     'scope' => 'GLOBAL', #or 'SYSTEM'
#     'description' => 'sample',
#     'username' => 'fakeuser',
#     'password' => 'fakepassword', #doubles as passphrase for privatekey
#
#     #only used for type=privatekey, otherwise ignored. If not specified,
#     # then ~/.ssh is assumed.
#     'privatekey' => {
#       'type' => '', #possible values 'inline', 'file'
#       'key' => '' #either inline private key or path to file
#     }
#   }]
# }
#
class jenkins::credentials(
  $credentials = []
) {

  file {'/var/lib/jenkins/credentials.xml' :
    content => template('jenkins/credentials.xml.erb')
  }

}
