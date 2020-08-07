module Main exposing (main)

import Browser
import Components.Card
import Components.Modal
import Components.Navbar
import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events as Events
import Person exposing (Person)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- INIT


type alias Model =
    { selectedPerson : Maybe Person
    }


init : Model
init =
    { selectedPerson = Nothing
    }



-- UPDATE


type Msg
    = ClickedOpen Person
    | ClickedClose


update : Msg -> Model -> Model
update msg model =
    case msg of
        ClickedOpen person ->
            { model | selectedPerson = Just person }

        ClickedClose ->
            { model | selectedPerson = Nothing }



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "column container gap-lg pad-x-md" ]
        [ Components.Navbar.view
        , viewHero
        , viewAboutUsSection
        , viewModal model
        ]


viewHero : Html msg
viewHero =
    div [ class "column pad-y-xl gap-sm center-x" ]
        [ h1 [ class "font-h1" ] [ text "HubTran" ]
        , h2 [ class "font-h5 text-regular" ] [ text "Do stuff, but like way faster." ]
        ]


viewAboutUsSection : Html Msg
viewAboutUsSection =
    let
        viewPerson : Person -> Html Msg
        viewPerson person =
            button [ class "clickable shadow border-light", Events.onClick (ClickedOpen person) ]
                [ Components.Card.view person
                ]
    in
    section [ class "column gap-lg pad-y-md" ]
        [ h3 [ class "font-h2" ] [ text "About Us" ]
        , p [ class "font-body" ] [ text "Years ago, we were struck by how many transportation companies were buried under the weight of back-office paperwork. It felt like hiring more employees was the only way to keep up. We knew transportation companies could be more productive and more profitable. We knew there was a better way." ]
        , div []
            [ div [ class "row gap-md wrap align-left stretch" ]
                (List.map viewPerson Person.people)
            ]
        ]


viewModal : Model -> Html Msg
viewModal model =
    case model.selectedPerson of
        Just person ->
            Components.Modal.view
                { person = person
                , onClose = ClickedClose
                }

        Nothing ->
            viewNothing


viewNothing : Html msg
viewNothing =
    text ""
