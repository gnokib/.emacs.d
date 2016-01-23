;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;; (custom-set-faces
;;  '(mode-line ((t (:background "#624D6D" :foreground "DarkSlateGray2" :box nil :height 0.87))))
;;  '(mode-line-highlight ((t (:foreground "yellow1"))))
;;  '(mode-line-inactive ((t (:background "#3D6A7A" :foreground "#F5BBFF" :box nil :height 0.87))))
;; )

;; (custom-set-faces
;;  ;;'(mode-line ((t (:box t :height 0.8))))
;;  ;; '(mode-line-highlight ((t (:foreground "yellow1"))))
;;  ;;'(mode-line-inactive ((t (:box t :height 0.8))))
;; )


(setq flycheck-mode-line
      '(:eval
        (pcase flycheck-last-status-change
          ;;(`not-checked nil)
          (`no-checker (propertize "  FlyC[-]"
				   ;;'face '(:foreground "#ffcc33")
				   ))
          (`running (propertize "  FlyC[✷]"
				;;'face '(:foreground "#ffcc33")
				))
          (`errored (propertize "  FlyC[!]"
				;;'face '(:foreground "#ffcc33")
				))
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
                         ;;'face '(:foreground "#ffcc33")
			 )
	     ))
          ;;(`interrupted " -")
          (`suspicious '(propertize "  FlyC[?]"
				    ;;'face '(:foreground "#ffcc33")
				    ))
	  )))
;;8CA3FF


(setq-default mode-line-format
	      '("%e"
		;;mode-line-front-space
		;;mode-line-mule-info
		;;mode-line-client
		;;mode-line-modified
		;;mode-line-remote
		;;mode-line-frame-identification
		;;mode-line-buffer-identification
		(:propertize "%b")
		;;"   "
		;;mode-line-position
		;;(vc-mode vc-mode)
		;;"  "
		(anzu-mode (:eval    ; isearch pos/matches
                            (when (> anzu--total-matched 0)
			      (format "   %s"
				  (anzu--update-mode-line)))))
                "  "
		(:propertize mode-name)

		"  "
		;;custom-projectile-mode-line
		(:propertize
                (:eval (concat " Proj[" (projectile-project-name) "]")));;FFAA94
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
		 ""
		 " (" ;; '%02' to set to 2 chars at least; prevents flickering
		 (:propertize "%l") ","
		 (:propertize "%c")
		 ") "
		 ;;mode-line-position
	        (vc-mode vc-mode)
	 	mode-line-end-spaces)
)



(provide 'init-modeline)

;;; init-modeline.el ends here
