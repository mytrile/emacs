;; Blazer Colour Theme for Emacs.
;;
;; To use add the following to your .emacs file (requires the color-theme package):
;;
;; (require 'color-theme)
;; (color-theme-initialize)
;; (load-file "~/.emacs.d/vendor/color-theme-blazer.el")
;;
;; And then (color-theme-blazer) to activate it.
;;
;; Several areas still require improvement such as recognition of code that ruby-mode doesn't
;; yet pick up (eg. parent classes), Rails/Merb keywords, or non Ruby code related areas
;; (eg. dired, HTML, etc). Please feel free to customize further and send in any improvements,
;; patches most welcome.
;;
;; MIT License Copyright (c) 2009 Mitko Kostov <mitkok@7thoughts.com>


(defun color-theme-blazer ()
  "Blazer, Color theme by Mitko Kostov"
  (interactive)
  (color-theme-install
	'(color-theme-blazer
	  ((background-color . "#080808")
		(background-mode . dark)
		(border-color . "black")
		(cursor-color . "#A7A7A7")
		(foreground-color . "#F8F8F8")
		(mouse-color . "sienna1"))
	  (default ((t (:background "black" :foreground "white"))))
	  (blue ((t (:foreground "blue"))))
	  (bold ((t (:bold t))))
	  (bold-italic ((t (:bold t))))
	  (border-glyph ((t (nil))))
	  (buffers-tab ((t (:background "black" :foreground "white"))))
	  (font-lock-builtin-face ((t (:foreground "#0DFACF"))))
	  (font-lock-comment-face ((t (:italic t :foreground "#5F5A60"))))
	  (font-lock-constant-face ((t (:foreground "#ff99d9"))))
	  (font-lock-doc-string-face ((t (:foreground "DarkOrange"))))
	  (font-lock-function-name-face ((t (:foreground "#00ded0"))))
	  (font-lock-keyword-face ((t (:foreground "#fd3256"))))
	  (font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
	  (font-lock-reference-face ((t (:foreground "SlateBlue"))))

	  (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
	  (font-lock-regexp-grouping-construct ((t (:foreground "red"))))

	  (font-lock-string-face ((t (:foreground "#41ffbe"))))
	  (font-lock-type-face ((t (:foreground "#6eabff"))))
	  (font-lock-variable-name-face ((t (:foreground "#a4bdfd"))))
	  (font-lock-warning-face ((t (:bold t :background "#EE799F" :foreground "red"))))
	  (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
	  (region ((t (:background "#27292A"))))
	  (mode-line ((t (:background "#ff0048" :foreground "black"))))
	  (highlight ((t (:background "#111111"))))
	  (highline-face ((t (:background "SeaGreen"))))
	  (italic ((t (nil))))
	  (left-margin ((t (nil))))
	  (text-cursor ((t (:background "yellow" :foreground "black"))))
	  (toolbar ((t (nil))))
	  (underline ((nil (:underline nil))))
	  (zmacs-region ((t (:background "snow" :foreground "blue")))))))
