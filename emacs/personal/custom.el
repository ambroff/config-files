(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (json-mode protobuf-mode rtags company-irony irony irony-eldoc cmake-mode yaml-mode markdown-mode zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number move-text magit projectile imenu-anywhere hl-todo guru-mode gitignore-mode gitconfig-mode git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring beacon anzu ace-window)))
 '(rtags-completing-read-behavior (quote insert-default))
 '(rtags-verify-protocol-version nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq prelude-guru nil)

;; C++ dev setup
(c-set-offset 'innamespace 0)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook #'irony-eldoc)
(add-hook 'irony-mode-hook 'company-mode)

;; (set rtags-verify-protocol-version nil)
;; (require 'rtags)
;; (rtags-start-process-unless-running)
;; (define-key c-mode-base-map (kbd "M-.")
;;   (function rtags-find-symbol-at-point))
;; (define-key c-mode-base-map (kbd "M-,")
;;   (function rtags-find-references-at-point))

;; (defun rtags-diagnostics (&optional restart nodirty)
;;   (interactive "P")
;;   (message "rtags-diagnostics has scalability issues and has been disabled.")

(company-mode t)
(ido-mode t)
(show-paren-mode t)
