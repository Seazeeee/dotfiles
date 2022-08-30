#-- START ZCACHE GENERATED FILE
#-- GENERATED: Thu Jul 28 12:56:24 EDT 2022
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/mattthompson/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/mattthompson/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/mattthompson/.antigen/bundles/zsh-users/zsh-autosuggestions) path+=(/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein /Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/mattthompson/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/mattthompson/.antigen/bundles/zsh-users/zsh-autosuggestions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/mattthompson/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/heroku plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lein plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/heroku/heroku.plugin.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lein' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/mattthompson/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/mattthompson/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
