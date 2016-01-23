;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(company-auctex-init)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;;(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; (setq reftex-plug-into-AUCTeX t)
;;(setq TeX-PDF-mode t)
(add-to-list 'company-backends 'company-math-symbols-latex)

;; (company-auctex-init)

(provide 'latex-init)

;;; latex-init ends here
