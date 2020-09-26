(use-package general)

;; The keybindings Rocketmacs uses are built around evil-mode.
;; You can get rid of evil-mode by removing this use-package
;; declaration, but that also means that most of Rocketmacs' keybindings
;; will cease to work.
(use-package evil
  :init
  (evil-mode))

;; Trigger M-x
(general-define-key
 :keymaps 'normal
 :prefix "SPC"

 "SPC" 'counsel-M-x)

;; Keybindings for org-mode (mainly org-agenda)
(general-define-key
 :keymaps 'normal
 :prefix "SPC o a"

 "l" 'org-agenda-list
 "a" 'org-agenda-file-to-front)

(provide 'keybindings)
