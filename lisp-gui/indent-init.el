;;; package --- Summary
;;; Code:
;;; Commentary:


;; highlight indentation python matlab
;;(add-hook 'python-mode-hook 'highlight-indentation-mode)
(add-hook 'python-mode-hook 'highlight-indentation-current-column-mode)
;;(add-hook 'matlab-mode-hook 'highlight-indentation-current-column-mode)
(add-hook 'java-mode-hook #'aggressive-indent-mode)

(custom-set-faces
 '(highlight-indentation-face ((t (:inherit fringe :background "#4F4D62"))))
 '(highlight-indentation-current-column-face  ((t (:inherit fringe :background "#585473"))))
)
(provide 'indent-init)

;;; indent-init.el ends here
