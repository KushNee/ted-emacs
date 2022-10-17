;;; init.el -*- lexical-binding: t; -*-

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(set 'ad-redefinition-action 'accept)

;; https://www.reddit.com/r/emacs/comments/4q4ixw
;; 一些更私人（计帐之类的）、实验性的插件安装到这里
(when (file-exists-p (concat user-emacs-directory "custom.org"))
  (org-babel-load-file (expand-file-name "custom.org" user-emacs-directory))
)
(when (file-exists-p (concat user-emacs-directory "custom.el"))
  (setq custom-file (concat user-emacs-directory "custom.el"))
  (load custom-file 'noerror)
)
