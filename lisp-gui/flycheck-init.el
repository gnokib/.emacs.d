;;; Packages --- Sumary;
;;; Commentary:
;;; Code:




;;flycheck configuration
;; (add-hook 'after-init-hook #'global-flycheck-mode)
;;(setq flycheck-highlighting-mode 'lines)
(add-hook 'prog-mode-hook 'flycheck-mode)


(setq flycheck-mode-line
      '(:eval
        (pcase flycheck-last-status-change
          ;;(`not-checked nil)
          (`no-checker (propertize "  FlyC[-]" 'face '(:foreground "#ffcc33")))
          (`running (propertize "  FlyC[✷]" 'face '(:foreground "#ffcc33")))
          (`errored (propertize "  FlyC[!]" 'face '(:foreground "#ffcc33")))
          (`finished
           (let* (
	       (error-counts (flycheck-count-errors flycheck-current-errors))
               (no-errors (cdr (assq 'error error-counts)))
               (no-warnings (cdr (assq 'warning error-counts)))
               ;;            (face (cond (no-errors 'error)
               ;;            (no-warnings 'warning)
	       ;;	     (t 'success)))
		  )
	     (propertize (format "  FlyC[%s/%s]" (or no-errors 0)
				 (or no-warnings 0))
                         'face '(:foreground "#ffcc33"))
	     ))
          ;;(`interrupted " -")
          (`suspicious '(propertize "  FlyC[?]"
				    'face '(:foreground "#ffcc33")))
	  )))
;;8CA3FF


(require 'flycheck-tip)
(define-key flycheck-mode-map (kbd "C-c C-n") 'flycheck-tip-cycle)
(flycheck-tip-use-timer 'verbose)


(provide 'flycheck-init)
;;; flycheck-init.el ends here
