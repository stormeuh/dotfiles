(setq llvm-packages
        '((llvm-mode :location
                   (recipe
                    :fetcher url
                    :url "https://raw.githubusercontent.com/llvm/llvm-project/main/llvm/utils/emacs/llvm-mode.el"));
          (tablegen-mode :location
                         (recipe
                          :fetcher url
                          :url "https://raw.githubusercontent.com/llvm/llvm-project/main/llvm/utils/emacs/tablegen-mode.el"))
       )
      )

(defun llvm/init-llvm-mode () (use-package llvm-mode
                                :defer t
                                :init
                                (progn
                                  (autoload 'llvm-mode "llvm-mode" "Major mode for editing llvm programs." t))))
(defun llvm/init-tablegen-mode () (use-package tablegen-mode
                                :defer t
                                :init
                                (progn
                                  (autoload 'tablegen-mode "tablegen-mode" "Major mode for editing tablegen files." t))))
