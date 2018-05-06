;;; setup-editing --- Summary
;;; Commentary:
;;; Setup the facilities for different editing modes.

;;; Code:
(require 'projectile)
(setq projectile-mode-line
         '(:eval (format " Projectile[%s]"
                        (projectile-project-name))))

(require 'asm-mode)
(add-hook 'asm-mode-hook (lambda ()
													 (setq indent-tabs-mode nil)))

(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-expert t)

(show-paren-mode t)

(add-hook 'emacs-lisp-mode-hook #'prettify-symbols-mode)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'scheme-mode-hook #'prettify-symbols-mode)
(add-hook 'scheme-mode-hook #'paredit-mode)
;; (add-hook 'inferior-scheme-mode-hook #'paredit-mode)
;; (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; (require 'haskell-interactive-mode)
;; (require 'haskell-process)
;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'intero-mode)
(require 'haskell-customize)
(setq haskell-stylish-on-save 't)

(require 'flycheck)
(setq flycheck-python-pycompile-executable "/usr/bin/python3")

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-repl))


;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; Octave
;;;;;;;;;;;;;;;;;;;;
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))



(provide 'setup-editing)
;;; setup-editing ends here
