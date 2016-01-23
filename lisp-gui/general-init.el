;;; Packages --- Sumary;
;;; Commentary:
;;; Code:


;;window , bar config
(when window-system
  (set-frame-size (selected-frame) 158 39)
  (set-frame-position (selected-frame) 0 0)
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
)
(scroll-bar-mode -1)
(tool-bar-mode -1)
;;(menu-bar-mode -1)


;;mini buffer configuration
(setq resize-mini-windows t)

;; turn off warning
(setq ring-bell-function 'ignore)

;; turn off welcome message
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-message t)  ;;disable initial welcome page
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil)
;;(setq initial-major-mode 'org-mode)


;;cursor, font config
(blink-cursor-mode -1)
(set-cursor-color "#9C7BE0")
(set-frame-font "Monaco 14")
;;(global-linum-mode 1)           ;;display linez number on left but unstable
;;(add-hook 'prog-mode-hook 'linum-mode)



;; disable automatic backup *.*~
(setq make-backup-files nil)
(setq auto-save-default nil)

;;; mouse smooth-scrolling
;; (setq scroll-conservatively 0)
;; (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
;; (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;; (setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;; (setq scroll-step 1) ;; keyboard scroll one line at a time


;; steal from http://seancribbs.com/emacs.d/
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


;; (defun rename-this-buffer-and-file ()
;;   "Renames current buffer and file it is visiting."
;;   (interactive)
;;   (let ((name (buffer-name))
;;         (filename (buffer-file-name)))
;;     (if (not (and filename (file-exists-p filename)))
;;         (error "Buffer '%s' is not visiting a file!" name)
;;       (let ((new-name (read-file-name "New name: " filename)))
;;         (cond ((get-buffer new-name)
;;                (error "A buffer named '%s' already exists!" new-name))
;;               (t
;;                (rename-file filename new-name 1)
;;                (rename-buffer new-name)
;;                (set-visited-file-name new-name)
;;                (set-buffer-modified-p nil)
;;                (message "File '%s' successfully renamed to '%s'" name (file-name-nondirectory new-name))))))))
;; (global-set-key (kbd "C-c r") 'rename-this-buffer-and-file)

(defun rename-file-and-buffer ()
  "Rename the current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (cond
         ((vc-backend filename) (vc-rename-file filename new-name))
         (t
          (rename-file filename new-name t)
          (set-visited-file-name new-name t t)))))))
(global-set-key (kbd "C-c r")  'rename-file-and-buffer)

(provide 'general-init)
;;; general-init ends here
