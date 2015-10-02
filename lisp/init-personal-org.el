;;
;; mobile-org
(require 'org-install)
(require 'org-mobile)

;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-mobile-files (quote (
                               "country_song_lyrics.org"
                               "scripture_songs_for_worship.org"
                               "note_g_fast.org"
                               "note_codehub.org"
                               "note_netconf_yang.org"
                               "note_acs.org"
                               "note_tr069.org"
                               "note_git.org"
                               "note_gpon.org"
                               "note_redmine.org"
                               "note_wwwctrl.org"
                               "note_emacs.org"
                               "note_shell.org"
                               "note_screen.org"
                               "note_gdb.org"
                               "note_openwrt.org"
                               "bible.org"
                               "柯旗化新英文法.org"
                               "聖靈論_聖經神學.org"
                               "pct_rule.org"
                               )))

(provide 'init-personal-org)
