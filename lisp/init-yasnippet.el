(require-package 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        ))
(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "C-x C-p") 'yas-expand)
(provide 'init-yasnippet)

;;; init-yasnippet ends here
