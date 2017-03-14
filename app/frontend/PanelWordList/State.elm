module PanelWordList.State exposing (..)

import PanelWordList.Rest exposing (..)
import PanelWordList.Types exposing (..)


init : ( Model, Cmd Msg )
init =
    ( Model (Just "Buongiorno") Nothing, Cmd.none )


update msg model =
    case model.word of
        Nothing ->
            ( model, Cmd.none )

        Just word ->
            case msg of
                GetReply ->
                    ( model, getReply word )

                Reply reply ->
                    ( { model | reply = Just reply }
                    , Cmd.none
                    )

                otherwise ->
                    ( model, Cmd.none )
