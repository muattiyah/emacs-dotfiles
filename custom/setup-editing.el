(require 'asm-mode)
(add-hook 'asm-mode-hook (lambda ()
													 (setq indent-tabs-mode nil)))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-expert t)

(show-paren-mode t)

(add-hook 'emacs-lisp-mode-hook #'prettify-symbols-mode)
;; (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)


(provide 'setup-editing)
