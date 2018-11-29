;; Cleaner mode line, using less space
;; Uses symbols instead of names for major/minor modes

;; See blog post for details
;; http://Joaquin6.co.uk/2013/01/tweeking-emacs-modeline-for-clojure.html.html

(defvar mode-line-cleaner-alist
  `((auto-complete-mode . "α ")
    (yas-minor-mode . "γ ")
    (paredit-mode . "Φ ")
    (eldoc-mode . "")
    (abbrev-mode . "")
    (git-gutter-mode . "")
    (magit-auto-revert-mode . "")
    (text-scale-mode . "")
    (window-number-mode . "")
    (undo-tree-mode . "υτ ")
    (volatile-highlights-mode . "")
    (elisp-slime-nav-mode . "δ ")
    (cider-mode . "ςζ ")
    (cider-interaction-mode . "ςζ ")
    (clj-refactor-mode . "cλr ")
    (nrepl-mode . "ηζ ")
    (nrepl-interaction-mode . "ηζ ")
    ;; Major modes
    (clojure-mode . "cλ")
    (hi-lock-mode . "")
    (python-mode . "Py")
    (emacs-lisp-mode . "eλ")
    (markdown-mode . "md"))
  "Alist for `clean-mode-line'.

When you add a new element to the alist, keep in mind that you
must pass the correct minor/major mode symbol and a string you
want to use in the modeline *in lieu of* the original.")


(defun clean-mode-line ()
  (interactive)
  (loop for cleaner in mode-line-cleaner-alist
        do (let* ((mode (car cleaner))
                 (mode-str (cdr cleaner))
                 (old-mode-str (cdr (assq mode minor-mode-alist))))
             (when old-mode-str
                 (setcar old-mode-str mode-str))
               ;; major mode
             (when (eq mode major-mode)
               (setq mode-name mode-str)))))


(add-hook 'after-change-major-mode-hook 'clean-mode-line)


;;; Create Greek letters - C-u C-\ greek
;;; Use C-\ to revert to default language
;;; ς ε ρ τ υ θ ι ο π α σ δ φ γ η ξ κ λ ζ χ ψ ω β ν μ
