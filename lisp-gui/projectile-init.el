;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(require 'projectile)
;; projectile config

;;(add-hook 'prog-mode-hook 'projectile-on)
(projectile-global-mode)


;; use native projectile index method rather than find or git
(setq projectile-indexing-method 'native)
(provide 'projectile-init)

;;; projectile-init ends here
