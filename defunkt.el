(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/rhtml")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "defunkt/lisp")
(load "defunkt/global")
(load "defunkt/defuns")
(load "defunkt/bindings")
(load "defunkt/modes")
(load "defunkt/theme")
(load "defunkt/temp_files")
(load "defunkt/git")

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'textile-mode)
(vendor 'textmate)
(textmate-mode)
(vendor 'yaml-mode)
