module Main where
import System.Environment
import CV.Image
import CV.Edges
import CV.HighGUI

main = do
  [args] <- getArgs
  image <- readFromFile args :: IO (Image GrayScale D32)
  makeWindow "Result"
  showImage "Result" result
  waitKey 0
  destroyWindow "Result"
