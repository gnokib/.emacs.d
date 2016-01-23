;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;(require 'exec-path-from-shell)
;;(exec-path-from-shell-initialize)

;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize))


(setenv "PATH"
	(concat
	 "/usr/local/bin" ":"
	 "/usr/bin" ":"
	 "/bin" ":"
	 "/usr/sbin" ":"
	 "/sbin" ":"
	 "/usr/texbin" ":"
	 "/Applications/MATLAB_R2014b.app/bin" ":"
;;	 "/usr/local/sbin" ":"
	 (getenv "PATH")))

(setenv "PYTHONPATH" "/Library/Python/2.7/site-packages:")

(setq exec-path (split-string (getenv "PATH") path-separator))



(provide 'path-init)
;;; path-init.el ends here
