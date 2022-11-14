;; NFT EXAMPLE

(define-non-fungible-token nftStacks int)

(define-constant owner1 'ST3MNTK3HEQ8GTSB6SNWQVN84VPKG4D5Q8TS5JD45)

(define-constant owner2 'ST3A6TKJDWW4V8Q7NW06E3ZDBX3F5V5A27KXRHAQF)

;; Mint asset 10 to owner1
(nft-mint? nftStacks 10 owner1)

;; Asset '10' is now owned by owner1
(nft-get-owner? nftStacks 10)

;; Asset '2' is not owned by anybody:
(nft-get-owner? nftStacks 2)

;; Mint Asset 2 to owner2 
(nft-mint? nftStacks 2 owner2)

;; Asset '2' is now owned by owner2:
(nft-get-owner? nftStacks 2)

;; Transfer ownership of '10' to owner2:
(nft-transfer? nftStacks 10 
  owner1 owner2)

;; Asset '10' is now owned by owner2
(nft-get-owner? nftStacks 10)

;; Burnt the Asset 10 from owner2
(nft-burn? nftStacks 10 owner2)

;; The asset '10' is no longer owned by anybody:
(nft-get-owner? nftStacks 10)
