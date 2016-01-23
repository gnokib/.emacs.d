;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;window and bars configuration
;;(when window-system (set-frame-size (selected-frame) 158 39))
(scroll-bar-mode -1)
(tool-bar-mode -1)
;;(menu-bar-mode -1)


;;mini buffer configuration
(setq resize-mini-windows t)
;;(defalias 'yes-or-no-p 'y-or-n-p)


;;nofiication, warning
(setq visible-bell 1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)  ;;disable initial welcome page
;;(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)


;;cursor and font config
(blink-cursor-mode -1)
(set-cursor-color "#9C7BE0")
;;(set-default-font "Monaco 14")  ;;probably works as well as set-frame-font
;;(set-frame-font "Monaco 14")
;;(global-linum-mode 1)           ;;display linez number on left but unstable
;;(add-hook 'prog-mode-hook 'linum-mode)


;;disable automatic backup *.*~
(setq make-backup-files nil)


;;; mouse smooth-scrolling
;; (setq scroll-conservatively 0)
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
;; (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;; (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;; (setq scroll-step 1) ;; keyboard scroll one line at a time



(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(global-set-key (kbd "M-/") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "M-\\") 'dabbrev-expand)


(provide 'init-general)
;;; init-general ends here
