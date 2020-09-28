(use-package company)
(use-package lsp-mode)
(use-package flycheck)
(use-package lsp-ui)
(use-package dap-mode)

(setq read-process-output-max (* 1024 1024))

(setq lsp-completion-provider :capf)
(setq lsp-idle-delay 0.350)
(setq lsp-enable-file-watchers nil)

(setq company-minimum-prefix-length 1
      company-idle-delay 0.05)

(use-package xterm-color)
(setq compilation-environment '("TERM=xterm-256color"))

(defun my/advice-compilation-filter (f proc string)
  (funcall f proc (xterm-color-filter string)))

(advice-add 'compilation-filter :around #'my/advice-compilation-filter)

(provide 'setup-ide)

