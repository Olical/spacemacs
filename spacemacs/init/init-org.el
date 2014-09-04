(use-package org
  :mode ("\\.org$" . org-mode)
  :config
  (progn
    (require 'org-install)
    (define-key global-map "\C-cl" 'org-store-link)
    (define-key global-map "\C-ca" 'org-agenda)
    (setq org-log-done t)
    (setq org-agenda-files '("~/Dropbox/org"))
    (use-package org-bullets
      :config
      (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
    (use-package org-trello
      :config
      (add-hook 'org-mode-hook 'org-trello-mode))))

(eval-after-load "org-agenda"
  '(progn
     (define-key org-agenda-mode-map "j" 'org-agenda-next-line)
     (define-key org-agenda-mode-map "k" 'org-agenda-previous-line)))