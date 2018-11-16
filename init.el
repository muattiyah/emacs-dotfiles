(tool-bar-mode -1)
(scroll-bar-mode -1)
;; For mac os x
;;(toggle-frame-maximized)

(setq inhibit-startup-message t)

;; Make OS X terminal happy
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

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
(require 'setup-tide)
(require 'setup-python)

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
		("ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "54d091c28661aa25516d4f58044412e745eddb50c8e04e3a0788a77941981bb0" "30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "fd2cf9ad9895d93138dd67215702280e0db56e796ee62dea92043eed4b23177c" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "a566448baba25f48e1833d86807b77876a899fc0c3d33394094cf267c970749f" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "b4c13d25b1f9f66eb769e05889ee000f89d64b089f96851b6da643cee4fdab08" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "8cb818e0658f6cc59928a8f2b2917adc36d882267bf816994e00c5b8fcbf6933" default)))
 '(global-linum-mode nil)
 '(markdown-command "pandoc")
 '(minimap-mode nil)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
	 (quote
		(which-key sublimity docker-compose-mode dockerfile-mode python-pytest py-autopep8 company-jedi 0blayout tide pipenv rcirc-notify plan9-theme restclient go-mode markdown-mode yaml-mode glsl-mode gruvbox-theme password-store slime slime-theme ## sml-mode clojure-cheatsheet minimap neotree intero ranger ggtags flycheck white-sand-theme flatui-theme ido-vertical-mode rust-mode figlet zenburn-theme doom-themes elfeed-web elfeed nyan-mode powerline nlinum selectric-mode org-bullets fill-column-indicator elisp-format circe sicp ledger-mode latex-preview-pane exec-path-from-shell auctex org flatland-black-theme flatland-theme haskell-mode ibuffer-projectile ibuffer-rcirc solarized-theme rainbow-delimiters paredit cider magit ag projectile spacemacs-theme smex)))
 '(ring-bell-function (quote ignore))
 '(selectric-mode nil)
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
