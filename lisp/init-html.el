(require-package 'tagedit)
(after-load 'sgml-mode
  (tagedit-add-paredit-like-keybindings)
  (add-hook 'sgml-mode-hook (lambda () (tagedit-mode 1))))

(add-auto-mode 'html-mode "\\.\\(jsp\\|tmpl\\)\\'")
(add-to-list 'auto-mode-alist '("\\.html?$" . web-mode))

;; Note: ERB is configured in init-ruby

(provide 'init-html)
