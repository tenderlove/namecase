= NameCase

  http://namecase.rubyforge.org/

Version 1.0.2 - 2006/10/24

== DESCRIPTION

NameCase is a Ruby implementation of Lingua::EN::NameCase, a library for
converting strings to be properly cased. This is good for converting
denormalized data to human friendly data.

Original version by Mark Summerfield <http://search.cpan.org/~summer/>
Ruby port by Aaron Patterson <aaronp@rubyforge.org>

* Example Usage

NameCase is a subclass of Ruby's +String+, and can be used similarly:

  string = NameCase.new( string )
  puts string.nc
  puts string.nc!

* Acknowledgements

This library is a port of the Perl library, and owes most of its functionality
to the Perl version by Mark Summerfield. Any bugs in the Ruby port are my
fault.

* Author

Original Version:
Copyright (c) Mark Summerfield 1998-2002.
<summer@perlpress.com>
All Rights Reserved

Ruby Version:
Copyright (c) Aaron Patterson 2006

* License

NameCase is distributed under the GPL license.  Please see the LICENSE file.
