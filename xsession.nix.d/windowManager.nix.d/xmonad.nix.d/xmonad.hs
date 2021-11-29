import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do   
    xmproc <- spawnPipe "xmobar"
    xmonad $ docks defaultConfig
        { layoutHook = avoidStruts  $  layoutHook defaultConfig
        , terminal = "gnome-terminal"
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod1Mask, xK_p), spawn "rofi -combi-modi drun,ssh -show combi")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]
