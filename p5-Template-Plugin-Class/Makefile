# $NetBSD$
#

DISTNAME=	Template-Plugin-Class-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/R/RC/RCLAMP/

MAINTAINER=	ficovh@yahoo.com
HOMEPAGE=	http://search.cpan.org/dist/Template-Plugin-Class/
COMMENT=	Allow calling of class methods on arbitrary classes
LICENSE=	${PERL5_LICENSE}

# TODO: Look for the dependencies in Build.PL.

#PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Template/Plugin/Class/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
