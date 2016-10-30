def test
  begin
    10/0
    puts "in begin"
  rescue
    puts "it is exception"
  ensure
    puts "in ensure"
  end
end

def testWithoutException
  begin
    result = 10/2
    puts "in begin" + result.to_s
  rescue
    puts "it is exception"
  ensure
    puts "in ensure"
  end
end

test
testWithoutException
