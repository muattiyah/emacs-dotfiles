(setq circe-reduce-lurker-spam t)

(enable-circe-color-nicks)

(setq circe-network-options `(("Freenode" :port (6667 . 6697)
															 :use-tls 't
															 :nick ,irc-handle
															 :channels (:after-auth "#emacs"
																											"#clojure"
																											"#clojurescript"
																											"#lisp"
																											"#haskell"
																											"##math"
																											"##opengl"
																											"##crypto")
															 :nickserv-password ,freenode-password)))

(add-to-list 'circe-network-options `("Mozilla" :host "irc.mozilla.org"
																			:port (6667 . 6697)
																			:use-tls 't
																			:nick ,irc-handle
																			:channels (:after-auth "#rust"
																														 "#rust-internals"
																														 "#rust-gamedev"
																														 "#rust-crypto"
																														 "#servo")
																			:nickserv-password ,mozilla-password) 't)

(provide 'setup-circe)
