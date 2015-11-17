#!/usr/bin/env ruby

# This class contains handlers and methods for the Spam determining library.
class Spam
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
    @ankusaObj.train :spam, text
  end

  def trainEngineWithHam(text)
    @ankusaObj.train :good, text
  end
end
