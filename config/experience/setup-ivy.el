(use-package ivy
  :straight t
  :defer t)

(use-package counsel
  :straight t
  :defer t
  :delight counsel-mode
  :init (counsel-mode))

(provide 'setup-ivy)
