;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;flycheck configuration
(add-hook 'after-init-hook #'global-flycheck-mode)
;;(setq flycheck-highlighting-mode 'lines)
;;(add-hook 'prog-mode-hook 'flycheck-mode)

(require 'flycheck-tip)
(define-key flycheck-mode-map (kbd "C-c C-n") 'flycheck-tip-cycle)
(flycheck-tip-use-timer 'verbose)


(provide 'init-flycheck)
;;; init-flycheck.el ends here
