module AppMain.State exposing (..)

import AppMain.Rest exposing (..)
import AppMain.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model (Just "Buongiorno") Nothing, Cmd.none )


update msg model =
    ( model, Cmd.none )
