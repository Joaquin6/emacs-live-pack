;; Set mode and filename patters for category groupings in Ibuffer

;; Filename paths strings can be filenames, partial or full paths.  Regex can also be used.

;; Any modes or files not already grouped into a category are displayed in the default category
;; at the end of the Ibuffer listing.

(require 'ibuffer)
(setq ibuffer-saved-filter-groups
  (quote (("default"
            ("Kanban"
             (filename . "todo-list.org"))
            ("Joaquin6 Blog"
              (filename . "/dev-docs/"))
            ("Slides" ;; Slide decks created in Org-mode for Org-reveal
             (filename . "/slides/"))
            ("Clojure Practical.li"
              (filename . "/clojure-practical.li/"))
            ("Emacs Practical.li"
              (filename . "/emacs-practical.li/"))
            ("Agileforce Blog"
              (filename . "/agileforce.github.io/"))
            ("Lightning Practical.li"
              (filename . "/lightning-practical.li/"))
            ("Heroku Workshop"
              (filename . "/heroku-java-workshop/"))
            ("Other Writing"
             (or
              (mode . org-mode)
              (mode . markdown-mode)))
            ("Clojure through Code"
             (filename . "/clojure-through-code/"))
            ("WhatsMySalary"
             (filename . "/whats-my-salary/"))
            ("EmacsLive"
             (filename . "/.live-packs/"))
            ("Coding" ;; Coding files not in the above projects
              (or
                (mode . clojure-mode)
                (mode . css-mode)
                (mode . java-mode)
                (mode . python-mode)
                (mode . emacs-lisp-mode)))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))
