include_recipe 'nginx'

node['router']['backends'].each do |name, backend|
    template "#{node['nginx']['dir']}/sites-available/#{name}" do
        source 'nginx_backend.erb'
        variables({
            :name => name,
            :backend => backend
        })
    end

    nginx_site name
end
