;; This module provides optimizations that make Rocketmacs
;; feel snappy during use.

;; Allocate 200MB of memory before the GC kicks in. This is used
;; to prevent the GC from activating during use of things
;; like Ivy in the minibuffer.
(defun boost-gc-threshold()
  (setq gc-cons-threshold 200000000))

;; Reset the GC threshold to 800KB
(defun reset-gc-threshold()
  (setq gc-cons-threshold 800000))

;; A large gc threshold is important during minibuffer use
;; as it prevents ivy from lagging. It must then be toned down after the
;; minibuffer is closed.
(add-hook 'minibuffer-setup-hook #'boost-gc-threshold)
(add-hook 'minibuffer-exit-hook #'reset-gc-threshold)


(provide 'opt-use)
