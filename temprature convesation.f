	real c,f,k,x
	character*1 y,n,m
	
    1	print*,"   "
	print*,"enter the temprature : "
	print*,"[for example = 0 c,f,k]"
	print*,"   "
	
	read*, x,y
	
	if(y.eq.'c') then
	c = x
	f = (x/5.)*9.+32.
	k = x + 273.15
	endif

	if(y.eq.'f') then
	c = 5.*(x-32.)/9.
	f = x
	k = 5.*((x-32.)/9.)+273.15
	endif

	if(y.eq.'k') then
	c = 5.*((x-273.15)/5.)
	f = 9.*((x-273.15)/5.)+32.
	k = x
	endif
	print*,"   "
	print*,c,"celcius"
	print*,f,"fahrenheit"	
	print*,k,"kelvin"
	print*,"   "
	print*,"do you want create an output.txt file? (y/n)"
	read*,n
	
	if(n.eq.'y') then
	open(10,file='output.txt',access='append')
	write(10,*)
	write(10,*) c,"celcius"
	write(10,*) f,"fahrenheit"
	write(10,*) k,"kelvin"
	close(10)
	go to 2
	
	elseif(n.eq.'n') then
	print*,"   "
    2	print*,"do you want an another conversion? (y/n)"
	read*,m
	if(m.eq.'y') go to 1
	if(m.eq.'n') then
	continue
	endif
	endif
	
	
	pause
	end
        
	

        
	
