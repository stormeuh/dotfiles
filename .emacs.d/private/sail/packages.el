(setq sail-packages
	  '(
	    (sail-mode :location 
			(recipe
			  :fetcher github
			  :repo "rems-project/sail"
			  :files ("editors/sail-mode.el")))
	    )
	  )
(defun sail/init-sail-mode () (use-package sail-mode
                                 :defer t
                                :init
                                (progn
                                  (autoload 'sail2-mode "sail-mode" "Major mode for editing sail programs." t)))
       )
(add-to-list 'auto-mode-alist '("\\.sail\\'" . sail2-mode))
;(defun sail/init-sail-mode () (require sail-mode))
