;;; init.el --- My Emacs configuration -*- lexical-binding: t; -*-

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Set the initial directory to the home directory
(setq default-directory "~/")

;; Permit the configuration to load the files inside config
;; Blatent copy of a cool snippet of code
;; from https://github.com/seagle0128/.emacs.d/blob/master/init.el
(defun load-config-libraries (&rest _)
  (dolist (dir '("config/" "config/optimizations" "config/experience" "config/interface" "config/language-support"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(load-config-libraries)

(require 'optimizations)
(require 'clean-interface)


(require 'setup-packages)

(require 'setup-evil)
(require 'setup-delight)
(require 'setup-ivy)
(require 'setup-projectile)
(require 'setup-editing)

(require 'setup-interface)

(require 'setup-ide)
(require 'support-python)
(require 'support-java)
(require 'support-elisp)
(require 'support-cpp)

(require 'keybindings)

(use-package doom-themes)
(load-theme 'doom-city-lights t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" "24714e2cb4a9d6ec1335de295966906474fdb668429549416ed8636196cb1441" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(org-agenda-files
   '("~/org/FIRE120.org" "~/org/Personal.org" "~/org/Deep Learning.org" "~/org/CMSC132.org" "~/org/BSCI189I.org" "~/org/MATH141.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
