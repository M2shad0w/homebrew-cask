cask 'mqttfx' do
  version '1.3.1'
  sha256 'c9d4d1c862e5aab194338f3508f166d20a9116c9ba2be70e1e4341bad6c96070'

  # jensd.de/apps/mqttfx was verified as official when first introduced to the cask
  url "http://www.jensd.de/apps/mqttfx/#{version}/mqttfx-#{version}-macos.dmg"
  name 'MQTT.fx'
  homepage 'http://www.mqttfx.org/'

  installer script: {
                      executable: 'MQTT.fx Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       %w[-q],
                      sudo:       true,
                    }

  uninstall delete: '/Applications/MQTT.fx.app'

  zap delete: [
                '~/Library/Application Support/MQTT-FX',
                '~/Library/Application Support/MQTT.fx',
              ]
end
