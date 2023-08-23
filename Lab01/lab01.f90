! ###################################################
! # MC102 - Algoritmos e Programação de Computadores
! # Laboratório 1 - Aritmética com Inteiros  Julia
! # Nome: Matheus Alves de Andrade
! # RA: 256296
! ###################################################

program INTARI
    ! Program INTeger ARIthmetic
    ! Performs integer arithmetic operations on two given integers

    ! Declarations
        integer(kind = 16) :: a
        integer(kind = 16) :: b

    ! Reads the integers
        ! print *, 'Enter the value of "a":'
        read *, a
        ! print *, 'Enter the value of "b":'
        read *, b

    ! Performs the arithmetic operations
        print '("a = ", I0)', a
        print '("b = ", I0)', b
        print '("a + b = ", I0)', a + b
        print '("a - b = ", I0)', a - b
        print '("a * b = ", I0)', a * b
        print '("a ** b = ", I0)', a ** b
        print '("a // b = ", I0)', a / b
        print '("a % b = ", I0)', mod(a,b)
        
end program INTARI












