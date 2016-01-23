;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(require 'company)

;;company configuration
(add-hook 'after-init-hook 'global-company-mode)
;;(add-hook 'prog-mode-hook 'global-company-mode)

(setq company-idle-delay 0.2)


(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))


;;(add-to-list 'company-backends 'company-dabbrev-code)
;;(add-to-list 'company-backends 'company-anaconda)
;;(add-to-list 'company-backends 'company-yasnippet)

(provide 'company-init)

;;; company-init.el ends here
