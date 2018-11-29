;;; Kanban style to-do list using Org-mode

;; Define the location of the file to hold tasks
(setq org-default-notes-file "~/Dropbox/todo-list.org")

;; Define a  kanban style set of stages for todo tasks
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED")))

;; Setting Colours (faces) for todo states to give clearer view of work
 (setq org-todo-keyword-faces
       '(("TODO" . org-warning)
          ("DOING" . "yellow")
          ("BLOCKED" . "red")
          ("REVIEW" . "orange")
          ("DONE" . "green")
          ("ARCHIVED" .  "blue")))


;; Progress Logging
;; When a TODO item enters DONE, add a CLOSED: property with current date-time stamp
(setq org-log-done 'time)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org-mode configurations to try

;; Consider adding shortcut keys for different states, for example BLOCKED
;; http://orgmode.org/guide/Multi_002dstate-workflows.html#Multi_002dstate-workflows

;; Using a bar you can define two possible end stages.
;; (setq org-todo-keywords
;;       '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
