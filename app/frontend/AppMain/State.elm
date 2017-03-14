module AppMain.State exposing (..)

import AppMain.Types exposing (..)
import PanelWordList.Types
import PanelWordEcho.Types


init : ( Model, Cmd Msg )
init =
    let
        word_list_panel_model =
            PanelWordList.Types.Model Nothing Nothing

        word_echo_panel_model =
            PanelWordEcho.Types.Model Nothing Nothing
    in
        ( Model word_list_panel_model word_echo_panel_model, Cmd.none )


update msg model =
    ( model, Cmd.none )
