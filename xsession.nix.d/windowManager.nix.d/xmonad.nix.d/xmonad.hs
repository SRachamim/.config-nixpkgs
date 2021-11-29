import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myNormColor :: String
myNormColor   = "#2E3440"  -- Border color of normal windows

myFocusColor :: String
myFocusColor  = "#5E81AC"  -- Border color of focused windows

main = do   
    xmproc <- spawnPipe "xmobar"
    xmonad $ docks defaultConfig
        { layoutHook = avoidStruts  $  layoutHook defaultConfig
        , terminal = "nixGL kitty"
        , focusFollowsMouse = False
        , normalBorderColor  = myNormColor
        , focusedBorderColor = myFocusColor
        , workspaces  = ["1:spot", "2:personal", "3:fg"]
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod1Mask, xK_p), spawn "rofi -combi-modi drun,ssh -show combi")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , (( mod1Mask             , xK_Escape), spawn "~/.config/sd/layout_switch.sh")
        , ((0, xK_Print), spawn "scrot")
        ]
