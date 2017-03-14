module AppMain.Types exposing (..)

import PanelWordList.Types
import PanelWordEcho.Types



type alias Model =
    { word_list_panel_model : PanelWordList.Types.Model
    , word_echo_panel_model : PanelWordEcho.Types.Model
    }


type Msg
    = PanelWordList PanelWordList.Types.Msg
    | PanelWordEcho PanelWordEcho.Types.Msg
