module AppMain.State exposing (..)

import AppMain.Rest exposing (..)
import AppMain.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model (Just "Buongiorno") Nothing, Cmd.none )


update msg model =
    let
        foo =
            Debug.log "msg" msg
    in
        ( model, Cmd.none )
