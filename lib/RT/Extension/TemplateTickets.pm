use strict;
use warnings;

package RT::Extension::TemplateTickets;

our $VERSION = '0.01';

=head1 NAME

RT::Extension::TemplateTickets - Designate tickets as templates for new tickets

=head1 DESCRIPTION

This extension allows a Request Tracker administrator to mark any ticket as
a I<template ticket>, and optionally restrict access to specific groups.

When a queue has template tickets which are visible to the current user, a
drop-down list of available templates will be shown at the top of the ticket
creation form.  Choosing one of these will redisplay the form with the
template values pre-populated.

Tickets which have been created from a template will optionally show the
name of the template they were created from under their I<Basics> section,
if the template is configured to enable this.

When a template ticket is used to create a new ticket, if the template had
child tickets, the creation of the new ticket will also trigger automatic
creation of child tickets patterned after those of the template's children.

For each template ticket, the administrator chooses which of the ticket's
properties will be included in the template, whether to include child
tickets, and which child ticket properties to carry over.

Template tickets are administered under I<Admin> - I<Queues>; after choosing
a queue, go to I<Templates> - I<Tickets> in the page menu.  Administrators
must have the new B<ShowTicketTemplate> or B<ModifyTicketTemplate> rights.

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

=head1 TUTORIAL

TODO: writeme

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

RT::Queue->AddRight(
    'Admin' => 'ShowTicketTemplate' => 'View ticket templates' );    # loc
RT::Queue->AddRight(
    'Admin' => 'ModifyTicketTemplate' => 'Modify ticket templates' );    # loc

1;
