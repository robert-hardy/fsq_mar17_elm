module PanelWordList.State exposing (..)

import PanelWordList.Rest exposing (..)
import PanelWordList.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model (Just "Buongiorno") Nothing, Cmd.none )


update msg model =
    let
        foo =
            Debug.log "msg" msg
    in
        ( model, Cmd.none )
