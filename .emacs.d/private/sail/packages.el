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
                                   (autoload 'sail2-mode "sail" "Major mode for editing sail programs." t))
                                 ))
