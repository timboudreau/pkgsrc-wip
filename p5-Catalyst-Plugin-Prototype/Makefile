# $NetBSD$

DISTNAME=	Catalyst-Plugin-Prototype-1.32
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	kuli0020@umn.edu
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Plugin-Prototype/
COMMENT=	Catalyst plugin for Prototype

PERL5_REQD+=	5.8.0

DEPENDS+=	p5-Catalyst-Runtime>=0:../../www/p5-Catalyst-Runtime
DEPENDS+=	p5-Class-Data-Inheritable>=0:../../devel/p5-Class-Data-Inheritable
DEPENDS+=	p5-HTML-Prototype>=1.30:../../www/p5-HTML-Prototype

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST= auto/Catalyst/Plugin/Prototype/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
