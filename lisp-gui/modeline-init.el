;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(custom-set-faces
 '(mode-line ((t (:background "#624D6D" :foreground "DarkSlateGray2"
			      :box nil :height 0.87))))
 '(mode-line-highlight ((t (:foreground "yellow1"))))
 '(mode-line-inactive ((t (:background "#3D6A7A" :foreground "#F5BBFF"
				       :box nil :height 0.87))))
)



(setq-default mode-line-format
	      '("%e" mode-line-front-space
		;;mode-line-mule-info
		;;mode-line-client
		;;mode-line-modified
		;;mode-line-remote
		mode-line-frame-identification
		;;mode-line-buffer-identification
		(:propertize "%b"
			     face (:foreground "#FFFEBB"
			     ))
		;;"   "
		;;mode-line-position
		;;(vc-mode vc-mode)
		;;"  "
		(anzu-mode (:eval    ; isearch pos/matches
                            (when (> anzu--total-matched 0)
			      (format "   %s"
				  (anzu--update-mode-line)))))
                "    "
		(:propertize mode-name
			     ;;face (:weight bold)
			     )

		"  "
		;;custom-projectile-mode-line
		(:propertize
                (:eval (concat " Proj[" (projectile-project-name) "]"))
                                 face (:foreground "#ffcc33"));;FFAA94
		""
		flycheck-mode-line
	        ;;mode-line-modes
		;;mode-line-misc-info
		"  "
		" ("
		 (:propertize "%p") ;; % above top
		 "/"
		 (:propertize "%I") ;; size
		 ") "
		 " "
		 " (" ;; '%02' to set to 2 chars at least; prevents flickering
		 (:propertize "%l") ","
		 (:propertize "%c")
		 ") "
		 ;;mode-line-position
	        (vc-mode vc-mode)
	 	mode-line-end-spaces)
)



;; reference to https://github.com/d11wtq/emacs.d/blob/master/init.el lexical-let
(lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
    (lambda ()
      (let ((color (cond ((minibufferp) default-color)
;;			 ((evil-insert-state-p) '("#e80000" . "#ffffff"))
;;			 ((evil-emacs-state-p)  '("#af00d7" . "#ffffff"))
                         ((buffer-modified-p)   '("#7C2B2B" . "#E4E4E4"))
                         (t default-color))))
        (set-face-background 'mode-line (car color))
        (set-face-foreground 'mode-line (cdr color))))))


(provide 'modeline-init)

;;; modeline-init ends here
