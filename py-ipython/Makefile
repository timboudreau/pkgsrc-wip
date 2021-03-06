# $NetBSD$
#

DISTNAME=	ipython-0.10
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	5
CATEGORIES=	lang
MASTER_SITES=	http://ipython.scipy.org/dist/

MAINTAINER=	tonnerre@NetBSD.org
HOMEPAGE=	http://ipython.scipy.org/
COMMENT=	Interactive, enhanced Python shell
LICENSE=	modified-bsd

USE_LANGUAGES=	# none

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes

SUBST_CLASSES+=		prefix
SUBST_STAGE.prefix=	pre-configure
SUBST_SED.prefix+=	-e 's,share/man/man1,man/man1,g'
SUBST_FILES.prefix+=	setupbase.py
SUBST_MESSAGE.prefix=	Fixing header search prefix.

INSTALLATION_DIRS+=	man

# Devel dependency section

DEPENDS+=	${PYPKGPREFIX}-pexpect>=2.3:../../devel/py-pexpect
DEPENDS+=	${PYPKGPREFIX}-gobject>=2.18.0:../../devel/py-gobject
DEPENDS+=	${PYPKGPREFIX}-readline>=0:../../devel/py-readline
#DEPENDS+=	pydb>=1.26:../../wip/pydb
DEPENDS+=	${PYPKGPREFIX}-nose-[0-9]*:../../devel/py-nose

# Graphics dependency section

DEPENDS+=	${PYPKGPREFIX}-gnuplot>=1.7:../../graphics/py-gnuplot
.include "../../graphics/py-matplotlib/buildlink3.mk"

# Math dependency section

.include "../../math/py-Numeric/buildlink3.mk"
.include "../../math/py-numarray/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"

# Network dependency section

DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted
DEPENDS+=	${PYPKGPREFIX}-foolscap>=0.4.1:../../net/py-foolscap

# Security dependency section

DEPENDS+=	${PYPKGPREFIX}-OpenSSL>=0.7:../../security/py-OpenSSL

# Textproc dependency section

DEPENDS+=	${PYPKGPREFIX}-sphinx-[0-9]*:../../textproc/py-sphinx

# X11 dependency section

DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../x11/py-qt4/buildlink3.mk"
.include "../../x11/py-wxWidgets/buildlink3.mk"

# www dependency section

#DEPENDS+=	zope3-[0-9]*:../../www/zope3

PLIST_SRC+=	PLIST
PLIST_SRC+=	${PKGDIR}/PLIST.doc

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
