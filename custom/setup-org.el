(require 'org)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Information to record when a task moves to the DONE state.
(setq org-log-done t)

(setq org-agenda-files (list "~/org/personal.org"))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 't)))

;; Babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
	 (shell . t)
	 (clojure . t)
	 (js . t)
	 (css . t)))

(setq org-confirm-babel-evaluate nil
			org-src-tab-acts-natively t)

(provide 'setup-org)
