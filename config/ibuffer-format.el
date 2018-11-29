;; Format the column sizes for the Ibuffer

;; Make Name column wider and mode column narrower that defaults

(live-add-pack-lib "ibuffer-git")
(require 'ibuffer-git)

;;nicely format the ibuffer and include git-status
(setq ibuffer-formats '((mark modified read-only git-status-mini " "
      (name 42 42 :left :elide)
      " "
      (size 8 -1 :right)
      " "
      (git-status 4 4 :left :elide)
      " "
      (mode 4 4 :left :elide)
      " " filename-and-process)))

