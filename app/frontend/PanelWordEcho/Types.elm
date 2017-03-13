module PanelWordEcho.Types exposing (..)


type alias Model =
    { word : Maybe String
    , reply : Maybe String
    }


type Msg
    = GetReply
    | Reply String
    | Failed
