(setq rcirc-server-alist '(("irc.freenode.net"
                            :port 6697
                            :channels ("##math" "##crypto" "##physics" "#haskell" "##opengl" "#lisp" "##electronics" "#clojure" "#clojurescript")
                            :encryption tls)
                           ;; ("irc.mozilla.org"
                           ;;   :port 6697
                           ;;   :channels ("#rust" "#rust-gamedev" "#rust-crypto")
                           ;;   :encryption tls)
                           ))


(setq rcirc-default-nick irc-handle)
(setq rcirc-default-user-name irc-handle)
(setq rcirc-default-full-name irc-handle)
(setq rcirc-authinfo `(("freenode" nickserv ,irc-handle ,freenode-password)
                       ("moـzilla" nickserv ,irc-handle ,mozilla-password)))

(eval-after-load 'rcirc '(require 'rcirc-notify))
(eval-after-load 'rcirc '(rcirc-notify-add-hooks))
(provide 'setup-rcirc)
