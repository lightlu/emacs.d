(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(add-hook 'python-mode-hook (function yafolding-mode))

(provide 'init-python-mode)
