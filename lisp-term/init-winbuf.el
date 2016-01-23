;;; Packages --- Sumary;
;;; Commentary:
;;; Code:


;; When splitting window, show (other-buffer) in the new window
(defun split-window-func-with-other-buffer (split-function)
  (lexical-let ((s-f split-function))
    (lambda ()
      (interactive)
      (funcall s-f)
      (set-window-buffer (next-window) (other-buffer)))))

(global-set-key "\C-x2" (split-window-func-with-other-buffer
			 'split-window-vertically))
(global-set-key "\C-x3" (split-window-func-with-other-buffer
			 'split-window-horizontally))


(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-[") 'previous-buffer)


;; enable winner mode
(winner-mode 1)

;; SWITCH WINDOWS
;; (require 'switch-window)
;; (global-set-key (kbd "C-x o") 'switch-window)

;; jump around using h,l,k,j
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)



(provide 'init-winbuf)
;;; init-winbuf.el ends here
