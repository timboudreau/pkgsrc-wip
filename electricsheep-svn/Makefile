# $NetBSD$

PKGNAME=		electricsheep-2.7
DISTNAME=		electricsheep
CATEGORIES=		x11
MASTER_SITES=		http://electricsheep.org/

MAINTAINER=		rhialto@falu.nl
HOMEPAGE=		http://electricsheep.org/
COMMENT=		Distributed fractal flame screensaver

DEPENDS+=		curl>=7.12.1:../../www/curl
DEPENDS+=		mplayer-[0-9]*:../../multimedia/mplayer
# If included install target is used, the next depencency is required.
# (It is amazing how much junk that dependency pulls in.)
# However, it doesn't respect $DESTDIR, and tries to use some undefined
# command "update-gconf-defaults".
#DEPENDS+=		gnome-screensaver-[0-9]*:../../x11/gnome-screensaver

USE_X11BASE=		YES
GNU_CONFIGURE=		YES
USE_TOOLS+=		pkg-config gmake

SVN_REPOSITORIES=	client
SVN_ROOT.client=	http://electricsheep.svn.sourceforge.net/svnroot/electricsheep/trunk/client
			# OLD! Should now be 
			# Our SVN is now hosted by Google: http://code.google.com/p/electricsheep/source/checkout
WRKSRC=			${WRKDIR}/client

SHARE_DIR=		${DESTDIR}/${PREFIX}/share/electricsheep

do-install:
	${INSTALL} -d -m 0755  ${DESTDIR}/${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_MAN} ${WRKSRC}/electricsheep.man ${DESTDIR}/${PREFIX}/${PKGMANDIR}/man1/electricsheep.1
	${INSTALL} -d -m 0755  ${DESTDIR}/${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/electricsheep ${DESTDIR}/${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/electricsheep-preferences ${DESTDIR}/${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/electricsheep-saver ${DESTDIR}/${PREFIX}/bin
	${INSTALL} -d -m 0755 ${DESTDIR}/${PREFIX}/share/electricsheep
	${INSTALL_DATA} ${WRKSRC}/electricsheep-preferences.glade ${SHARE_DIR}
	${INSTALL} -d -m 0755 ${DESTDIR}/${PREFIX}/libexec/xscreensaver/config
	${INSTALL_DATA} ${WRKSRC}/electricsheep.xml ${DESTDIR}/${PREFIX}/libexec/xscreensaver/config

# for libavformat:
.include "../../multimedia/ffmpeg010/buildlink3.mk"
# Order for correct runtime loading:
.include "../../mk/jpeg.buildlink3.mk"
.include "../../devel/libglade/buildlink3.mk"
#.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../wip/flam3-svn/buildlink3.mk"
.include "../../wip/mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
