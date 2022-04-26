module Main exposing (..) 
 -- Press a button to generate a random number between 1 and 6.
--
-- Read how it works:
--   https://guide.elm-lang.org/effects/random.html
--

import Browser
import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (class, id)
import Random
import Dict exposing (Dict)
import Dict exposing (empty)
import Dict exposing (values)
import Dict exposing (keys)
import Dict exposing (Dict)
import Html.Attributes exposing (value)



-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type alias Model =
  { dieFaces : (Int, Int)
  , somme : List Int
  }

init : () -> (Model, Cmd Msg)
init _ =
  ( Model (0, 0) []
   , Cmd.none
  )

updateDict : Int -> Dict Int Int -> Dict Int Int
updateDict =
  Dict.empty
  chiffre : Int = 0
  let dict : Dict keys values = []
  case Just chiffre dict == False
    dict = dict chiffre 1
  case Just chiffre dict == True
    

  


-- UPDATE


type Msg
  = Roll
  | NewFaceOne (Int, Int)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Roll ->
      ( model
      , Random.generate NewFaceOne (Random.pair(Random.int 1 6)(Random.int 1 6))
      ) 

    NewFaceOne newFace ->
      ( --Model newFace
        { model | dieFaces = newFace
        , somme = (Tuple.first model.dieFaces + Tuple.second model.dieFaces) :: model.somme
        }
        , Cmd.none
      )

-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW
view : Model -> Html Msg
view model =
  div [class "his_box"]
    [ h1 [] 
        [ text "Dé n°1 : "
        , text (String.fromInt (Tuple.first model.dieFaces)) 
        , text "Dé n°2 : "
        , text (String.fromInt (Tuple.second model.dieFaces))
        , text "Somme : "
        , text (String.fromInt (Tuple.first model.dieFaces + Tuple.second model.dieFaces))]
        , button [ onClick Roll ] [ text "Lancer les dés" ]
        , div [class "histogram"]
          [ div []
            [ div [id "two"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 2 then
                    text "2-"
                  else 
                    text "2"
                ]
              ] 
         , div []
            [ div [id "three"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 3 then
                    text "3-"
                  else 
                    text "3"]
                ]
            ]   
          , div []
            [ div [id "four"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 4 then
                    text "4-"
                  else 
                    text "4"]
                ]
            ] 
          , div []
            [ div [id "five"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 5 then
                    text "5-"
                  else 
                    text "5"]
                ]
            ] 
          , div []
            [ div [id "six"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 6 then
                    text "6-"
                  else 
                    text "6"]
                ]
            ] 
          , div []
            [ div [id "seven"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 7 then
                    text "7-"
                  else 
                    text "7"]
                ]
            ] 
          , div []
            [ div [id "eight"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 8 then
                    text "8-"
                  else 
                    text "8"]
                ]
            ] 
          , div []
            [ div [id "nine"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 9 then
                    text "9-"
                  else 
                    text "9"]
                ]
            ] 
          , div []
            [ div [id "ten"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 10 then
                    text "10-"
                  else 
                    text "10"]
                ]
            ] 
          , div []
            [ div [id "eleven"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 11 then
                    text "11-"
                  else 
                    text "11"]
                ]
            ] 
          , div []
            [ div [id "twelve"]
              [
                div [] 
                  [if (Tuple.first model.dieFaces + Tuple.second model.dieFaces) == 12 then
                    text "12-"
                  else 
                    text "12"]
                ]
            ]
          ] 
          ]
    ]