;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;TEMPBUF CONFIG
(setq tempbuf-timer 120)
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'completion-list-mode-hook 'turn-on-tempbuf-mode)
;;(add-hook 'find-file-hook 'turn-on-tempbuf-mode)
(add-hook 'compilation-mode-hook 'turn-on-tempbuf-mode)
;;(add-hook 'view-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'help-mode-hook 'turn-on-tempbuf-mode)

(provide 'tempb-init)

;;; tempb-init ends here
