{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_helloworld  (
    version, getBinDir,
    getDataFileName, 
    getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir :: FilePath

bindir     = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/bin"

getBinDir :: IO FilePath
getBinDir = catchIO (getEnv "helloworld_bindir") (\_ -> return bindir)
libdir :: FilePath
libdir = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/lib/aarch64-osx-ghc-9.0.2/helloworld-0.1.0.0-A2A7VUJBGTtENB3KROKHHh-helloworld"
getLibDir :: IO FilePath
getLibDir = catchIO (getEnv "helloworld_libdir") (\_ -> return libdir)

dynlibdir :: FilePath
dynlibdir = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/lib/aarch64-osx-ghc-9.0.2"
getDynLibDir :: IO FilePath
getDynLibDir = catchIO (getEnv "helloworld_dynlibdir") (\_ -> return dynlibdir)

datadir :: FilePath
datadir = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/share/aarch64-osx-ghc-9.0.2/helloworld-0.1.0.0"
getDataDir :: IO FilePath
getDataDir = catchIO (getEnv "helloworld_datadir") (\_ -> return datadir)

libexecdir :: FilePath
libexecdir = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/libexec/aarch64-osx-ghc-9.0.2/helloworld-0.1.0.0"
getLibexecDir :: IO FilePath
getLibexecDir = catchIO (getEnv "helloworld_libexecdir") (\_ -> return libexecdir)

sysconfdir :: FilePath
sysconfdir = "/Users/jeffgreenlee/development/Haskell/helloworld/.stack-work/install/aarch64-osx-nix/0c7416fd82e7b775aa698e60b8d05e778a8ef96667d5bf4a955b49a2e73112a2/9.0.2/etc"
getSysconfDir :: IO FilePath
getSysconfDir = catchIO (getEnv "helloworld_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
