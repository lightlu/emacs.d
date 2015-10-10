;; personal short key-bindings
(global-set-key (kbd "C-x c") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-u") 'scroll-up-line)
(global-set-key (kbd "C-x C-d") 'scroll-down-line)

;; hideshow-org.el
(require 'hideshow-org)

;; hs-minor-mode
;; In Emacs 24 or later, you can turn it on in all programming modes using prog-mode-hook.
(add-hook 'prog-mode-hook #'hs-minor-mode)
(global-set-key (kbd "C-c 2 x") (kbd "C-c @ C-h"))
(global-set-key (kbd "C-c 2 s") (kbd "C-c @ C-s"))
(global-set-key (kbd "C-c 2 X") (kbd "C-c @ C-M-h"))
(global-set-key (kbd "C-c 2 S") (kbd "C-c @ C-M-s"))

;; hs-org/minor-mode
(add-hook 'prog-mode-hook #'hs-org/minor-mode)

;;hide-ifdef-mode
(add-hook 'prog-mode-hook 'hide-ifdef-mode)
(global-set-key (kbd "C-c 1 x") (kbd "C-c @ C-d"))
(global-set-key (kbd "C-c 1 s") (kbd "C-c @ C-s"))

(provide 'init-personal)
