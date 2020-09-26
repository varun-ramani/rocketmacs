(defun rocketmacs-support-cpp ()
  (lsp))

(add-hook 'c++-mode-hook 'rocketmacs-support-cpp)
(add-hook 'c-mode-hook 'rocketmacs-support-cpp)


(provide 'support-cpp)
