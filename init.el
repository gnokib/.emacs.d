;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(defun is-in-gui()
  (display-graphic-p))
(defmacro when-gui (&rest body)
  `(when (is-in-gui) ,@body))


(defun is-in-terminal()
  (not (display-graphic-p)))  
(defmacro when-terminal (&rest body)
  `(when (is-in-terminal) ,@body))


;; gui config
(when-gui
 (add-to-list 'load-path "~/.emacs.d/lisp-gui")
 (add-to-list 'load-path "~/.emacs.d/pkgs/flycheck-tip")
 (require 'packages-init)
 (require 'cl)    ;;; modeline
 (require 'theme-init)
 (require 'modeline-init)
 (require 'general-init)

 ;; projectile, flycheck, anzu,  modeline
 (require 'projectile-init)
 (require 'flycheck-init)
 (require 'anzu-init)

 ;;ido smex flx
 (require 'ido-init)
 (require 'smex-init)

 ;;yas company indent
 ;; (require 'ac-init)
 (require 'yas-init)
 (require 'company-init)
 (require 'indent-init)

 ;;window buffer 
 (require 'winbuf-init)
 (require 'undo-init)
 (require 'parens-init)
 (require 'path-init)
 ;;(require 'magit-init)

 ;;programming
 ;; (require 'hs-init)
 (require 'matlab-init)
 ;;(require 'python-init)
 (require 'latex-init)
)



;;; terminal config 
(when-terminal
 (add-to-list 'load-path "~/.emacs.d/lisp-term")
 (add-to-list 'load-path "~/.emacs.d/pkgs/flycheck-tip")
 (require 'init-packages)
 (require 'cl)    ;;; modeline 
 (require 'init-general)
 (require 'init-modeline)
 (require 'init-anzu)
 (require 'init-flycheck)
 (require 'init-projectile)
 (require 'init-ido)
 (require 'init-smex)
 (require 'init-parens) 
 (require 'init-path)
 (require 'init-matlab) 
 (require 'init-undo)
 (require 'init-winbuf) 
)

(provide 'init)
;;; init.el ends here
