# $NetBSD$

BUILDLINK_TREE+=	metis

.if !defined(METIS_BUILDLINK3_MK)
METIS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.metis+=	metis>=4.0
BUILDLINK_PKGSRCDIR.metis?=	../../math/metis
.endif	# METIS_BUILDLINK3_MK

BUILDLINK_TREE+=	-metis