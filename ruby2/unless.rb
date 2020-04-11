status = 'error'
# if status != 'ok'
#   puts '何か異常があります'
# else
#   puts '正常です'
# end
message =
unless status == 'ok'
  puts '何か異常があります'#error
else
  puts '正常です'#ok
end
