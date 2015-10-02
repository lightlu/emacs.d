;;
;; yang
;;   For editing somewhat larger YANG modules, add this to your .emacs
     (setq blink-matching-paren-distance nil)
;;
;;   Common YANG layout:
     (defun my-yang-mode-hook ()
       "Configuration for YANG Mode. Add this to `yang-mode-hook'."
       (if window-system
         (progn
     	     (c-set-style "BSD")
     	     (setq indent-tabs-mode nil)
     	     (setq c-basic-offset 2)
     	     (setq font-lock-maximum-decoration t)
     	     (font-lock-mode t))))

     (add-hook 'yang-mode-hook 'my-yang-mode-hook)
;
(autoload 'yang-mode "yang-mode" "Major mode for editing YANG modules." t)
(add-to-list 'auto-mode-alist '("\\.yang$" . yang-mode))

(defun show-onelevel ()
  "show entry and children in outline mode"
  (interactive)
  (show-entry)
  (show-children))

(defun my-yang-outline-bindings ()
  "sets shortcut bindings for outline minor mode"
  (interactive)
;;  (local-set-key [?\C-,] 'hide-body)
;;  (local-set-key [?\C-.] 'show-all)
;;  (local-set-key [C-up] 'outline-previous-visible-heading)
;;  (local-set-key [C-down] 'outline-next-visible-heading)
;;  (local-set-key [C-left] 'hide-subtree)
;;  (local-set-key [C-right] 'show-onelevel)
;;  (local-set-key [M-up] 'outline-backward-same-level)
;;  (local-set-key [M-down] 'outline-forward-same-level)
  (local-set-key [M-left] 'hide-subtree)
  (local-set-key [M-right] 'show-onelevel)
  (local-set-key [M-down] 'show-subtree))

(add-hook
 'outline-minor-mode-hook
 'my-yang-outline-bindings)

(defconst sort-of-yang-identifier-regexp "[-a-zA-Z0-9_\\.:]*")

(provide 'init-personal-yang)
