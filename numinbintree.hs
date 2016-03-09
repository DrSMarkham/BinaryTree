%example tree would be represented as follows:
%


data Tree = Leaf Int
          | Node Tree Int Tree

% function that decides if a given integer occurs in a binary tree

occurs               :: Int -> Tree -> Bool
occurs m (Leaf n)     = m==n
occurs m (Node l n r) = m==n
                        || occurs m l
                        || occurs m r

%function flatten that returns the list of all the integers contained in a tree:


flatten             :: Tree ? [Int]
flatten (Leaf n)     = [n]
flatten (Node l n r) = flatten l
                       ++ [n]
                       ++ flatten r

%A tree is a search tree if it flattens to a list that is ordered.  Our example tree is a search tree, as it flattens to the %ordered list [1,3,4,5,6,7,9].


