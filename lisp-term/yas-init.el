;;; Packages --- Sumary;
;;; Commentary:
;;; Code:
;; YASNIPPET
(require 'yasnippet)
;; (yas-reload-all)
;;(yas-global-mode 1)
;;(setq yas-prompt-functions '(yas/ido-prompt yas/dropdown-prompt))
;; (add-hook 'c++-mode-hook #'yas-minor-mode)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(add-hook 'LaTeX-mode-hook #'yas-minor-mode)

;;(add-to-list )

(provide 'yas-init)

;;; yas-init ends here
