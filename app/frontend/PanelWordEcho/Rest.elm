module PanelWordEcho.Rest exposing (..)

import Http
import Json.Decode as Json
import Task
import PanelWordEcho.Types exposing (..)


getReply : String -> Cmd Msg
getReply word =
    let
        url =
            "http://localhost:8080/echo/" ++ word
    in
        Task.perform (\x -> Failed) Reply (Http.get decodeJSON url)


decodeJSON =
    Json.at [ "result" ] Json.string
