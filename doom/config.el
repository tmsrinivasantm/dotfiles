;; ################################################################################# set ############################################################################################

(setq doom-theme 'catppuccin)
(setq display-line-numbers-type t)
(setq org-directory "~/org/")
(setq doom-font (font-spec :family "JetBrains Mono" :size 13)
      doom-symbol-font (font-spec :family "JetBrains Mono"))
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
;;
 (define-key evil-insert-state-map (kbd "C-V") 'clipboard-yank)
 (define-key evil-normal-state-map (kbd "s") 'evil-substitute)
 (define-key evil-normal-state-map (kbd "C-/") 'comment-line)
 (define-key evil-normal-state-map (kbd "C-l") 'evil-ex-nohighlight)
 (define-key evil-insert-state-map (kbd "C-S-SPC") '+term/toggle)
 (define-key evil-normal-state-map (kbd "C-S-SPC") '+term/toggle)
 (define-key evil-normal-state-map (kbd "M-n") '+workspace/other)

;; ################################################################################# End ############################################################################################

(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(scroll-bar-mode -1)
