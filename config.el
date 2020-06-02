;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(setq doom-font (font-spec :family "JetBrains Mono" :size 11))

;; Slightly more sane scrolling.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

;; Load my default theme.
(setq doom-theme 'doom-dracula)

;; Stop bothering me about this shit.
(setq tags-revert-without-query t)

;; Don't keep other tags tables.
(setq tags-add-tables nil)

;; Like vim's magic relative line numbers.
(setq-default display-line-numbers-type 'relative)

;; Easier window movement.
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)

;; Always start with a maximized frame (window in the OS).
(add-hook 'window-setup-hook #'toggle-frame-maximized)

(add-hook! ruby-mode
  ;; Add _ as a word character.
  (modify-syntax-entry ?_ "w")
  ;; Use etags for ruby-mode.
  (set-company-backend! 'ruby-mode 'company-etags))

(add-hook! web-mode
  ;; Add _ as a word character.
  (modify-syntax-entry ?_ "w"))

(add-hook! js2-mode
  ;; Add _ as a word character.
  (modify-syntax-entry ?_ "w"))

;; Matchit
(global-evil-matchit-mode)

;; Tell Projectile to look in ~/Code and ~/Clones for projects.
(setq projectile-project-search-path '("~/Code" "~/Code/prepaid" "~/Code/prepaid/wt" "~/Code/clones"))

;; Good god, stop copying everything I delete!
(simpleclip-mode)
