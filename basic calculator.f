        real result,c,g,h,pi,n
        integer a,b


  1   print*,"          "
      print*,"please select an operation..."
      print*,"addition : 1"
      print*,"subtraction : 2"
      print*,"multiplication : 3"
      print*,"division : 4"
      print*,"exponential numbers : 5"
      print*,"root numbers : 6"
      print*,"basic trigonometric functions : 7"
      print*,"factorial : 8"

      read*, a
      g=0
      h=0

      if(a==1) go to 10
      if(a==2) go to 20
      if(a==3) go to 30
      if(a==4) go to 40
      if(a==5) go to 50
      if(a==6) go to 60
      if(a==7) go to 70
      if(a==8) go to 80

  10  print*,"enter the number of values you want to add..."
      read*, d
      result = 0.
      b = 0
  9   print*,"enter a number..."
      read*, c
      result = result + c
      b = b+1
      if(b==d) then
       print*, result
       go to 1
      else
       go to 9
      endif

 20   print*,"enter the number of values you want to add..."
      read*, d
      b = 0
      print*,"enter a value..."
      read*, g
 19   print*,"enter a value..."
      read*, h
      g = g-h
      b = b+1
      if(b==(d-1)) then
       print*, g
       go to 1
      else
       go to 19
      end if

 30   print*,"enter the number of values you want to add..."
      read*,d
      b = 0
      print*,"enter a value..."
      read*,g
 29   print*,"enter a value..."
      read*,h
      g = g*h
      b = b+1
      if(b==(d-1)) then
       print*, g
       go to 1
      else
       go to 29
      end if

 40   print*,"first value: "
      read*,g
      print*,"second value: "
      read*,h
      print*,g/h
      go to 1
      
 50   print*,"value: "
      read*,g
      print*,"power: "
      read*,h
      print*,g**h
      go to 1
      
 60   print*,"enter the value..."
      read*,g
      print*, sqrt(g)
      go to 1
      
 70   pi=3.141592653589793238462643383279502884197169399375105820974944
      print*,"enter the angle : "
      read*,g
      g = (g*pi)/180
      print*,"choose a trigonometric function..."
      print*,"sin : 1 / cos : 2 / tan : 3 / cot : 4"
      read*,b
      if(b==1) then
      print*,sin(g)
      elseif(b==2) then
      print*,cos(g)
      elseif(b==3) then
      print*,tan(g)
      elseif(b==4) then
      print*,1/tan(g)
      endif
      go to 1
      
 80   print*,"enter the value..."
      read*, n
      f = 1
      do i=1,n
      f = f*i
      enddo
      print*,"result : ",f
      go to 1


      end

