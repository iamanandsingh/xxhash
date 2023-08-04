{-# LINE 1 "src/Data/Digest/CXXHash.hsc" #-}
{-# LANGUAGE CPP #-}
module Data.Digest.CXXHash
(
    c_XXH32
) where

import qualified Data.ByteString as B
import Data.Word (Word32)
import Foreign.C.String
import Foreign.C.Types


-- | Compresses a string.
foreign import ccall unsafe "xxhash.h XXH32"
  c_XXH32 :: CString -- ^ Data
          -> CSize   -- ^ Size
          -> CUInt   -- ^ Seed
          -> IO Word32   -- ^ Seed
