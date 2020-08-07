module Components.Navbar exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class, href)


view : Html msg
view =
    header [ class "row spread pad-y-md" ]
        [ a [ class "link font-h4", href "#/" ] [ text "HubTran" ]
        , div [ class "row gap-md" ]
            [ a [ class "link", href "#/brokers" ] [ text "Brokers" ]
            , a [ class "link", href "#/factors" ] [ text "Factors" ]
            , a [ class "link", href "#/forwarders" ] [ text "Forwarders" ]
            , a [ class "button", href "#/sign-in" ] [ text "Sign in" ]
            ]
        ]
