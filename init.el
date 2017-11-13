(tool-bar-mode -1)
;; For mac os x
(toggle-frame-maximized)

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
		("a17c68ed6c3feb24eaeb7bb4d69221e0cf3e6a658f1da62c8f8edb90769b7b12" "10e3d04d524c42b71496e6c2e770c8e18b153fcfcc838947094dad8e5aa02cef" "9f569b5e066dd6ca90b3578ff46659bc09a8764e81adf6265626d7dc0fac2a64" "5900bec889f57284356b8216a68580bfa6ece73a6767dfd60196e56d050619bc" "2e973a84accb627f603f309fc13938daa227055d2a6528c80a9b7a9e2dd8da6b" "4182c491b5cc235ba5f27d3c1804fc9f11f51bf56fb6d961f94788be034179ad" "505e8828993252b4c015217772d264ab60bb8434196847fc7ab9135517778dfd" "77ab33a45a8d39566f24cd6a9b28c78eec89882004ed194587e210399813d009" "b378249b7f647796b186c70f61eaaee7aa1bd123681d5ca8c44d3ca8875e1b70" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" "15348febfa2266c4def59a08ef2846f6032c0797f001d7b9148f30ace0d08bcf" "f89b15728948b1ea5757a09c3fe56882c2478844062e1033a29ffbd2ed0e0275" "12e2aee98f651031d10fd58af76250fa8cab6f28b3e88f03b88b7524c9278549" "c50a672a129e71b9362b209c63d4e203ccc88a388c370411535b8b54ecc878bc" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "b81bfd85aed18e4341dbf4d461ed42d75ec78820a60ce86730fc17fc949389b2" "611e38c2deae6dcda8c5ac9dd903a356c5de5b62477469133c89b2785eb7a14d" "6f11ad991da959fa8de046f7f8271b22d3a97ee7b6eca62c81d5a917790a45d9" "365d9553de0e0d658af60cff7b8f891ca185a2d7ba3fc6d29aadba69f5194c7f" "82f02414088ba4b94ee42777e0c86dd2f040f716f091ec7774d9dbbd9288ef6e" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(global-linum-mode nil)
 '(package-selected-packages
	 (quote
		(minimap neotree intero ranger ggtags flycheck white-sand-theme flatui-theme ido-vertical-mode rust-mode figlet zenburn-theme doom-themes elfeed-web elfeed nyan-mode powerline nlinum selectric-mode org-bullets fill-column-indicator elisp-format circe sicp ledger-mode latex-preview-pane exec-path-from-shell auctex org flatland-black-theme flatland-theme haskell-mode ibuffer-projectile ibuffer-rcirc solarized-theme rainbow-delimiters paredit cider magit ag projectile spacemacs-theme smex)))
 '(ring-bell-function (quote ignore))
 '(selectric-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
