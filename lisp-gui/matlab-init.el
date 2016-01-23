;;; Packages --- Sumary;
;;; Commentary:
;;; Code:


;;MATLAB
;;(add-to-list 'load-path "~/.emacs.d/elpa/matlab-mode-20141227.1244")
;;(load-library "matlab-load")
(setq matlab-shell-command-switches (quote ("-nodesktop -nosplash")))

(provide 'matlab-init)


;; Shortcut
;; C-c C-r : run region in matlab
;; C-c C-s : save and run the file in matlab
;; C-c C-c E : insert a matching END statment
;; M-TAB : symbol/variable completion based on the script
;; M-s : brings up matlab-shell (in a different buffer if available)
;; M-p, M-n : in matlab-shell (or any emacs shell) cycle through past commands


;;; matlab-init ends here
