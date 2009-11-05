;; customization
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(display-battery-mode t)
 '(inhibit-startup-screen t)
 '(size-indication-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#0f0f0f" :foreground "#F8F8F8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 103 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(set-scroll-bar-mode 'right)
(setq make-backup-files nil) ; stop creating those backup~ files 
(setq auto-save-default nil) ; stop creating those #autosave# files 
(defun arrange-frame (w h x y)
  "Set the width, height, and x/y position of the current frame"
  (let ((frame (selected-frame)))
    (delete-other-windows)
    (set-frame-position frame x y)
    (set-frame-size frame w h)))
 
(arrange-frame 115 30 50 150)

;; Global key binding
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-z") 'undo)

(add-hook 'before-save-hook 'delete-trailing-whitespace)