;; Personal settings to save and restore buffers and files in Emacs between sessions

;; From Stack overflow
;; http://stackoverflow.com/questions/3792449/emacs-remember-all-opened-files-with-splitted-windows-and-their-positions

;; Use the builtin desktop function to maintain session state

(custom-set-variables
  ;; Your init file should contain only one instance of custom-set-variables.
  '(desktop-enable t nil (desktop))
  '(save-place t nil (saveplace)))


