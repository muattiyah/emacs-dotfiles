(tool-bar-mode -1)
(scroll-bar-mode -1)
;; For mac os x
;;(toggle-frame-maximized)

(setq inhibit-startup-message t)


(setq column-number-mode t)
(setq-default tab-width 2)
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)
(defalias 'yes-or-no-p 'y-or-n-p)


;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Personal Configuration
(setq my-package-list '(ag auctex cider circe clojure-mode doom-themes
all-the-icons elfeed-web elfeed elisp-format exec-path-from-shell
figlet fill-column-indicator flatland-black-theme flatland-theme
flatui-theme flycheck font-lock+ geiser haskell-mode
ibuffer-projectile ibuffer-rcirc ido-vertical-mode intero
latex-preview-pane ledger-mode magit git-commit magit-popup memoize
nlinum nyan-mode org org-bullets paredit powerline projectile pkg-info
epl queue rainbow-delimiters rust-mode s selectric-mode seq sicp
simple-httpd smex solarized-theme dash spacemacs-theme spinner
white-sand-theme with-editor async zenburn-theme))
;; (mapc #'package-install my-package-list)

(load-file "~/.private.el")
(add-to-list 'load-path "~/.emacs.d/custom/")
(require 'setup-editing)
(require 'setup-completion)
(require 'setup-cider)
(require 'setup-rcirc)
(require 'setup-circe)
(require 'setup-org)
(require 'setup-tex)
(require 'setup-elfeed)


(projectile-global-mode)
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-x g") 'magit-status)


(require 'fill-column-indicator)
(setq fill-column 79)

(global-nlinum-mode)


;; (require 'powerline)
;; (powerline-default-theme)

;; Open .v files with Proof General's Coq mode
(load "~/.emacs.d/lisp/PG/generic/proof-site")


;; Done automagically *sort-of* by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	 (quote
		("ed0b4fc082715fc1d6a547650752cd8ec76c400ef72eb159543db1770a27caa7" "42b9d85321f5a152a6aef0cc8173e701f572175d6711361955ecfb4943fe93af" "7366916327c60fdf17b53b4ac7f565866c38e1b4a27345fe7facbf16b7a4e9e8" "b050365105e429cb517d98f9a267d30c89336e36b109a1723d95bc0f7ce8c11d" "3fa81193ab414a4d54cde427c2662337c2cab5dd4eb17ffff0d90bca97581eb6" "6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "013c62a1fcee7c8988c831027b1c38ae215f99722911b69e570f21fc19cb662e" "aa0a998c0aa672156f19a1e1a3fb212cdc10338fb50063332a0df1646eb5dfea" "1a5c1be3b14ee44e9cd926c4fe23055bc74bbc9725b01ebee78a1d1cb2b266f4" "891debfe489c769383717cc7d0020244a8d62ce6f076b2c42dd1465b7c94204d" "77c3f5f5acaa5a276ca709ff82cce9b303f49d383415f740ba8bcc76570718b9" "90bd0eb20a1cb155b5a076f698b3c72cfe775aa7ea93b7bfbc171eb250db5e20" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "2e1d19424153d41462ad31144549efa41f55dacda9b76571f73904612b15fd0a" "a7e7804313dbf827a441c86a8109ef5b64b03011383322cbdbf646eb02692f76" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "759416a7a5f5cb6b8cb26e6db2cf70026aa2324083a888015ee2cad0320f7f19" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "2a739405edf418b8581dcd176aaf695d319f99e3488224a3c495cb0f9fd814e3" "4154caa8409ff2eb6f74c913741420e7103b9ea26c3c7d1a5a16592d0d2f43e0" "c90fd1c669f260120d32ddd20168343f5c717ca69e95d2f805e42e88430c340e" "4b207752aa69c0b182c6c3b8e810bbf3afa429ff06f274c8ca52f8df7623eb60" "d2c61aa11872e2977a07969f92630a49e30975220a079cd39bec361b773b4eb3" "60668f4b17b8b8780d50976c0788abed190353d21d3371b8f244dd44c103b0ea" "31e64af34ba56d5a3e85e4bebefe2fb8d9d431d4244c6e6d95369a643786a40e" "4a7abcca7cfa2ccdf4d7804f1162dd0353ce766b1277e8ee2ac7ee27bfbb408f" "a17c68ed6c3feb24eaeb7bb4d69221e0cf3e6a658f1da62c8f8edb90769b7b12" "10e3d04d524c42b71496e6c2e770c8e18b153fcfcc838947094dad8e5aa02cef" "9f569b5e066dd6ca90b3578ff46659bc09a8764e81adf6265626d7dc0fac2a64" "5900bec889f57284356b8216a68580bfa6ece73a6767dfd60196e56d050619bc" "2e973a84accb627f603f309fc13938daa227055d2a6528c80a9b7a9e2dd8da6b" "4182c491b5cc235ba5f27d3c1804fc9f11f51bf56fb6d961f94788be034179ad" "505e8828993252b4c015217772d264ab60bb8434196847fc7ab9135517778dfd" "77ab33a45a8d39566f24cd6a9b28c78eec89882004ed194587e210399813d009" "b378249b7f647796b186c70f61eaaee7aa1bd123681d5ca8c44d3ca8875e1b70" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "f89b15728948b1ea5757a09c3fe56882c2478844062e1033a29ffbd2ed0e0275" "12e2aee98f651031d10fd58af76250fa8cab6f28b3e88f03b88b7524c9278549" "c50a672a129e71b9362b209c63d4e203ccc88a388c370411535b8b54ecc878bc" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "6f11ad991da959fa8de046f7f8271b22d3a97ee7b6eca62c81d5a917790a45d9" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "82f02414088ba4b94ee42777e0c86dd2f040f716f091ec7774d9dbbd9288ef6e" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(global-linum-mode nil)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
	 (quote
		(gruvbox-theme password-store slime slime-theme ## sml-mode clojure-cheatsheet minimap neotree intero ranger ggtags flycheck white-sand-theme flatui-theme ido-vertical-mode rust-mode figlet zenburn-theme doom-themes elfeed-web elfeed nyan-mode powerline nlinum selectric-mode org-bullets fill-column-indicator elisp-format circe sicp ledger-mode latex-preview-pane exec-path-from-shell auctex org flatland-black-theme flatland-theme haskell-mode ibuffer-projectile ibuffer-rcirc solarized-theme rainbow-delimiters paredit cider magit ag projectile spacemacs-theme smex)))
 '(ring-bell-function (quote ignore))
 '(selectric-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
