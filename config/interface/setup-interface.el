(use-package doom-modeline
  :init
  (doom-modeline-mode 1))

(use-package nlinum
  :init
  (global-nlinum-mode)
  (setq nlinum-format " %d "))

(provide 'setup-interface)

