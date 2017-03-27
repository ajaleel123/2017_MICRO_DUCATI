#!/bin/tcsh

\rm *.eps
foreach i (*.ps )
  ps2eps $i:r.ps
end
