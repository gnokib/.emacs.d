;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;(require 'exec-path-from-shell)
;;(exec-path-from-shell-initialize)

;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize))


(setenv "PATH"
	(concat
	 "/Applications/MATLAB_R2014b.app/bin" ":"
	 "/usr/texbin" ":"
	 "/usr/local/bin" ":"
	 (getenv "PATH")))
(setq exec-path (split-string (getenv "PATH") path-separator))



(provide 'init-path)
;;; init-path.el ends here
