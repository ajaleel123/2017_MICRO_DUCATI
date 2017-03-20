#!/bin/tcsh

\rm *.ps *.eps
foreach i (*.xmgr )
  xmgrPS $i
  ps2eps $i:r.ps
end

\rm *.ps
