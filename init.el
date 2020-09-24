;;; init.el --- My Emacs configuration -*- lexical-binding: t; -*-

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Set the initial directory to the home directory
(setq default-directory "~/")

;; Permit the configuration to load the files inside config
;; Blatent copy of a cool snippet of code
;; from https://github.com/seagle0128/.emacs.d/blob/master/init.el
(defun load-config-libraries (&rest _)
  (dolist (dir '("config/" "config/optimizations" "config/experience" "config/interface"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(load-config-libraries)

(require 'optimizations)
(require 'clean-interface)


(require 'setup-packages)

(require 'setup-diminish)
(require 'setup-ivy)

(require 'setup-interface)

(require 'keybindings)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/org/FIRE120.org" "~/org/Personal.org" "~/org/Deep Learning.org" "~/org/CMSC132.org" "~/org/BSCI189I.org" "~/org/MATH141.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
