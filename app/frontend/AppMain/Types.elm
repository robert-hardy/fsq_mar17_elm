module AppMain.Types exposing (..)


type alias Model =
    { word : Maybe String
    , reply : Maybe String
    }


type Msg
    = WordSelected String
    | Reply String
    | Failed
