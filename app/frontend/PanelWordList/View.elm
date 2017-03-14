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
                            [ h1 [] [ text "Word list" ] ]
                        ]

                panelBody =
                    div
                        [ class "panel-body" ]
                        [ text "Click a word" ]

                panelList =
                    ul [ class "list-group" ]
                        [ li
                            [ class "list-group-item"
                            , onClick (WordSelected "Hello")
                            , style [("cursor", "pointer")]
                            ]
                            [ text "Hello" ]
                        , li
                            [ class "list-group-item"
                            , onClick (WordSelected "Buongiorno")
                            , style [("cursor", "pointer")]
                            ]
                            [ text "Buongiorno" ]
                        , li
                            [ class "list-group-item"
                            , onClick (WordSelected "Bonjour")
                            , style [("cursor", "pointer")]
                            ]
                            [ text "Bonjour" ]
                        ]
            in
                div [ class "container" ]
                    [ div [ class "panel panel-default" ]
                        [ panelHeader
                        , panelBody
                        , panelList
                        ]
                    ]
