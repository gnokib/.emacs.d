;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(require 'company)

;;company configuration
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)

;;(add-to-list 'company-backends 'company-dabbrev-code)
;;(add-to-list 'company-backends 'company-anaconda)
;;(add-to-list 'company-backends 'company-yasnippet)


;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (set (make-local-variable 'company-backends)
;;                  '((company-dabbrev-code)))))


(provide 'company-init)

;;; company-init.el ends here
