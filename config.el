;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Fira Code all day.
(setq doom-font (font-spec :family "SF Mono" :size 11))

;; Slightly smoother scrolling.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

;; Always start with a maximized frame (window in the OS).
(add-hook 'window-setup-hook #'toggle-frame-maximized)

;; Load my default theme.
(setq doom-theme 'doom-dracula)

;; Tell Projectile to recompile tags on a regular interval.
(setq projectile-enable-idle-timer t)
(setq projectile-idle-timer-seconds 300)

;; Enable simpleclip
(simpleclip-mode 1)

;; Enable evil-matchit
(global-evil-matchit-mode 1)

;; Tell Projectile to look in ~/Code and ~/Clones for projects.
(setq projectile-project-search-path '("~/Code" "~/Code/prepaid" "~/Code/prepaid/wt" "~/Code/clones"))

;; Add _ as a word character in Ruby.
(add-hook 'enh-ruby-mode-hook '(lambda () (modify-syntax-entry ?_ "w")))

;; Stop bothering me about this shit.
(setq tags-revert-without-query t)

;; Like vim's magic relative line numbers.
(setq-default display-line-numbers-type 'relative)

;; Easier window movement.
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right)
