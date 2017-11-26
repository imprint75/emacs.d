;;; package --- local init stuff
;;; Commentary:
;;; Code:

(setq save-interprogram-paste-before-kill nil)

(load-theme 'sanityinc-tomorrow-night t)

(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") 'hippie-expand)

;; map fn keys to some common stuff
(global-set-key (kbd "<mouse-4>") 'magit-status)
(global-set-key (kbd "<mouse-3>") 'helm-ag-project-root)
(global-set-key (kbd "<f15>") 'helm-ag-project-root)
(global-set-key (kbd "<f13>") 'magit-status)
(global-set-key (kbd "<f12>") 'buffer-menu)
(global-set-key (kbd "<f11>") 'switch-to-buffer)
(global-set-key (kbd "<f10>") 'kill-buffer)
(global-set-key (kbd "<f9>") 'delete-window)
(global-set-key (kbd "<f8>") 'helm-projectile-find-file)
(global-set-key (kbd "<f2>") 'sr-speedbar-toggle)
(global-set-key (kbd "<f1>") 'other-window)
(global-set-key (kbd "<f5>") (lambda () (interactive) (other-window -1)))

;; navigate windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; enable line numbers by default and add a space after the number
(global-linum-mode)
(setq linum-format "%d ")

;; set the window title to be filename and path
(setq frame-title-format '("Emacs @ " ": %b %+%+ %f"))

;; don't do the auto centered cursor thing where the screen jumps around
(setq scroll-step 1)
(setq scroll-conservatively 1)
(setq auto-window-vscroll nil)

;; trying to deal with the undo buffer size warning
(add-hook 'Buffer-menu-mode-hook 'buffer-disable-undo)

;; carbon emacs meta/option
(setq mac-option-modifier 'meta)
(global-set-key (kbd "<M-right>") 'forward-word)
(global-set-key (kbd "<M-left>") 'backward-word)

;; (require 'magit-gitflow)
;; (add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

;; magit pretty please
;; (setq magit-emacsclient-executable
;;       (shell-quote-argument magit-emacsclient-executable))

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(global-set-key (kbd "M-<up>") 'move-line-up)

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "M-<down>") 'move-line-down)

(defun duplicate-line ()
  "Duplicate current line."
  (interactive)
  (let ((text (buffer-substring-no-properties (point-at-bol) (point-at-eol)))
        (cur-col (current-column)))
    (end-of-line) (insert "\n" text)
    (beginning-of-line) (right-char cur-col)))

(global-set-key (kbd "C-c C-d") 'duplicate-line)

(defun copy-line ()
  (interactive "p")
  (kill-ring-save (line-beginning-position)
                  (line-end-position)))

(global-set-key (kbd "C-c C-p") 'whole-line-or-region-kill-ring-save)

(after-load 'paredit-everywhere
  (define-key paredit-everywhere-mode-map (kbd "M-}") nil))

(provide 'init-local)
;;; init-local.el ends here
