(defun rocketmacs-support-elisp ()
  (company-mode))

(add-hook 'emacs-lisp-mode-hook 'rocketmacs-support-elisp)

(provide 'support-elisp)
