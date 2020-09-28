(use-package general)

;; Trigger M-x
(general-define-key
 :keymaps 'normal
 :prefix "SPC"

 "SPC" 'counsel-M-x)

;; File keybindings
(general-define-key
 :keymaps 'normal
 :prefix "SPC f"
 "f" 'counsel-find-file
 "w" 'save-buffer)

;; Window keybindings
(general-define-key
 :keymaps 'normal
 :prefix "SPC s"

 "h" (lambda () (interactive) (split-window-horizontally))
 "l" (lambda () (interactive) (split-window-horizontally) (evil-window-right 1))
 "j" (lambda () (interactive) (split-window-vertically) (evil-window-down 1))
 "k" (lambda () (interactive) (split-window-vertically)))

(general-define-key
 :keymaps 'normal
 :prefix "SPC w"

 "h" 'evil-window-left
 "l" 'evil-window-right
 "j" 'evil-window-down
 "k" 'evil-window-up)

;; Keybindings for org-mode (mainly org-agenda)
(general-define-key
 :keymaps 'normal
 :prefix "SPC o a"

 "l" 'org-agenda-list
 "a" 'org-agenda-file-to-front)

;; Keybindings for projectile
(general-define-key
 :keymaps 'normal
 :prefix "SPC p"

 "f" 'counsel-projectile-find-file
 "p" 'counsel-projectile-switch-project)

;; Buffer keybindings
(general-define-key
 :keymaps 'normal
 :prefix "SPC b"

 "s" 'counsel-switch-buffer
 "k" 'kill-buffer
 "K" 'kill-buffer-and-window)

;; Tree keybindings
(general-define-key
 :keymaps 'normal
 :prefix "SPC t"

 "t" 'treemacs)

;; Lisp evaluation
(general-define-key
 :keymaps 'normal
 :prefix "SPC e"

 "r" 'eval-region
 "b" 'eval-buffer)

(provide 'keybindings)
