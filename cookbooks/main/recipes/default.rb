package 'git-core'
package 'build-essential'
package 'cmake'
package 'make'
package 'clang'

package 'libsdl2-dev'
package 'libsdl2-image-dev'
package 'libsdl2-mixer-dev'
package 'libsdl2-ttf-dev'
package 'zlib1g-dev'

# Pacotes adicionais usados pelo pacode .deb
package 'libc6'
package 'libgcc1'
package 'libsdl2-2.0-0'
package 'libsdl2-image-2.0-0'
package 'libstdc++6'

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
