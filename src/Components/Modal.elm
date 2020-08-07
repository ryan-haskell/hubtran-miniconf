module Components.Modal exposing (view)

import Components.Card
import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events as Events
import Person exposing (Person)


view : { person : Person, onClose : msg } -> Html msg
view options =
    div [ class "fixed fill" ]
        [ div
            [ class "absolute fill bg-shadow"
            , Events.onClick options.onClose
            ]
            []
        , viewPersonDetail options.person
        ]


viewPersonDetail : Person -> Html msg
viewPersonDetail person =
    div [ class "column gap-lg pad-lg bg-white absolute center shadow border-light" ]
        [ Components.Card.view person
        , div [ class "column gap-md font-body" ]
            (List.map (\line -> p [] [ text line ]) person.bio)
        ]
