(defun rocketmacs-support-python ()
  (setq python-shell-interpreter "python3")
  (use-package lsp-pyright)
  (require 'lsp-pyright)
  (lsp))

(add-hook 'python-mode-hook 'rocketmacs-support-python)

(provide 'support-python)
