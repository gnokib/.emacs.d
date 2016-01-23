;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)


(require 'smartparens-config)
(smartparens-global-mode t)


(require 'highlight-parentheses)
(global-highlight-parentheses-mode 1)
(setq hl-paren-colors
      '("firebrick1" "light green" "yellow1" "SkyBlue3"
	"pink1" "brown" "maroon1" "purple4" "dark blue" "red"))



;; AUTOPAIR
;;(electric-pair-mode t)

(provide 'init-parens)
;;; init-parens.el ends here
