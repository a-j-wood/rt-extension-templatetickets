# NAME

RT::Extension::TemplateTickets - Designate tickets as templates for new tickets

# DESCRIPTION

This extension allows a Request Tracker administrator to mark any ticket as
a _template ticket_.  Template tickets can be used when creating a new
ticket, to pre-populate the ticket creation form.

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
