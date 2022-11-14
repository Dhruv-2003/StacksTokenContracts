(define-fungible-token token)

(define-constant account1 'ST3MNTK3HEQ8GTSB6SNWQVN84VPKG4D5Q8TS5JD45)

(define-constant account2 'ST3A6TKJDWW4V8Q7NW06E3ZDBX3F5V5A27KXRHAQF)


;; mint 200 token to account1
(ft-mint? token
  u200 account1)

;; returns the balance of token for account1
(ft-get-balance token 
  account1)

;; returns the total supply of token
(ft-get-supply token)

;; Transfer 50 tokens from account1 to account2
(ft-transfer? token u50 account1 account2)

;; returns the balance of token for account1
(ft-get-balance token
  account1)

;; returns the token balance for account2
(ft-get-balance token
  account2)

;; Burn 50 token from account 
(ft-burn? token
   u50 account2)

;; returns the token balance for account2
(ft-get-balance token
  account2)

;; returns the total token Supply 
(ft-get-supply token)
