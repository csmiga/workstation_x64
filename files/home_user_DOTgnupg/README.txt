
Basic Guide to PGP On Linux
  - https://www.deepdotweb.com/2015/02/17/basic-guide-pgp-linux/

GnuPrivacyGuardHowto
  - https://help.ubuntu.com/community/GnuPrivacyGuardHowto

NOTE: To launch the GNU Privacy Assistant Key Manager run "gpa".

  Version information
  $> gpg --help

  Generate a private key
  $> gpg --full-generate-key
     -- OR --
  $> gpg --gen-key

  Generate and print a copy of your public key ID and fingerprint
  $> gpg --fingerprint

  Add a subkey for encryption
  $> gpg --edit-key "<uid>"
  Command> addkey

  List your keys
  $> gpg --list-keys
  $> gpg --list-secret-keys

  Export a public key
  $> gpg --list-keys
  $> gpg --export -a "<uid>" > public.key

  Export a private key
  $> gpg --list-secret-keys
  $> gpg --export-secret-key -a "<uid>" > private.key

  Import public key
  $> gpg --import public.key

  Import private key
  $> gpg --import private.keys

  Delete a key
  $> gpg --list-keys
  $> gpg --delete-keys "<uid>"
  $> gpg --list-secret-keys
  $> gpg --delete-secret-keys "<uid>"

  Encrypt a file
  $> gpg --encrypt --recipient "<uid>" file.foo

  Decrypt a file
  $> gpg --decrypt file.gpg > file.foo

  Change Passphrase Secret Key Password
  $> gpg --list-secret-keys
     Output:
     pub   rsa4096 2017-12-15 [SC]
           <pubring_sequence>
  $> gpg --edit-key <pubring_sequence>
  gpg> help
  gpg> passwd
  gpg> save
  gpg> quit

  -----

  Register key with a public server
  $> gpg --send-keys "<uid>" --keyserver hkp://subkeys.pgp.net

  View
  NOTE: Given the KEYID (e.g FA0339620046E260) from the output:
  $> gpg --edit-key {KEY} trust quit
     # enter 5<RETURN>
     # enter y<RETURN>


