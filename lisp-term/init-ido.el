;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;ido config
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil
      ido-record-commands nil
      ;; ido-create-new-buffer 'always
      ;; ido-use-filename-at-point nil
      ido-auto-merge-work-directories-length 0
      ido-max-work-directory-list 0
      ido-max-work-file-list 0)



;; (custom-set-faces
;;  '(ido-first-match ((t (:foreground "#ccff66"))))
;;  '(ido-incomplete-regexp ((t (:foreground "#ffffff"))))
;;  '(ido-indicator ((t (:foreground "#ffffff"))))
;;  '(ido-subdir ((t (:foreground "#AA7FD4"))))
;;  `(ido-only-match ((t (:foreground "#DE6877"))))
;;  `(ido-virtual ((t (:foreground "#EDCAAB"))))
;;  ;;`(minibuffer-prompt ((t (:foreground "#78C189"))))
;;  '(lazy-highlight ((t (:foreground "#70C364"))))
;; )


(provide 'init-ido)

;;; init-ido.el ends here
