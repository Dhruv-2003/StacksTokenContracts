;; FUNGIBLE TOKEN EXAMPLE:

(define-fungible-token token)

(define-constant account1 'SZ2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKQ9H6DPR)

(define-constant account2 'TZ2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKQ9H6DPR)


(ft-mint? token
  u200 account1)

(ft-get-balance token 
  account1)

(ft-mint? token
   u300 account2)

(ft-get-supply token)

(ft-transfer? token u50 account1 account2)

(ft-get-balance token
  account1)

(ft-get-balance token
  account2)

(ft-burn? token
   u350 account2)

(ft-get-balance token
  account2)

(ft-get-supply token)
