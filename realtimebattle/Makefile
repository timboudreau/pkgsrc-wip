# $NetBSD$
#

DISTNAME=		RealTimeBattle-1.0.7-Std
PKGNAME=		realtimebattle-1.0.7
PKGREVISION=		1
CATEGORIES=		games
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=realtimebattle/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://realtimebattle.sourceforge.net/
COMMENT=		Programming robots game

PKG_DESTDIR_SUPPORT=	none

USE_LANGUAGES=		c c++
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
