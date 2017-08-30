(setq rcirc-server-alist '(("irc.freenode.net"
														:port 6697
														:channels ("##math"  "##crypto" "##physics" "#haskell" "##opengl" "#blender" "#lisp" "#lispgames" "#clim" "#scheme" "##c++" "#emacs" "##electronics")
														:encryption tls)
													 ("irc.mozilla.org"
														:port 6697
														:channels ("#rust" "#rust-internals" "#rust-gamedev" "#rust-crypto" "#servo" "#rustc" "#rust-lang" "#rust-libs")
														:encryption tls)))

(setq rcirc-default-nick "skeuomorf")
(setq rcirc-default-user-name "skeuomorf")
(setq rcirc-default-full-name "skeuomorf")
(setq rcirc-authinfo '(("freenode" nickserv ,freenode-password "")
											 ("moـzilla" nickserv ,mozilla-password "")))

(provide 'setup-rcirc)
