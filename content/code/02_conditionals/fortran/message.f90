module messaging

  implicit none

  public Messenger
  type Messenger
    character(len=32) :: message_
  end type

  public print_message

  private

contains

  pure function print_message(postman) result(m)

    type(Messenger), intent(in) :: postman
    character(len=32) :: m

    m = postman%message_

  end function

end module
