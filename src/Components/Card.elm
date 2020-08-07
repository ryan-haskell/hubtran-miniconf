module Components.Card exposing (view)

import Html exposing (..)
import Html.Attributes exposing (alt, class, src)
import Person exposing (Person)


view : Person -> Html msg
view person =
    div [ class "row align-top gap-md min-width--440 pad-md center-y" ]
        [ img
            [ class "max-width--120"
            , alt person.name
            , src person.image
            ]
            []
        , div [ class "column gap-sm" ]
            [ h4 [ class "font-h3" ] [ text person.name ]
            , p [ class "font-body" ] [ text person.role ]
            ]
        ]
