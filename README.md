Compile for A12(X):
- RUN THIS COMMAND IN TERMINAL "security find-identity -v -p codesigning" TO GET CODESIGN ID 
- RUN THIS COMMAND IN TERMNIAL "security unlock-keychain login.keychain" TO UNLOCK KEYCHAIN
- RUN THIS COMMAND IN TERMNIAL "CODESIGN_IDENTITY=ID_GOES_HERE make"

Hardcoded Generator:
- 0x1111111111111111
