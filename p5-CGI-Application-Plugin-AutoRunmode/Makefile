# $NetBSD$

DISTNAME=		CGI-Application-Plugin-AutoRunmode-0.18
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=CGI/}
LICENSE=		${PERL5_LICENSE}

MAINTAINER=		rhaen@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/CGI-Application-Plugin-AutoRunmode/
COMMENT=		CGI::App plugin to automatically register runmodes

DEPENDS+=		p5-CGI-Application>=4.01:../../www/p5-CGI-Application
DEPENDS+=		p5-Class-ISA-[0-9]*:../../devel/p5-Class-ISA

PKG_DESTDIR_SUPPORT=	none
PKG_INSTALLATION_TYPES=	overwrite pkgviews

PERL5_PACKLIST=		auto/CGI/Application/Plugin/AutoRunmode/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
