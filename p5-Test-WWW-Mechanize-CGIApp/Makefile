# $NetBSD$
#

DISTNAME=	Test-WWW-Mechanize-CGIApp-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	http://search.cpan.org/CPAN/authors/id/H/HA/HARTZELL/
COMMENT=	Test::WWW::Mechanize for CGI::Application

DEPENDS+=	p5-CGI-Application>=0:../../www/p5-CGI-Application
DEPENDS+=	p5-HTTP-Request-AsCGI>=0:../../www/p5-HTTP-Request-AsCGI
DEPENDS+=	p5-Test-WWW-Mechanize>=1.04:../../www/p5-Test-WWW-Mechanize

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST=	auto/Test/WWW/Mechanize/CGIApp/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
