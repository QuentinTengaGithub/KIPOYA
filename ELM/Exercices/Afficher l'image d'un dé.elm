-- Press a button to generate a random number between 1 and 6.
--
-- Read how it works:
--   https://guide.elm-lang.org/effects/random.html
--

import Browser
import Html exposing(Html, div, img)
import Html.Attributes exposing(src)
import Html.Events 

import Random



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


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Roll ->
      ( model
      , Random.generate NewFace (Random.int 1 6)
      )

    NewFace newFace ->
      ( Model newFace
      , Cmd.none
      )



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