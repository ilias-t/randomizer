class AwkwardTurtle
  @t1 = %q{

    CONGRATS WDI14!!
           _
          / \
      _  .""". _
    /` /`_\ /_`\ `\
     "`|_> _ <_|`"
       /\_-'-_/\
      /_/ `)` \_\
      ""       ""
  }
  @t2 = %q{

      YOU DID IT!!!
           _
          / \
       _ .""". _
      |/`_\ /_`\|
      "|_> _ <_|"
       /\_-'-_/\
       \_\`)`/_/
        ""   ""
  }

  # Animates the turtle in the shell
  def self.animate
    interrupted = false
    trap("INT") {interrupted = true}
    loop do
      [ @t1, @t2 ].each do |t|
        exit if interrupted
        system "clear"
        puts t
        sleep 1
      end
    end
  end
end

#Credit to https://github.com/mswain/awkward_turtle