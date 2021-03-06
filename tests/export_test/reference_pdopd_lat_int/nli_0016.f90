module nli_0016
use kind_values
use lattice
use proclist_constants
implicit none
contains
pure function nli_m_COdes_b7(cell)
    integer(kind=iint), dimension(4), intent(in) :: cell
    integer(kind=iint) :: nli_m_COdes_b7

    select case(get_species(cell + (/0, 0, 0, Pd100_b7/)))
      case(CO)
        nli_m_COdes_b7 = m_COdes_b7; return
      case default
        nli_m_COdes_b7 = 0; return
    end select

end function nli_m_COdes_b7

end module
