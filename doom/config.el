;; ################################################################################# set ############################################################################################

(setq doom-theme 'catppuccin)
(setq catppuccin-flavor 'frappe) ;; or 'latte, 'macchiato, or 'mocha
(setq display-line-numbers-type t)
(setq org-directory "~/org/")
(setq doom-font (font-spec :family "JetBrains Mono NF" :size 13)
      doom-symbol-font (font-spec :family "JetBrains Mono NF"))
 ;; (setq select-enable-clipboard nil)
;; (setq default-frame-alist '((font . "JetBrains Mono Nerd Font 10")))
(setq shell-file-name "/bin/zsh")
(setq default-tab-width 2)
(setq-default evil-kill-on-visual-paste nil)
(setenv "SHELL" shell-file-name)

;; ################################################################################# Hooks ##########################################################################################

(remove-hook 'text-mode-hook #'vi-tilde-fringe-mode)
(remove-hook 'prog-mode-hook #'vi-tilde-fringe-mode)
(remove-hook 'conf-mode-hook #'vi-tilde-fringe-mode)
(remove-hook 'prog-mode-hook #'visual-line-mode)
(remove-hook 'text-mode-hook #'visual-line-mode)

;; ################################################################################# KeyBinds #######################################################################################
(define-key evil-insert-state-map (kbd "C-V") 'clipboard-yank)
(define-key evil-normal-state-map (kbd "s") 'evil-substitute)
(define-key evil-normal-state-map (kbd "/") 'consult-line)
(define-key evil-normal-state-map (kbd "C-'") 'consult-imenu)
(define-key evil-normal-state-map (kbd "C-SPC") '+vterm/toggle)
(define-key evil-insert-state-map (kbd "C-SPC") '+vterm/toggle)
(define-key evil-normal-state-map (kbd "M-j") '+vterm/toggle)
;;
;;  (map! "M-2" #'+workspace/switch-to-1)
;;  (map! "M-3" #'+workspace/switch-to-2)
;;  (map! "M-4" #'+workspace/switch-to-3)
;;  (map! "M-5" #'+workspace/switch-to-4)
;;  (map! "M-6" #'+workspace/switch-to-5)
;;  (map! "M-7" #'+workspace/switch-to-6)
;;  (map! "M-8" #'+workspace/switch-to-7)
;;  (map! "M-9" #'+workspace/switch-to-8)

;; (map! "M-0" #'+workspace/switch-to-9)
;;  (map! "C-c C-SPC" #'projectile-find-file)
;;  (map! "C-," #'beginning-of-buffer)
;;  (map! "C-." #'end-of-buffer)
;;  (map! "C-x C-o" #'other-window)
;;  (map! "M-SPC" #'rectangle-mark-mode)

;; ################################################################################# end ############################################################################################
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(scroll-bar-mode -1)
