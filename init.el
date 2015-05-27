;;; init.el --- My Emacs configuration files         -*- lexical-binding: t; -*-

;; Copyright (C) 2014 Mathieu Marques

;; Author: Mathieu Marques <mathieumarques78@gmail.com>
;; Created: 24 Oct 2014
;; Keywords: convenience
;; Homepage: https://bitbucket.org/angrybacon/dotemacs

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; To install, clone `dotemacs/' in your home folder `~/.emacs.d/'.
;;
;; If you have any issue using the following code, please refer to the package's README.

;;; Code:


;;─────────────────────────────────────────────────────────────────────────────
;; Bootstrap configuration
;;─────────────────────────────────────────────────────────────────────────────


;; Custom variables
;; FIXME: This should be removed after `mode-line' has been fixed.
(custom-set-variables
 '(custom-safe-themes '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))


;; Check Emacs' version
(when (version<= emacs-version "24")
  (unless (yes-or-no-p (concat "Your Emacs is getting old. Some functionalities may not work, continue ? "))
    (kill-emacs)))


;; Load dependency paths
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


;;─────────────────────────────────────────────────────────────────────────────
;; Load partials
;;─────────────────────────────────────────────────────────────────────────────


;; Initialize the core configuration
(require 'init-constants)
(require 'init-interface)
(require 'init-elpa)
(require 'init-palettes)


;; Initialize the partials
(require 'init-aliases)
(require 'init-company)
(require 'init-css)
(require 'init-cursor)
(require 'init-dired)
(require 'init-docker)
(require 'init-emmet)
(require 'init-expand-region)
;; (require 'init-fundamental)
(require 'init-git)
(require 'init-golden-ratio)
(require 'init-helm)
(require 'init-help)
(require 'init-html)
(require 'init-javascript)
(require 'init-json)
;; (require 'init-lisp)
(require 'init-markdown)
(require 'init-multiple-cursors)
(require 'init-org)
(require 'init-osx)
(require 'init-parentheses)
(require 'init-projectile)
(require 'init-python)
(require 'init-shell)
(require 'init-theme)
(require 'init-utilities)
(require 'init-whitespace)


;; TODO: This needs cleaning.
;; (require 'init-mode-line)
(require 'init-smart-mode-line)


;;─────────────────────────────────────────────────────────────────────────────
;; End of init.el
;;─────────────────────────────────────────────────────────────────────────────
