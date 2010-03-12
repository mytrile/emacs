;; others
(load "defunkt/dired")
(load "defunkt/ruby")
(load "defunkt/shell")
(load "defunkt/javascript")
(load "defunkt/python")
(load "defunkt/erc")
(load "defunkt/clojure")
(load "defunkt/coffee")
(load "defunkt/markdown")
(load "defunkt/mustache")
; bash
(setq auto-mode-alist (cons '("\\.bashrc" . sh-mode) auto-mode-alist))

; obj-c
; (setq auto-mode-alist (cons '("\\.m" . objc-mode) auto-mode-alist))
;; (setq c-default-style "bsd" c-basic-offset 2)

; magit
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")))

; paredit
(autoload 'paredit-mode "paredit"
     "Minor mode for pseudo-structurally editing Lisp code."
     t)
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))

; jasper
(setq auto-mode-alist (cons '("\\.jr" . emacs-lisp-mode) auto-mode-alist))

; mode-compile
(autoload 'mode-compile "mode-compile"
   "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)

(autoload 'mode-compile-kill "mode-compile"
 "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)

; ido
;(ido-mode t)
;(setq ido-enable-flex-matching t)

; css
(setq css-mode-indent-depth 2)


; yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
    '(lambda ()
       (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


; c
(add-hook 'c-mode-hook
          '(lambda ()
             (setq c-auto-newline t)
             (define-key c-mode-map "{" 'defunkt/c-electric-brace)))

; cucumber mode
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;textile mode
(add-to-list 'auto-mode-alist '("\.textile$" . textile-mode))

; coffee mode

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(setq show-trailing-whitespace (not buffer-read-only))

(vendor 'textmate)
(textmate-mode)
(setq textmate-find-files-command "git ls-tree --full-tree --name-only -r HEAD")
(add-hook 'before-save-hook 'delete-trailing-whitespace)
