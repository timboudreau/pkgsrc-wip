# $NetBSD$

BUILDLINK_TREE+=	hs-convertible-text

.if !defined(HS_CONVERTIBLE_TEXT_BUILDLINK3_MK)
HS_CONVERTIBLE_TEXT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-convertible-text+=	hs-convertible-text>=0.4.0
BUILDLINK_PKGSRCDIR.hs-convertible-text?=	../../wip/hs-convertible-text

.include "../../wip/hs-attempt/buildlink3.mk"
.include "../../wip/hs-text/buildlink3.mk"
.endif	# HS_CONVERTIBLE_TEXT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-convertible-text
