name             'ops_ex'
maintainer       'jon powers'
maintainer_email 'jon.n.powers@gmail.com'
license          'All rights reserved'
description      'Installs/Configures wordpress.'
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.1.0'


depends 'apt', '~> 2.9.2'
depends 'firewall', '~> 2.4.0'
depends 'mariadb'
depends 'nginx', '~> 2.7.6'
depends 'mw_wordpress', '~> 0.1.0'
