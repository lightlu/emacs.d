(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(evil-move-cursor-back nil)
 '(evil-symbol-word-search t)
 '(evil-toggle-key "C-c z")
 '(evil-want-C-w-delete t)
 '(evil-want-C-w-in-emacs-state nil)
 '(evil-want-visual-char-semi-exclusive t)
 '(init-color-theme-no-window-system-bg-color "color-16")
 '(init-color-theme-window-system-bg-color "black")
 '(linum-disabled-modes-list (quote (eshell-mode shell-mode erc-mode help-mode jabber-roster-mode jabber-chat-mode twittering-mode compilation-mode weibo-timeline-mode woman-mode Info-mode calc-mode calc-trail-mode comint-mode gnus-group-mode inf-ruby-mode gud-mode term-mode w3m-mode speedbar-mode gnus-summary-mode gnus-article-mode calendar-mode image-mode org-mode)))
 '(org-startup-indented t)
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(term-bind-key-alist (quote (("C-c C-c" . term-interrupt-subjob) ("C-p" . previous-line) ("C-n" . next-line) ("C-s" . isearch-forward) ("C-r" . isearch-backward) ("C-m" . term-send-raw) ("C-<right>" . term-send-forward-word) ("C-<left>" . term-send-backward-word) ("M-o" . term-send-backspace) ("M-p" . term-send-up) ("M-n" . term-send-down) ("M-d" . term-send-forward-kill-word) ("M-<backspace>" . term-send-backward-kill-word) ("M-r" . term-send-reverse-search-history) ("M-," . term-send-input) ("M-." . comint-dynamic-complete))))
 '(term-buffer-maximum-size 10240)
 '(term-unbind-key-list (quote ("C-x" "C-o")))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil :family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 128 :width normal))))
 '(term-color-blue ((t (:background "blue2" :foreground "DeepSkyBlue2")))))
