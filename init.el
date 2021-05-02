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
(setq-default indent-tabs-mode nil)
(setq-default indicate-empty-lines t)
(setq-default show-trailing-whitespace t)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Make ansi-term and zsh play nice
(setq system-uses-terminfo nil)


;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "http://stable.melpa.org/packages/") t)
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
;; (require 'setup-rcirc)
;; (require 'setup-circe)
(require 'setup-org)
(require 'setup-tex)
(require 'setup-elfeed)
(require 'setup-tide)
(require 'setup-python)
(require 'setup-rust)

(projectile-global-mode)
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-x g") 'magit-status)


(require 'fill-column-indicator)
(setq fill-column 79)

(global-nlinum-mode)
(immortal-scratch-mode)
(marginalia-mode)

(defun turn-on-highlight-indentation-mode ()
(interactive)
  (highlight-indentation-mode 1))

(define-globalized-minor-mode global-highlight-indentation-mode
  highlight-indentation-mode turn-on-highlight-indentation-mode)

(global-highlight-indentation-mode 1)


(windmove-default-keybindings)

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
 '(ansi-color-names-vector
   ["#FAF7EE" "#4E4B3D" "#737063" "#201D0E" "#373426" "#4E4B3D" "#292617" "#201D0E"])
 '(custom-safe-themes
   '("d0aa1464d7e55d18ca1e0381627fac40229b9a24bca2a3c1db8446482ce8185e" "387b487737860e18cbb92d83a42616a67c1edfd0664d521940e7fbf049c315ae" "4af38f1ae483eb9335402775b02e93a69f31558f73c869af0d2403f1c72d1d33" "dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "a5d04a184d259f875e3aedbb6dbbe8cba82885d66cd3cf9482a5969f44f606c0" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "e677cc0546b0c129fda0675354245513543a56671d9747c81d335505f699000b" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "9743d1941d0559264aa21a542e55043c032d779024cd70468d1123c320699fd1" "6231254e74298a1cf8a5fee7ca64352943de4b495e615c449e9bb27e2ccae709" "d5d2ab76985738c142adbe6a35dc51c8d15baf612fdf6745c901856457650314" "6e2d579b02aadc933f434003f49d269d004f5c7094eb53658afbacc817761d83" "b9dda6ca36e825766dfada5274cf18d8a5bce70676b786e3260094e0cd8c0e62" "6cbf6003e137485fb3f904e76fb15bc48abc386540f43f54e2a47a9884e679f6" "e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "d3e333eaa461c82a124f7e7a7a9637d56fc3019478becb1847952804ca67743e" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "7f89ec3c988c398b88f7304a75ed225eaac64efa8df3638c815acc563dfd3b55" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "54d091c28661aa25516d4f58044412e745eddb50c8e04e3a0788a77941981bb0" "30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" "392395ee6e6844aec5a76ca4f5c820b97119ddc5290f4e0f58b38c9748181e8d" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9b35c097a5025d5da1c97dba45fed027e4fb92faecbd2f89c2a79d2d80975181" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "b54826e5d9978d59f9e0a169bbd4739dd927eead3ef65f56786621b53c031a7c" "fd2cf9ad9895d93138dd67215702280e0db56e796ee62dea92043eed4b23177c" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "a566448baba25f48e1833d86807b77876a899fc0c3d33394094cf267c970749f" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "b4c13d25b1f9f66eb769e05889ee000f89d64b089f96851b6da643cee4fdab08" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "8cb818e0658f6cc59928a8f2b2917adc36d882267bf816994e00c5b8fcbf6933" default))
 '(fci-rule-color "#FFFFF8")
 '(global-linum-mode nil)
 '(markdown-command "pandoc")
 '(nyan-mode nil)
 '(org-list-allow-alphabetical t)
 '(package-selected-packages
   '(highlight-indentation marginalia immortal-scratch indent-guide basic-theme geiser geiser-mit mw-thesaurus ipcalc zone-sl zone-nyan tron-legacy-theme acme-theme bubbleberry-theme kubel tao-theme brutal-theme flycheck-ledger magit know-your-http-well web-mode darktooth-theme which-key docker-compose-mode dockerfile-mode python-pytest py-autopep8 company-jedi 0blayout tide pipenv rcirc-notify plan9-theme restclient go-mode markdown-mode yaml-mode glsl-mode gruvbox-theme password-store slime slime-theme ## sml-mode clojure-cheatsheet neotree intero ranger ggtags flycheck white-sand-theme flatui-theme ido-vertical-mode rust-mode figlet zenburn-theme doom-themes elfeed-web elfeed nyan-mode powerline nlinum selectric-mode org-bullets fill-column-indicator elisp-format circe sicp ledger-mode latex-preview-pane exec-path-from-shell auctex org flatland-black-theme flatland-theme haskell-mode ibuffer-projectile ibuffer-rcirc solarized-theme rainbow-delimiters paredit cider ag projectile spacemacs-theme smex))
 '(ring-bell-function 'ignore)
 '(selectric-mode nil)
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   '((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809")))
 '(vc-annotate-very-old-color "#4E4B3D")
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
