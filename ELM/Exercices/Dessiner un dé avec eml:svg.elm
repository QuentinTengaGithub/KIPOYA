-- Press a button to generate a random number between 1 and 6.
--
-- Read how it works:
--   https://guide.elm-lang.org/effects/random.html
--

import Browser
import Html exposing(Html, div, img)
import Html.Attributes exposing(src)
import Html.Events 
import Svg exposing (..)
import Svg.Attributes exposing (..)




-- MAIN


main =
  svg
    [ width "500"
    , height "500"
    , viewBox "0 0 120 120"
    ]
    [ rect
        [ -- Distance à partir du coin supérieur gauche
          x "0"
        , y "0"
        -- Longueur et largeur
        , width "100"
        , height "5"
        -- Coins arrondis
        , rx "0"
        , ry "0"
        ]
        []
      , rect
        [ -- Distance à partir du coin supérieur gauche
          x "0"
        , y "90"
        -- Longueur et largeur
        , width "100"
        , height "5"
        -- Coins arrondis
        , rx "0"
        , ry "0"
        ]
        []
      , rect
      [ -- Distance à partir du coin supérieur gauche
        x "0"
      , y "0"
      -- Longueur et largeur
      , width "5"
      , height "90"
      -- Coins arrondis
      , rx "0"
      , ry "0"
      ]
      []
      , rect
      [ -- Distance à partir du coin supérieur gauche
        x "100"
      , y "0"
      -- Longueur et largeur
      , width "5"
      , height "95"
      -- Coins arrondis
      , rx "0"
      , ry "0"
      ]
      []
      , circle
        [ cx "40"
        , cy "20"
        , r "10"
        ]
        []
      , circle
      [ cx "40"
      , cy "47.5"
      , r "10"
      ]
      []
      , circle
        [ cx "40"
        , cy "75"
        , r "10"
        ]
        []
      , circle
      [ cx "70"
      , cy "20"
      , r "10"
      ]
      []
      , circle
      [ cx "70"
      , cy "47.5"
      , r "10"
      ]
      []
      , circle
        [ cx "70"
        , cy "75"
        , r "10"
        ]
        []
    ]
    
    



-- MODEL


type alias Model =
  { dieFace : Int
  }


init : () -> (Model, Cmd Msg)
init _ =
  ( Model 1
  , Cmd.none
  )



-- UPDATE


type Msg
  = Roll
  | NewFace Int




-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- VIEW


view : Model -> Html Msg
view model =
  div []
        [ img [ src "https://cdn.emojidex.com/emoji/seal/die_face_6.png?1422536701" ] []
        ]