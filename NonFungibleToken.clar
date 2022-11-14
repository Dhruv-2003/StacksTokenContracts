;; NFT EXAMPLE

(define-non-fungible-token stackaroo int)

(define-constant owner1 'SZ2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKQ9H6DPR)

(define-constant owner2 'TZ2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKQ9H6DPR)


(nft-mint? stackaroo 42 owner1)

;; Asset '42' is now owned by owner1

(nft-get-owner? stackaroo 42)

;; Asset '13' is not owned by anybody:

(nft-get-owner? stackaroo 13)

(nft-mint? stackaroo 13 owner2)

;; Asset '13' is now owned by owner2:

(nft-get-owner? stackaroo 13)

;; Transfer ownership of '42' to owner2:

(nft-transfer? stackaroo 42 
  owner1 owner2)

;; Asset '42' is now owned by owner2

(nft-get-owner? stackaroo 42)

;; Unit test validating the two assets have the same owner:

(test= 
  (nft-get-owner? stackaroo 13)
  (nft-get-owner? stackaroo 42))

(nft-burn? stackaroo 42 owner2)

;; The asset '42' is no longer owned by anybody:

(nft-get-owner? stackaroo 42)
