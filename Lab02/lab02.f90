! ###################################################
! # MC102 - Algoritmos e Programação de Computadores
! # Laboratório 2 - Rumo a Marte
! # Nome: Matheus Alves de Andrade
! # RA: 256296
! ###################################################

program OPMARS
    ! Program OPeration MARS

    ! Calculates which spacecraft gets to Mars first
    ! based on given distances, speeds and time between
    ! the launches.

    ! Declarations
        integer DISPEX ! Distance (in km) between Earth and Mars at the SpaceX launch.
        integer SPDSPX ! Speed (in km/h) of the SpaceX spaceship.
        integer DISTBO ! Distance (in km) between Earth and Mars at the Blue Origin launch.
        integer SPDBLO ! Speed (in km/h) of the BlueOrigin spaceship.
        integer T      ! Time (in days) between the SpaceX and BlueOrigin launches.
        real TIMESX    ! Travel time of the SpaceX.
        real TIMEBO    ! Travel time of the BlueOrigin spaceship.


    ! Reads the values
        read *, DISPEX
        read *, SPDSPX
        read *, T
        read *, DISTBO
        read *, SPDBLO

    ! Calculate time of travel of each spaceship

        TIMESX = (DISPEX/SPDSPX)/24
        TIMEBO = (DISTBO/SPDBLO)/24

    ! Print the results
    ! If the travel time of the SpaceX spaceship is greater than
    ! the travel time of the BlueOrigin spaceship plus time between
    ! between launches, the SpaceX one gets to Mars first,
    ! and the program returns TRUE, otherwise, the program returns FALSE.

    if ( TIMESX .ge. TIMEBO + T) then
        print '("False", I0)'
    else
        print '("True", I0)'
    end if
    
end program OPMARS