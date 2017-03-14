module AppMain.State exposing (..)

import AppMain.Types exposing (..)
import PanelWordList.Types
import PanelWordEcho.Types


init : ( Model, Cmd Msg )
init =
    let
        word_list_panel_model =
            PanelWordList.Types.Model (Just "foo") (Just "foo")

        word_echo_panel_model =
            PanelWordEcho.Types.Model (Just "foo") Nothing
    in
        ( Model word_list_panel_model word_echo_panel_model, Cmd.none )


update msg model =
    case msg of
        PanelWordList msg ->
            case msg of
                PanelWordList.Types.WordSelected w ->
                    ( model, Cmd.none )

                otherwise ->
                    ( model, Cmd.none )

        otherwise ->
            ( model, Cmd.none )
