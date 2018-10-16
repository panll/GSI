function(set_LIBRARY_UTIL_IntelFlags)
  if( (BUILD_RELEASE) OR (BUILD_PRODUCTION) )
    set(BACIO_Fortran_FLAGS "-O3 -free -assume nocc_omp " CACHE INTERNAL "" )
    set(BUFR_Fortran_FLAGS "-O2 -r8 -fp-model strict -traceback -xSSE2 -O3 -axCORE-AVX2 ${OMPFLAG} " CACHE INTERNAL "" )
    set(BUFR_C_FLAGS "-DSTATIC_ALLOCATION -DUNDERSCORE -DNFILES=32 -DMAXCD=250 -DMAXNC=600 -DMXNAF=3" CACHE INTERNAL "" )
    set(BUFR_Fortran_PP_FLAGS " -P -traditional-cpp -C  " CACHE INTERNAL "" )
    set(WRFLIB_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "")
    set(WRFLIB_C_FLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -O3  -Dfunder" CACHE INTERNAL "" )
    set (CRTM_Fortran_FLAGS " -O3 -convert big_endian -free -assume byterecl -fp-model source -traceback " CACHE INTERNAL "" )
    set (NEMSIO_Fortran_FLAGS " -O2 -convert big_endian -free -assume byterecl -xSSE2 -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set (SFCIO_Fortran_FLAGS "  -O2 -convert big_endian -free -assume byterecl  -xSSE2  -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set (SIGIO_Fortran_FLAGS "  -O2 -convert big_endian -free -assume byterecl  -xSSE2  -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set (SP_Fortran_FLAGS " -O2 -ip -fp-model strict -assume byterecl -convert big_endian -fpp -i${intsize} -r8 -convert big_endian -assume byterecl -DLINUX  ${OMPFLAG} " CACHE INTERNAL "" )
    set (SP_F77_FLAGS " -DLINUX -O2 -ip -fp-model strict -assume byterecl -convert big_endian -fpp -i${intsize} -r8 -convert big_endian -assume byterecl -DLINUX ${OMPFLAG} " CACHE INTERNAL "" )
    set (W3EMC_Fortran_FLAGS " -O3 -auto -assume nocc_omp -i${intsize} -r8 -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set (W3EMC_4_Fortran_FLAGS " -O3 -auto -assume nocc_omp -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set (W3NCO_Fortran_FLAGS " -O3 -auto -assume nocc_omp -i8 -r8 -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set (W3NCO_4_Fortran_FLAGS " -O3 -auto -assume nocc_omp -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set (W3NCO_C_FLAGS "-O0 -DUNDERSCORE -DLINUX -D__linux__ " CACHE INTERNAL "" )
    set (NDATE_Fortran_FLAGS "${HOST_FLAG} -fp-model source -ftz -assume byterecl -convert big_endian -heap-arrays  -DCOMMCODE -DLINUX -DUPPLITTLEENDIAN -O3 -Wl,-noinhibit-exec" CACHE INTERNAL "" )
    set(NCDIAG_Fortran_FLAGS "-free -assume byterecl -convert big_endian" CACHE INTERNAL "" )
    set(UTIL_Fortran_FLAGS "-O3 ${HOST_FLAG} -warn all -implicitnone -traceback -fp-model strict -convert big_endian -DWRF -D_REAL8_ ${OMPFLAG}" CACHE INTERNAL "")
    set(UTIL_COM_Fortran_FLAGS "-O3 -fp-model source -convert big_endian -assume byterecl -implicitnone" CACHE INTERNAL "")
  else()
    set (BACIO_Fortran_FLAGS "-g -free -assume nocc_omp " CACHE INTERNAL "" )
    set(BUFR_Fortran_FLAGS " -c -g -traceback -O3 -axCORE-AVX2 -r8 " CACHE INTERNAL "" )
    set(BUFR_C_FLAGS "-g -traceback -DUNDERSCORE -O3 -axCORE-AVX2 -DDYNAMIC_ALLOCATION -DNFILES=32 -DMAXCD=250 -DMAXNC=600 -DMXNAF=3" CACHE INTERNAL "" )
    set(BUFR_Fortran_PP_FLAGS " -P -traditional-cpp -C  " CACHE INTERNAL "" )
    set(CRTM_Fortran_FLAGS " -convert big_endian -free -assume byterecl  -xSSE2 -fp-model strict -traceback -g ${OMPFLAG} " CACHE INTERNAL "" )
    set(SFCIO_Fortran_FLAGS "  -convert big_endian -free -assume byterecl  -xSSE2  -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set(SIGIO_Fortran_FLAGS "  -convert big_endian -free -assume byterecl  -xSSE2  -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set(SP_Fortran_FLAGS " -g -ip -fp-model strict -assume byterecl -fpp -i${intsize} -r8 -convert big_endian  -DLINUX  ${OMPFLAG} " CACHE INTERNAL "" )
    set(SP_Fortran_4_FLAGS " -g -ip -fp-model strict -assume byterecl -fpp -convert big_endian  -DLINUX  ${OMPFLAG} " CACHE INTERNAL "" )
    set(SP_F77_FLAGS " -g -ip -fp-model strict -assume byterecl -convert big_endian -fpp -i${intsize} -r8 -DLINUX ${OMPFLAG} " CACHE INTERNAL "" )
    set(W3EMC_Fortran_FLAGS " -g -auto -assume nocc_omp -i${intsize} -r8 -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set(W3EMC_4_Fortran_FLAGS " -g -auto -assume nocc_omp -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set(NEMSIO_Fortran_FLAGS " -convert big_endian -free -assume byterecl -xSSE2 -fp-model strict -traceback  -g ${MKL_FLAG} ${OMPFLAG} " CACHE INTERNAL "" )
    set(W3NCO_Fortran_FLAGS " -g -auto -assume nocc_omp -i8 -r8 -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set(W3NCO_4_Fortran_FLAGS " -g -auto -assume nocc_omp -convert big_endian -assume byterecl -fp-model strict ${OMPFLAG} " CACHE INTERNAL "" )
    set(W3NCO_C_FLAGS "-O0 -g -DUNDERSCORE -DLINUX -D__linux__ " CACHE INTERNAL "" )
    set(NCDIAG_Fortran_FLAGS "-free -assume byterecl -convert big_endian" CACHE INTERNAL "" )
    set(WRFLIB_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -O1 -g -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "")
    set (NDATE_Fortran_FLAGS "${HOST_FLAG} -fp-model source -ftz -assume byterecl -convert big_endian -heap-arrays  -DCOMMCODE -DLINUX -DUPPLITTLEENDIAN -g -Wl,-noinhibit-exec" CACHE INTERNAL "" )
    set(WRFLIB_C_FLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -g  -Dfunder" CACHE INTERNAL "" )
    set(UTIL_Fortran_FLAGS "-O0 ${HOST_FLAG} -warn all -implicitnone -traceback -g -debug full -fp-model strict -convert big_endian -D_REAL8_ ${OMPFLAG}" CACHE INTERNAL "")
    set(UTIL_COM_Fortran_FLAGS "-O0 -warn all -implicitnone -traceback -g -debug full -fp-model strict -convert big_endian" CACHE INTERNAL "")
  endif()
endfunction(set_LIBRARY_UTIL_IntelFlags)

function(setGSI_ENKF_Intel)
    #Common release/production flags
    set(GSI_CFLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -O3  -Dfunder" CACHE INTERNAL "" )
    if( HOST-WCOSS ) 
      set(GSI_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -traceback -O3 -fp-model source -convert big_endian -assume byterecl -implicitnone -D_REAL8_ ${OMPFLAG} ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "")
      set(ENKF_Fortran_FLAGS "-O3 -fp-model source -convert big_endian -assume byterecl -implicitnone  -DGFS -D_REAL8_ ${OMPFLAG}" CACHE INTERNAL "")
    elseif( HOST-WCOSS_C )
      set( MKL_FLAG "" )
      set(GSI_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -fp-model strict -assume byterecl -convert big_endian -implicitnone -D_REAL8_ ${OMPFLAG} ${MPI_Fortran_COMPILE_FLAGS} -O3" CACHE INTERNAL "")
      set(GSI_LDFLAGS "${OMPFLAG}" CACHE INTERNAL "")
      set(ENKF_Fortran_FLAGS "-O3 -fp-model strict -convert big_endian -assume byterecl -implicitnone  -DGFS -D_REAL8_ ${OMPFLAG} " CACHE INTERNAL "")
    elseif ( HOST-WCOSS_D )
      set(GSI_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -fp-model strict -assume byterecl -convert big_endian -implicitnone -D_REAL8_ ${OMPFLAG} ${MPI_Fortran_COMPILE_FLAGS} -O3" CACHE INTERNAL "")
      set(GSI_LDFLAGS "${OMPFLAG} ${MKL_FLAG}" CACHE INTERNAL "")
      set(ENKF_Fortran_FLAGS "-O3 -fp-model strict -convert big_endian -assume byterecl -implicitnone  -DGFS -D_REAL8_ ${MPI3FLAG} ${OMPFLAG} " CACHE INTERNAL "")
    else()
      set(GSI_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -O3 -fp-model source -assume byterecl -convert big_endian -g -traceback -D_REAL8_ ${OMPFLAG} ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "")
      set(ENKF_Fortran_FLAGS "-O3 ${HOST_FLAG} -warn all -implicitnone -traceback -fp-model strict -convert big_endian -DGFS -D_REAL8_ ${MPI3FLAG} ${OMPFLAG}" CACHE INTERNAL "")
    endif() 
endfunction(setGSI_ENKF_Intel)

function (setGSI_ENKF_Debug_Intel)
    set(GSI_Fortran_FLAGS "-DPOUND_FOR_STRINGIFY -O0 -fp-model source -convert big_endian -assume byterecl -implicitnone -mcmodel medium -shared-intel -g -traceback -debug -ftrapuv -check all,noarg_temp_created -fp-stack-check -fstack-protector -warn all,nointerfaces -convert big_endian -implicitnone -D_REAL8_ ${OMPFLAG} ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "")
    set(ENKF_Fortran_FLAGS "-O0 ${HOST_FLAG} -warn all -implicitnone -traceback -g -debug full -fp-model strict -convert big_endian -D_REAL8_ ${MPI3FLAG} ${OMPFLAG}" CACHE INTERNAL "")
    #Common debug flags
    set(GSI_CFLAGS "-I. -DFortranByte=char -DFortranInt=int -DFortranLlong='long long'  -g  -Dfunder" CACHE INTERNAL "" )
endfunction (setGSI_ENKF_Debug_Intel)

function (setIntel)
  string(REPLACE "." ";" COMPILER_VERSION_LIST ${CMAKE_C_COMPILER_VERSION})
  list(GET COMPILER_VERSION_LIST 0 MAJOR_VERSION)
  list(GET COMPILER_VERSION_LIST 1 MINOR_VERSION)
  list(GET COMPILER_VERSION_LIST 2 PATCH_VERSION)
  set(COMPILER_VERSION "${MAJOR_VERSION}.${MINOR_VERSION}.${PATCH_VERSION}" CACHE INTERNAL "Compiler Version") 
  message("Compiler version is ${MAJOR_VERSION}.${MINOR_VERSION}.${PATCH_VERSION}") 
  message("Compiler version is ${COMPILER_VERSION}")
  if(${MAJOR_VERSION} GREATER 15 )
    set( OMPFLAG "-qopenmp" CACHE INTERNAL "OpenMP flag")
  else()
    set( OMPFLAG "-openmp" CACHE INTERNAL "OpenMP flag")
  endif() 
  STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "RELEASE" BUILD_RELEASE)
  STRING(COMPARE EQUAL ${CMAKE_BUILD_TYPE} "PRODUCTION" BUILD_PRODUCTION)
  if(HOST-Jet)
    set(HOST_FLAG "" CACHE INTERNAL "Host Flag")
  else()
    set(HOST_FLAG "-xHOST" CACHE INTERNAL "Host Flag")
  endif()
  set( MKL_FLAG "-mkl"  CACHE INTERNAL "MKL Flag")
  set(EXTRA_LINKER_FLAGS ${MKL_FLAG} CACHE INTERNAL "Extra Linker flags")
  set_LIBRARY_UTIL_IntelFlags()
  if( (BUILD_RELEASE) OR (BUILD_PRODUCTION) )
    setGSI_ENKF_Intel()
  else( ) #DEBUG flags
    message("Building DEBUG version of GSI")
    set( debug_suffix "_DBG" CACHE INTERNAL "" )
    setGSI_ENKF_Debug_Intel()
  endif()
endfunction()

