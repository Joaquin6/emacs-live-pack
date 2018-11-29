;; Split windows and load common buffers

;; Left window: last opened buffer
;; Right top window: scratch buffer
;; Right bottom window: to-do list buffer

(defun frame-layout-Joaquin6 ()
  "Create several buffers at startup"
  (interactive)
  (progn
    (set-frame-parameter nil 'fullscreen 'fullboth)
    (split-window-horizontally)
    (win-switch-right)
    (split-window-vertically)
    (win-switch-down)
    (find-file "~/Dropbox/todo-list.org")
    (win-switch-left)))

(frame-layout-Joaquin6)
