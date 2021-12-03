(setq riscv-packages
  '(
	   (riscv-mode :location 
			 (recipe
;			   :fetcher github
;			   :repo "stormeuh/riscv-mode"
        :fetcher file
        :path "/home/elias/Documents/work/riscv-mode/riscv-mode.el"
			 )
	   )
	 )
)
(defun riscv/init-riscv-mode () (use-package riscv-mode
                                  :defer t
                                  :init
                                  (progn
                                    (autoload 'riscv-mode "riscv-mode" "Major mode for editing CHERI-RISC-V assembly." t)
                                  )
                                )
)
;(add-to-list 'auto-mode-alist '("\\.sail\\'" . sail2-mode))
;(defun sail/init-sail-mode () (require sail-mode))
