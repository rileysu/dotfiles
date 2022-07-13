if status is-login
	# sway
end

if status is-interactive
	set -U EDITOR nvim
	fish_add_path ~/.cargo/bin
	fish_add_path ~/.local/bin
	fish_add_path ~/Applications

	starship init fish | source
end

#function fish_prompt
#	set appends
#
#	set -a appends (printf "%s(%s%s%s) " (set_color normal) (set_color -o blue) (pwd) (set_color normal))
#
#	for append in $appends
#		printf $append
#	end
#	
#	if fish_is_root_user
#		set lamda_color red
#	else
#		set lamda_color green
#	end
#
#	printf "%sλ %s" (set_color -o $lamda_color) (set_color normal)
#end
