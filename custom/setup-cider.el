(add-hook 'cider-mode-hook #'eldoc-mode)
(add-hook 'clojure-mode-hook #'prettify-symbols-mode)
;; (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)

;; auto-enabling of cider-mode in clojure-mode buffers, when starting CIDER.
(setq cider-auto-mode t)

(setq cider-test-show-report-n-success t)

(provide 'setup-cider)
