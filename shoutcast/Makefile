# $NetBSD$

DISTNAME=	shoutcast-1-9-2-linux-glibc6
PKGNAME=	shoutcast-1.9.2
CATEGORIES=	audio
MASTER_SITES=	http://www.shoutcast.com/downloads/sc1-9-2/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.shoutcast.com/
COMMENT=	Internet Streaming server for MP3 audio

EMUL_PLATFORMS=		linux-i386
NOT_FOR_PLATFORM=	NetBSD-[2-9]*-*

EMUL_MODULES.linux=	base

BUILD_DIRS=		# empty

PKG_SYSCONFSUBDIR=	shoutcast

post-build:
	@${SED} -e "s,@LOCALBASE@,${LOCALBASE},g" < ${WRKSRC}/sc_serv.conf > ${WRKSRC}/tmp
	@${SED} -e "s,@PKG_SYSCONFDIR@,${PKG_SYSCONFDIR},g" < ${WRKSRC}/tmp >${WRKSRC}/sc_serv.conf

do-install:
	@${FILESDIR}/install.sh ${WRKDIR}/shoutcast-1-9-2-linux-glibc6 ${DESTDIR}${LOCALBASE} ${DESTDIR}${PKG_SYSCONFDIR}

.include "../../mk/bsd.pkg.mk"
