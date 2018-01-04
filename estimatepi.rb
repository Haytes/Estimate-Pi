def estimatePi num
  valid = num.times.count {Math.hypot(rand, rand) <= 1.0}
  return 4*valid.to_f/num
end

print "Estimate using 100 numbers: ", estimatePi(100)," \n"
print "Estimate using 1000 numbers: ", estimatePi(1000)," \n"
print "Estimate using 10000 numbers: ", estimatePi(10000)," \n"
print "Estimate using 100000 numbers: ", estimatePi(100000)," \n"
