cd fort2
PatchCard 9LP=4 Page885Line14_A.cbn DBC_PC.cbn
RemoveTransfercard Page885Line22_RT.cbn DBC.cbn
PatchCard 9LP=4 Page897Line3_A.cbn CSH_PC.cbn
RemoveTransfercard Page897Line10_RT.cbn CSH.cbn
PatchCard 9LP=4 Page900Line3_A.cbn TSH_PC.cbn
RemoveTransfercard Page900Line9_RT.cbn TSH.cbn
PatchCard 9LP=4 Page901Line15_A.cbn BDC_PC.cbn
RemoveTransfercard Page901Line25_RT.cbn BDC.cbn
PatchCard 9LP=4 Page913Line3_A.cbn SCH_PC.cbn
RemoveTransfercard Page913Line9_RT.cbn SCH.cbn
PatchCard 9LP=4 Page916Line3_A.cbn SPH_PC.cbn
RemoveTransfercard Page916Line10_RT.cbn SPH.cbn
PatchCard 9LP=4 Page920Line3_A.cbn STH_PC.cbn
RemoveTransfercard Page920Line9_RT.cbn STH.cbn
PatchCard 9LP=4 Page921Line3_A.cbn LRT_PC.cbn
RemoveTransfercard Page921Line13_RT.cbn LRT.cbn
PatchCard 9LP=4 Page924Line3_A.cbn EXP1_PC.cbn
RemoveTransfercard Page924Line9_RT.cbn EXP1.cbn
PatchCard 9LP=4 Page925Line3_A.cbn EXP2_PC.cbn
RemoveTransfercard Page925Line9_RT.cbn EXP2.cbn
PatchCard 9LP=4 Line33_A.cbn EXP3_PC.cbn
RemoveTransfercard Page927Line13_RT.cbn EXP3.cbn
PatchCard 9LP=4 Line44_A.cbn LOG_PC.cbn
RemoveTransfercard Page930Line9_RT.cbn LOG.cbn
PatchCard 9LP=4 Line3_A.cbn SICO_PC.cbn
RemoveTransfercard Page931Line2_RT.cbn SICO.cbn
PatchCard 9LP=4 Line12_A.cbn EXP_PC.cbn
RemoveTransfercard Page934Line2_RT.cbn EXP.cbn
PatchCard 9LP=4 Page936Line3_A.cbn SQRT_PC.cbn
RemoveTransfercard Page936Line9_RT.cbn SQRT.cbn
PatchCard 9LP=4 Line19_A.cbn ATAN_PC.cbn
RemoveTransfercard Page937Line2_RT.cbn ATAN.cbn
PatchCard 9LP=4 Line26_A.cbn TANH_PC.cbn
RemoveTransfercard Page939Line2_RT.cbn TANH.cbn
CopyCards Page946Line2_AT.cbn PLIB.cbn
CopyCards Page949Line3_AT.cbn GLIB.cbn
CopyCards NYBL1.cbn+PLIB.cbn+DBC_PC.cbn+DBC.cbn+CSH_PC.cbn+CSH.cbn+TSH_PC.cbn+TSH.cbn+BDC_PC.cbn+BDC.cbn+SCH_PC.cbn+SCH.cbn+SPH_PC.cbn+SPH.cbn+STH_PC.cbn LIB1.cbn
CopyCards STH.cbn+LRT_PC.cbn+LRT.cbn+EXP1_PC.cbn+EXP1.cbn+EXP2_PC.cbn+EXP2.cbn+EXP3_PC.cbn+EXP3.cbn+NYBL1.cbn+GLIB.cbn+LOG_PC.cbn+LOG.cbn+SICO_PC.cbn+SICO.cbn LIB2.cbn
CopyCards EXP_PC.cbn+EXP.cbn+SQRT_PC.cbn+SQRT.cbn+ATAN_PC.cbn+ATAN.cbn+TANH_PC.cbn+TANH.cbn+Blank.cbn LIB3.cbn
CopyCards LIB1.cbn+LIB2.cbn+LIB3.cbn LIB.cbn
CopyCards NYBL1.cbn+PLIB.cbn+Blank.cbn LIB_M.cbn
del /Q PLIB.cbn DBC_PC.cbn DBC.cbn CSH_PC.cbn CSH.cbn TSH_PC.cbn TSH.cbn BDC_PC.cbn BDC.cbn SCH_PC.cbn SCH.cbn SPH_PC.cbn SPH.cbn STH_PC.cbn LIB1.cbn
del /Q STH.cbn LRT_PC.cbn LRT.cbn EXP1_PC.cbn EXP1.cbn EXP2_PC.cbn EXP2.cbn EXP3_PC.cbn EXP3.cbn GLIB.cbn LOG_PC.cbn LOG.cbn SICO_PC.cbn SICO.cbn LIB2.cbn
del /Q EXP_PC.cbn EXP.cbn SQRT_PC.cbn SQRT.cbn ATAN_PC.cbn ATAN.cbn TANH_PC.cbn TANH.cbn LIB3.cbn
cd ..
