# $NetBSD$
#

DISTNAME=	ConvertToMP3_0.6.3
PKGNAME=	converttomp3-0.6.3
CATEGORIES=	audio
MASTER_SITES=	http://converttomp3.googlecode.com/files/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/converttomp3/
COMMENT=	Convert music files to MP3, preserving some tag information
LICENSE=	gnu-gpl-v3

DEPENDS+=	id3v2-[0-9]*:../../audio/id3v2
DEPENDS+=	lame-[0-9]*:../../audio/lame
DEPENDS+=	mplayer-[0-9]*:../../multimedia/mplayer

USE_LANGUAGES=			# none
NO_BUILD=			yes
WRKSRC=				${WRKDIR}

INSTALLATION_DIRS=	bin

REPLACE_PYTHON+=	ConvertToMP3.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ConvertToMP3.py \
	  ${DESTDIR}${PREFIX}/bin/converttomp3

.include "../../audio/py-mutagen/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
