module PanelWordList.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import PanelWordList.Types exposing (..)


root model =
    case model.word of
        Nothing ->
            text ""

        Just w ->
            let
                panelHeader =
                    div
                        [ class "panel-heading" ]
                        [ div
                            [ class "panel-title" ]
                            [ h1 [] [ text "Word echo" ] ]
                        ]

                panelBody =
                    div
                        [ class "panel-body" ]
                        [ text "Click a word" ]

                panelList =
                    ul [ class "list-group" ]
                        [ li
                            [ class "list-group-item"
                            , onClick (WordSelected "word 1")
                            ]
                            [ text "word 1" ]
                        , li
                            [ class "list-group-item"
                            , onClick (WordSelected "word 2")
                            ]
                            [ text "word 2" ]
                        , li
                            [ class "list-group-item"
                            , onClick (WordSelected "word 3")
                            ]
                            [ text "word 3" ]
                        ]
            in
                div [ class "container" ]
                    [ div [ class "panel panel-default" ]
                        [ panelHeader
                        , panelBody
                        , panelList
                        ]
                    ]
