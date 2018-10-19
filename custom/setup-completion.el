;; ido is the general completion package, it provides completion for buffers
;; and files.
(require 'ido)
(setq ido-enable-flex-matching t)
(setq ido-auto-merge-work-directories-length -1)
(ido-mode t)

;; smex provides completion for M-x.
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c M-x") 'smex-major-mode-commands)

;; ido-vertical-mode makes ido behave like helm
(require 'ido-vertical-mode)
(ido-vertical-mode t)

(provide 'setup-completion)
