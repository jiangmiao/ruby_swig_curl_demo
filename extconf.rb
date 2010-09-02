require 'mkmf'
%w{stdc++ curl}.each do|lib|
	$libs = append_library $libs, lib
end
create_makefile 'curl'
