SET COMP="forbes2018"

fs-filter --file=%COMP%
fs-route --file=%COMP%
fs-arrival --file=%COMP%
fs-effort --file=%COMP%
fs-score --file=%COMP%

ft-extract-input --file=%COMP% --give-fraction=0.005 --haversines
ft-task-length --file=%COMP%
ft-cross-zone --file=%COMP%
ft-tag-zone --file=%COMP%
ft-unpack-track --file=%COMP%
ft-peg-frame --file=%COMP%
ft-align-time --file=%COMP%
ft-discard-further --file=%COMP%
ft-mask-track --file=%COMP%
ft-land-out --file=%COMP%
ft-gap-point --file=%COMP%

#ft-comp-serve %COMP%
