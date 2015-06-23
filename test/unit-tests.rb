Dir["./prime-multiplication/*.rb"].each { |s|
    puts s.to_s
    load s
}