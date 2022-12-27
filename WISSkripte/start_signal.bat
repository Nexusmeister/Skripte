:: ####
:: # Sets http and https proxy variables and starts signal.
:: ####
:: # @see: https://github.com/signalapp/Signal-Desktop/issues/1430#issuecomment-397229333
:: # @since: 2020-02-14
:: # @author: stev leibelt <artodeto@bazzline.net>
:: ####

set HTTP_PROXY=PROXY
set HTTPS_PROXY=%HTTP_PROXY%
start %LOCALAPPDATA%\Programs\signal-desktop\Signal.exe