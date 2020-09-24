(setq gc-cons-threshold 200000000)

(when (featurep 'ns)
  (push '(ns-transparent-titlebar . t) default-frame-alist))

(setq file-name-handler-alist nil)

(setq inhibit-startup-message t)
