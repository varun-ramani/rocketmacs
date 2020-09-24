;; Most of the optimizations that would normally go in this file have
;; been shifted to early-init.el

;; This file primarily exists to clean up after early-init.el

(provide 'opt-startup)

(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold 800000)))


