# NAME

RT::Extension::TemplateTickets - Designate tickets as templates for new tickets

# DESCRIPTION

This extension allows a Request Tracker administrator to mark any ticket as
a _template ticket_, and optionally restrict access to specific groups.

When a queue has template tickets which are visible to the current user, a
drop-down list of available templates will be shown at the top of the ticket
creation form.  Choosing one of these will redisplay the form with the
template values pre-populated.

Tickets which have been created from a template will optionally show the
name of the template they were created from under their _Basics_ section,
if the template is configured to enable this.

When a template ticket is used to create a new ticket, if the template had
child tickets, the creation of the new ticket will also trigger automatic
creation of child tickets patterned after those of the template's children.

For each template ticket, the administrator chooses which of the ticket's
properties will be included in the template, whether to include child
tickets, and which child ticket properties to carry over.

Template tickets are administered under _Admin_ - _Queues_; after choosing
a queue, go to _Templates_ - _Tickets_ in the page menu.  Administrators
must have the new **ShowTicketTemplate** or **ModifyTicketTemplate** rights.

# RT VERSION

Known to work with RT 4.2.16, 4.4.4, and 5.0.1.

# INSTALLATION

- `perl Makefile.PL`
- `make`
- `make install`

    May need root permissions.

- Edit your `/opt/rt4/etc/RT_SiteConfig.pm`

    Add this line:

        Plugin('RT::Extension::TemplateTickets');

- Clear your mason cache

        rm -rf /opt/rt4/var/mason_data/obj

- Restart your web server

# TUTORIAL

TODO: writeme

# AUTHOR

Andrew Wood

<div>
    <p>All bugs should be reported via email to <a
    href="mailto:bug-RT-Extension-TemplateTickets@rt.cpan.org">bug-RT-Extension-TemplateTickets@rt.cpan.org</a>
    or via the web at <a
    href="http://rt.cpan.org/Public/Dist/Display.html?Name=RT-Extension-TemplateTickets">rt.cpan.org</a>.</p>
</div>

# LICENSE AND COPYRIGHT

This software is Copyright (c) 2021 by Andrew Wood

This is free software, licensed under:

    The GNU General Public License, Version 2, June 1991
