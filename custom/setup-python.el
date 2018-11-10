;;; package --- Summary
;;; Commentary:

;;; Code:
(require 'flycheck)
(setq flycheck-python-pycompile-executable "/usr/local/bin/python3")


(add-hook 'python-mode-hook #'pipenv-mode)


;; Company Mode
(require 'company)
(add-to-list 'company-backends 'company-jedi)
(add-hook 'python-mode-hook #'company-mode)

;; Formatting
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)



(provide 'setup-python)
;;; setup-python ends here
