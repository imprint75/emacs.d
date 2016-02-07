;; include the sr-speedbar and configure some speedbar stuff
(require 'sr-speedbar)
;; (setq speedbar-directory-unshown-regexp "^$")
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")
(custom-set-variables
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-max-width 200)
 '(sr-speedbar-right-side nil)
 )
(make-face 'speedbar-face)
;;(set-face-font 'speedbar-face "Inconsolata-12")
(setq speedbar-mode-hook '(lambda () (buffer-face-set 'speedbar-face)))
(provide 'init-sr-speedbar)
