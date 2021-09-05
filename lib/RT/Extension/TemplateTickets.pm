use strict;
use warnings;

package RT::Extension::TemplateTickets;

our $VERSION = '0.01';

=head1 NAME

RT::Extension::TemplateTickets - Designate tickets as templates for new tickets

=head1 DESCRIPTION

This extension allows a Request Tracker administrator to mark any ticket as
a I<template ticket>.  Template tickets can be used when creating a new
ticket, to pre-populate the ticket creation form.

=head1 RT VERSION

Known to work with RT 4.2.16, 4.4.4, and 5.0.1.

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions.

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::TemplateTickets');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your web server

=back

=head1 AUTHOR

Andrew Wood

=for html <p>All bugs should be reported via email to <a
href="mailto:bug-RT-Extension-TemplateTickets@rt.cpan.org">bug-RT-Extension-TemplateTickets@rt.cpan.org</a>
or via the web at <a
href="http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-TemplateTickets">rt.cpan.org</a>.</p>

=for text
    All bugs should be reported via email to
        bug-RT-Extension-TemplateTickets@rt.cpan.org
    or via the web at
        http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-TemplateTickets

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2021 by Andrew Wood

This is free software, licensed under:

  The GNU General Public License, Version 2, June 1991

=cut

1;
