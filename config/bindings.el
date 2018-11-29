;;;; Personal custom key bindings

;;; Making scaling text size easier
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;;; Remap undo to overwrite the Emacs GUI window hide key
(define-key global-map (kbd "C-z") 'undo-tree-undo)
(define-key global-map (kbd "M-z") 'undo-tree-redo)

;; Set keybindings for cycling buffers
(global-set-key [C-prior] 'previous-buffer)
(global-set-key [C-next] 'next-buffer)

;;; Remap multiple cursors to a pattern that is easier to remember
(define-key global-map (kbd "C-c m c") 'mc/edit-lines)


;;; Clojure specific bindings

;; Launch the Clojure repl via Leiningen - M-x cider-jack-in
(define-key global-map (kbd "C-c C-j") 'cider-jack-in)

