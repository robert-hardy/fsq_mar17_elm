module AppMain.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import AppMain.Types exposing (..)
import PanelWordList.View
import PanelWordEcho.View


root model =
    let
        word_list_panel_view =
            PanelWordList.View.root model.word_list_panel_model

        word_echo_panel_view =
            PanelWordEcho.View.root model.word_echo_panel_model

        in
            div [ class "container" ]
                [ word_list_panel_view
                , word_echo_panel_view
                ]
