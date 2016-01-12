;;; init-docker.el --- My Emacs configuration

;; Copyright (C) 2015 Mathieu Marques

;; Author: Mathieu Marques <mathieumarques78@gmail.com>
;; Created: 27 May 2015
;; Keywords: convenience
;; Homepage: https://bitbucket.org/angrybacon/dotemacs

;;; Commentary:

;; Configure Dockerfile mode.

;;; Code:


;;=============================================================================
;; Silence the byte-compiler
;;=============================================================================


(require 'use-package)


;;=============================================================================
;; Configure Dockerfile Mode
;;=============================================================================


;; Website: https://github.com/spotify/dockerfile-mode
(use-package dockerfile-mode
  :delight dockerfile-mode "Dockerfile"
  :ensure t

  :init
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))


(provide 'init-docker)
;;; init-docker.el ends here
