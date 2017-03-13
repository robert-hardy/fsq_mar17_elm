module PanelWordEcho.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import PanelWordEcho.Types exposing (..)


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
                        [ text "Word to echo: "
                        , code [] [ text w ]
                        ]

                panelList =
                    case model.reply of
                        Nothing ->
                            ul [ class "list-group" ]
                                [ li [ class "list-group-item" ]
                                    [ button
                                        [ class "btn btn-primary"
                                        , onClick GetReply
                                        ]
                                        [ text "Get the reply" ]
                                    ]
                                ]

                        Just reply ->
                            ul [ class "list-group" ]
                                [ li
                                    [ class "list-group-item" ]
                                    [ text reply ]
                                ]
            in
                div [ class "container" ]
                    [ div [ class "panel panel-default" ]
                        [ panelHeader
                        , panelBody
                        , panelList
                        ]
                    ]
