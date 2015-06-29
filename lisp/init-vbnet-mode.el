;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; vbnet-mode(VB.NET)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; - http://www.emacswiki.org/emacs/VbDotNetMode
;; - http://www.emacswiki.org/emacs/vbnet-mode.el

(autoload 'vbnet-mode "vbnet-mode" "Mode for editing VB.NET code." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\|vb\\)$" .
                                 vbnet-mode)) auto-mode-alist))
(defun my-vbnet-mode-fn ()
  "My hook for VB.NET mode"
  (interactive)
  (turn-on-font-lock)
  (turn-on-auto-revert-mode)
  (setq indent-tabs-mode nil)
  (setq vbnet-mode-indent 4)
  (setq vbnet-want-imenu t)
  (require 'flymake)
  ;; (flymake-mode 1)
  (ggtags-mode 1)
  )
(add-hook 'vbnet-mode-hook 'my-vbnet-mode-fn)

(provide 'init-vbnet-mode)
