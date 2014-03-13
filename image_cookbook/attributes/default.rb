include_attribute 'nginx'

normal['nginx']['default_site_enabled'] = false
normal['nginx']['server_names_hash_bucket_size'] = 128

default['router']['backends'] = {}
