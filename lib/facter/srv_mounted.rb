Facter.add('srv_mounted') do
  setcode do
    File.exist? '/srv/lost+found'
  end
end

