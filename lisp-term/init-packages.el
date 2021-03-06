;;; Packages --- Sumary;
;;; Commentary:
;;; Code:

;;MELPA PACKAGE CONFIGURATION
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(provide 'init-packages)

;;; init-packages.el ends here
