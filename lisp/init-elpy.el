;;; Follow all setup instructions first
;;; https://github.com/jorgenschaefer/elpy
(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")
(define-key elpy-mode-map (kbd "M-<left>") nil)
(define-key elpy-mode-map (kbd "M-<right>") nil)
(define-key elpy-mode-map (kbd "C-c C-d") nil)
(provide 'init-elpy)
;;; init-elpy ends here
