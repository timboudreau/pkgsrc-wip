# $NetBSD$
#

DISTNAME=	zipios++_0.1.5.9+cvs.2007.04.28.orig
PKGNAME=	${DISTNAME:Q:S/++_/-/:S/+cvs//:S/.orig//}
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/z/zipios++/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://zipios.sourceforge.net/
COMMENT=	java.util.zip-like C++ library for reading and writing Zip files
LICENSE=	gnu-lgpl-v2.1

WRKSRC=		${WRKDIR}/zipios++-0.1.5.9+cvs.2007.04.28

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

USE_LIBTOOL=	yes

.include "../../mk/bsd.pkg.mk"
