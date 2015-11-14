#!/usr/bin/env ruby

# This class contains handlers and methods for the Spam determining library.
class Spamres
  def initalize(ankusaObj)
    @ankusaObj = ankusaObj
  end

  def determineTextQuality(text)
    # Add Ankusa calls to measure severity of text
    #ankusaObj

    #object = {:classification => 0.71}
    #ankusaObj.classify text
  end

  def trainEngineWithSpam(text)

  end

  def trainEngineWithGood(text)

  end
end
