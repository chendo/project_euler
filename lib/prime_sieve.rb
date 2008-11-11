class Integer
   def primesP3a
      # all prime candidates > 3 are of form  6*k+1 and 6*k+5
      # initialize sieve array with only these candidate values
      # where sieve contains the odd integers representatives
      # convert integers to array indices/vals by  i = (n-3)>>1 = (n>>1)-1
      n1, n2 = -1, 1;  lndx= (self-1) >>1;  sieve = []
      while n2 < lndx
         n1 +=3;   n2 += 3;   sieve[n1] = n1;  sieve[n2] = n2
      end
      #now initialize sieve array with (odd) primes < 6, resize array
      sieve[0] =0;  sieve[1]=1;  sieve=sieve[0..lndx-1]

      5.step(Math.sqrt(self).to_i, 2) do |i|
         next unless sieve[(i>>1) - 1]
         # p5= 5*i,  k = 6*i,  p7 = 7*i
         # p1 = (5*i-3)>>1;  p2 = (7*i-3)>>1;  k = (6*i)>>1
         i6 = 6*i;  p1 = (i6-i-3)>>1;  p2 = (i6+i-3)>>1;  k = i6>>1
         while p1 < lndx
             sieve[p1] = nil;  sieve[p2] = nil;  p1 += k;  p2 += k
         end
      end
      return [2] if self < 3
      [2]+([nil]+sieve).compact!.map {|i| (i<<1) +3 }
   end
end