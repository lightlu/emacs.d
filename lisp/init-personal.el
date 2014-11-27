(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-startup-indented t))

(global-set-key (kbd "C-x c") 'ido-switch-buffer)

;; hideshow-org.el
(add-to-list 'load-path "~/.emacs.d/el-get/hideshow-org")
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

;; shell buffers
;(shell "*22sh*")
;(with-current-buffer "*22sh*"
;(goto-char (point-max))
;(insert "cd 2510/"))

;(shell "*11sh*")
;(with-current-buffer "*11sh*"
;(goto-char (point-max)))
;(comint-send-input nil t) ;; enter
;(put 'upcase-region 'disabled nil)

(provide 'init-personal)
