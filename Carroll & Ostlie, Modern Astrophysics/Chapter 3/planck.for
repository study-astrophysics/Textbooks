      Program Planck

      Implicit none
      Real*8 h, c, k, nm, lamda, temp, BB
      Parameter ( h = 6.62606876E-34,
     *            c = 2.99792458E8,
     *            k = 1.3806503E-23 )
c     This program is made to calculate Planck function.
c     Unit I used is SI unit.

      Write(*,*) 'Input the temperature(K) :'
      Read(*,*) temp

      Write(*,*) 'Input the wavelength(nm) :'
      Read(*,*) nm

      lamda = nm*1.0E-9

      BB = 2*h*(c**2)/((exp(h*c/(lamda*k*temp))-1.0)*lamda**5)*1.0E-9

      Write(*,*) 'The Spectral radiance is', BB, '(W m-2 nm-1 sr-1 )'

      Stop
      End
