Facter.add('srv_mounted') do
  setcode do
    case Facter::Core::Execution.exec('/bin/mountpoint /srv')
        when 0
                true
        when 1
                false
        else    
                false
        end
  end
end

