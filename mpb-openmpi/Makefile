# $NetBSD$
#

DISTNAME=	mpb-1.4.2
PKGNAME=	mpb-openmpi-1.4.2
CATEGORIES=	math
MASTER_SITES=	http://ab-initio.mit.edu/mpb/

MAINTAINER=	jwbacon@tds.net
HOMEPAGE=	http://ab-initio.mit.edu/mpb/
COMMENT=	MIT Photonic Bands
LICENSE=	gnu-gpl-v3

# Use HAS_CONFIGURE, not GNU_CONFIGURE, otherwise --prefix= will be overridden
HAS_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_LANGUAGES=	c fortran77

# --prefix=${DESTDIR}... can replace patches as long as HAS_CONFIGURE is used
CONFIGURE_ARGS+=--with-libctl=${PREFIX}/share/libctl \
		--with-mpi \
		--prefix=${MPI_PREFIX:Q} \
		--mandir=${MPI_PREFIX:Q}/man

CFLAGS+=	-DH5_USE_16_API=1

.include "../../math/blas/buildlink3.mk"
.include "../../math/lapack/buildlink3.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../wip/fftw2-openmpi/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../devel/libctl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
