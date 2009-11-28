(add-to-list 'load-path "~/dev/src/clojure-mode")
(require 'clojure-mode)
(add-to-list 'load-path "~/dev/src/swank-clojure/src/emacs")

(setq swank-clojure-jar-path "~/.clojure/clojure.jar"
     swank-clojure-extra-classpaths (list
            "~/dev/src/swank-clojure/src/main/clojure"
                   "~/.clojure/clojure-contrib.jar"))
                   (require 'swank-clojure-autoload)
(eval-after-load "slime" '(progn (slime-setup '(slime-repl))))
(add-to-list 'load-path "~/dev/src/slime")
(require 'slime)
(slime-setup)
