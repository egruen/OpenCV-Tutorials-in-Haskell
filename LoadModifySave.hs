module Main where
import System.Environment
import CV.Image
import CV.HighGUI

main = do
  [args] <- getArgs
  image <- readFromFile args :: IO (Image RGB D32)
  let grayImage = image.rgbToGray
  makeWindow "GrayImage"
  showImage "GrayImage" grayImage
  waitKey 0
  destroyWindow "GrayImage"
