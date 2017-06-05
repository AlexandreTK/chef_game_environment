package 'git-core'
package 'build-essential'
package 'cmake'

package 'libsdl1.2-dev'
package 'libsdl-image1.2-dev'
package 'libsdl-ttf2.0-dev'
package 'libsdl-net1.2-dev'
package 'libsdl-mixer1.2-dev'
package 'libsdl-gfx1.2-dev'


#password MD5 - teste123  -- openssl passwd -1 "<password>"
user node[:user][:name] do
	password node[:user][:password] 
	gid "sudo"
	home "/home/#{node[:user][:name]}"
	manage_home true
end

template "/home/#{node[:user][:name]}/templateTest" do
	source "templateTest.erb"
	owner node[:user][:name]
end
