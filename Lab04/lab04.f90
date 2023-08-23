! ###################################################
! # MC102 - Algoritmos e Programação de Computadores
! # Laboratório 4 - Controle de Estoque
! # Nome: Matheus Alves de Andrade
! # RA: 256296
! ###################################################

program INVMAN
    ! Program INVentory MANager

    ! Manages the inventory for a single product by reading a 
    ! series of purchases and sales of the product, outputting
    ! the amount of sales and remaining inventory. Sales are
    ! entered as a negative integer, and purchases are entered as
    ! a positive integer.


    ! Declarations
    integer INVTRY, SALES, INPUT ! Inventory and Sales
    INVTRY = 0 ! Initial inventory of 0
    SALES = 0 ! Initial sales value of 0

    do
        read *, INPUT

        if ( INPUT .gt. 0) then
            INVTRY = INVTRY + INPUT
            continue
        else if ( INPUT .lt. 0) then
            if ( INVTRY - ABS(INPUT) .lt. 0) then
                print *, "Quantidade indisponível para a venda de ", ABS(INPUT), " unidades."
                continue
            else
                INVTRY = INVTRY - ABS(INPUT)
                SALES = SALES + 1
                continue                
            end if
        else
            print *, "Quantidade de vendas realizadas: ", SALES
            print *, "Quantidade em estoque: ", INVTRY
            stop
        end if
    end do
    
end program INVMAN