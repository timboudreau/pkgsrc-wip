# $NetBSD$
#

DISTNAME=	2.7.5
PKG=		redis-py
PKGNAME=	${PYPKGPREFIX}-${PKG}-${DISTNAME}
CATEGORIES=	databases
MASTER_SITES=	http://github.com/andymccurdy/redis-py/archive/
DIST_SUBDIR=	${PKG}-${DISTNAME}
FETCH_USING=	curl

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://github.com/andymccurdy/redis-py/
COMMENT=	Redis Python client
LICENSE=	mit

WRKSRC=		${WRKDIR}/${PKG}-${DISTNAME}
USE_LANGUAGES=	# none

DEPENDS+=	redis-[0-9]*:../../databases/redis
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
