module PanelWordList.App exposing (main)

import Html.App as App
import PanelWordList.Rest exposing (..)
import PanelWordList.State exposing (init, update)
import PanelWordList.Types exposing (..)
import PanelWordList.View exposing (root)


main : Program Never
main =
    App.program
        { init = init
        , view = root
        , update = update
        , subscriptions = (\m -> Sub.none)
        }
