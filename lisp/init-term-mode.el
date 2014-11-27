;;; Package --- terminal support
;; Disable minor mode when term-mode
(add-hook 'term-mode-hook
          (lambda ()
            (if (boundp 'yas-minor-mode) (yas-minor-mode -1))
            (if (boundp 'company-mode) (company-mode -1))
            (linum-mode -1)))

;; @see http://stackoverflow.com/questions/2886184/copy-paste-in-emacs-ansi-term-shell/2886539#2886539
(defun ash-term-hooks ()
  ;; dabbrev-expand in term
  (define-key term-raw-escape-map "/"
    (lambda ()
      (interactive)
      (let ((beg (point)))
        (dabbrev-expand nil)
        (kill-region beg (point)))
      (term-send-raw-string (substring-no-properties (current-kill 0)))))
  ;; yank in term (bound to C-c C-y)
  (define-key term-raw-escape-map "\C-y"
    (lambda ()
      (interactive)
      (term-send-raw-string (current-kill 0)))))
(add-hook 'term-mode-hook 'ash-term-hooks)

;; {{ @see http://emacs-journey.blogspot.com.au/2012/06/improving-ansi-term.html
;; kill the buffer when terminal is exited
(defadvice term-sentinel (around my-advice-term-sentinel (proc msg))
  (if (memq (process-status proc) '(signal exit))
      (let ((buffer (process-buffer proc)))
        ad-do-it
        (kill-buffer buffer))
    ad-do-it))
(ad-activate 'term-sentinel)

;; always use bash
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

;; utf8
(defun my-term-use-utf8 ()
  (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(add-hook 'term-exec-hook 'my-term-use-utf8)

;; }}

;; {{ multi-term
(require-package 'multi-term)
(require 'multi-term)

(defun last-term-buffer (l)
  "Return most recently used term buffer."
  (when l
	(if (eq 'term-mode (with-current-buffer (car l) major-mode))
	    (car l) (last-term-buffer (cdr l)))))

(defun get-term ()
  "Switch to the term buffer last used, or create a new one if
    none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
	(if (or (not b) (eq 'term-mode major-mode))
	    (multi-term)
	  (switch-to-buffer b))))

(defun switch-multi-term-by-index (index)
  (let ((b (get-buffer (format "*%s<%s>*" multi-term-buffer-name index))))
       (when (buffer-live-p b)
	 (switch-to-buffer b))))

(defun term-toggle-line-char-mode ()
    "Toggle term to line and char mode"
    (interactive)
      (if (term-in-line-mode)
          (term-char-mode)
        (term-line-mode)))

(define-key term-mode-map (kbd "C-j") 'term-toggle-line-char-mode)
(define-key term-raw-map (kbd "C-j") 'term-toggle-line-char-mode)
(define-key global-map (kbd "C-x t 1") (lambda () (interactive) (switch-multi-term-by-index "1")))
(define-key global-map (kbd "C-x t 2") (lambda () (interactive) (switch-multi-term-by-index "2")))
(define-key global-map (kbd "C-x t 3") (lambda () (interactive) (switch-multi-term-by-index "3")))
(define-key global-map (kbd "C-x t 4") (lambda () (interactive) (switch-multi-term-by-index "4")))
(define-key global-map (kbd "C-x t 5") (lambda () (interactive) (switch-multi-term-by-index "5")))
(define-key global-map (kbd "C-x t 6") (lambda () (interactive) (switch-multi-term-by-index "6")))
(define-key global-map (kbd "C-x t 7") (lambda () (interactive) (switch-multi-term-by-index "7")))
(define-key global-map (kbd "C-x t 8") (lambda () (interactive) (switch-multi-term-by-index "8")))
(define-key global-map (kbd "C-x t 9") (lambda () (interactive) (switch-multi-term-by-index "9")))
(define-key global-map (kbd "C-x t 0") (lambda () (interactive) (switch-multi-term-by-index "0")))

(define-key global-map (kbd "C-x t t") 'multi-term)
(define-key global-map (kbd "C-x ,") 'multi-term-next)

(setq multi-term-program "/bin/bash")

(custom-set-variables
 '(term-buffer-maximum-size 10240)
 '(term-unbind-key-list (quote ("C-x" "C-o")))
 '(term-bind-key-alist
   (quote (("C-c C-c" . term-interrupt-subjob)
           ("C-p" . previous-line)
           ("C-n" . next-line)
           ("C-s" . isearch-forward)
           ("C-r" . isearch-backward)
           ("C-m" . term-send-raw)
           ("C-<right>" . term-send-forward-word)
           ("C-<left>" . term-send-backward-word)
           ("M-o" . term-send-backspace)
           ("M-p" . term-send-up)
           ("M-n" . term-send-down)
           ("M-d" . term-send-forward-kill-word)
           ("M-<backspace>" . term-send-backward-kill-word)
           ("M-r" . term-send-reverse-search-history)
           ("M-," . term-send-input)
           ("M-." . comint-dynamic-complete)))))

;; }}

(provide 'init-term-mode)
