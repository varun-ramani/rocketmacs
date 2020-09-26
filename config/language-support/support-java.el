(defun rocketmacs-support-java ()
  (use-package lsp-java)
  (require 'lsp-java)
  (lsp))


(add-hook 'java-mode-hook 'rocketmacs-support-java)

(provide 'support-java)
