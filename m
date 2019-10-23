Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C087EE179B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 12:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hg377Rzio3isJ2k6wMThbwS0eTBBR9g3QkV1znHZIHI=; b=To6Zavl6pubHgA
	pmNL9aZnb6p1Q6p9tet1QP114Cy9c1L6QZFhw9wVx7c/uw75h0tzAC6LNuK1Fz2WEQyWdSm4LpCuV
	1hY/i0DPun8jnUNMl0G7KfgBpZO/JSJ/qdAWhvUYSqUc4TyL0B/kRGbS/yXjcVbPlGcXL+gHwItPa
	GOng4G7O+YFYp7tzJ+MNkt/1NK9lCo5/J80eldx1gl9EPtz0SroSmCwQe8g48GukgaDeE3fpgEHmA
	bQbA/3N+CSSrcpIhWw20yqX1DGEuViU1h3w/wjw27vdJeiqzEp2hYfqLX29Zr2ntD0sTOelEnkzlE
	uf65Q6w3sPVJe3vWUtkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDfe-0005zK-TH; Wed, 23 Oct 2019 10:15:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDdy-0004iW-TM; Wed, 23 Oct 2019 10:13:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 40CC8B513;
 Wed, 23 Oct 2019 10:13:28 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v2 02/11] dt-bindings: reset: Add Realtek RTD1195
Date: Wed, 23 Oct 2019 12:13:08 +0200
Message-Id: <20191023101317.26656-3-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191023101317.26656-1-afaerber@suse.de>
References: <20191023101317.26656-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031331_100516_E2B7E39C 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgaGVhZGVyIHdpdGggc3ltYm9saWMgcmVzZXQgaW5kaWNlcyBmb3IgUmVhbHRlayBSVEQx
MTk1IFNvQy4KTmFtaW5nIHdhcyBkZXJpdmVkIGZyb20gQlNQIHJlZ2lzdGVyIGRlc2NyaXB0aW9u
IGhlYWRlcnMuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogdjI6IE5ldwogCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JlYWx0ZWsscnRk
MTE5NS5oIHwgNzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA3NCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9yZWFsdGVrLHJ0ZDExOTUuaAoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGlu
Z3MvcmVzZXQvcmVhbHRlayxydGQxMTk1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3Jl
YWx0ZWsscnRkMTE5NS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4u
Mjc5MDJhYmY5MzViCi0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNl
dC9yZWFsdGVrLHJ0ZDExOTUuaApAQCAtMCwwICsxLDc0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogKEdQTC0yLjAtb3ItbGF0ZXIgT1IgQlNELTItQ2xhdXNlKSAqLworLyoKKyAqIFJl
YWx0ZWsgUlREMTE5NSByZXNldCBjb250cm9sbGVycworICoKKyAqIENvcHlyaWdodCAoYykgMjAx
NyBBbmRyZWFzIEbDpHJiZXIKKyAqLworI2lmbmRlZiBEVF9CSU5ESU5HU19SRVNFVF9SVEQxMTk1
X0gKKyNkZWZpbmUgRFRfQklORElOR1NfUkVTRVRfUlREMTE5NV9ICisKKy8qIHNvZnQgcmVzZXQg
MSAqLworI2RlZmluZSBSVEQxMTk1X1JTVE5fTUlTQwkJMAorI2RlZmluZSBSVEQxMTk1X1JTVE5f
Uk5HCQkxCisjZGVmaW5lIFJURDExOTVfUlNUTl9VU0IzX1BPVwkJMgorI2RlZmluZSBSVEQxMTk1
X1JTVE5fR1NQSQkJMworI2RlZmluZSBSVEQxMTk1X1JTVE5fVVNCM19QMF9NRElPCTQKKyNkZWZp
bmUgUlREMTE5NV9SU1ROX1ZFX0gyNjUJCTUKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VTQgkJNgor
I2RlZmluZSBSVEQxMTk1X1JTVE5fVVNCX1BIWTAJCTgKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VT
Ql9QSFkxCQk5CisjZGVmaW5lIFJURDExOTVfUlNUTl9IRE1JUlgJCTExCisjZGVmaW5lIFJURDEx
OTVfUlNUTl9IRE1JCQkxMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRVROCQkxNAorI2RlZmluZSBS
VEQxMTk1X1JTVE5fQUlPCQkxNQorI2RlZmluZSBSVEQxMTk1X1JTVE5fR1BVCQkxNgorI2RlZmlu
ZSBSVEQxMTk1X1JTVE5fVkVfSDI2NAkJMTcKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1ZFX0pQRUcJ
CTE4CisjZGVmaW5lIFJURDExOTVfUlNUTl9UVkUJCTE5CisjZGVmaW5lIFJURDExOTVfUlNUTl9W
TwkJCTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9MVkRTCQkyMQorI2RlZmluZSBSVEQxMTk1X1JT
VE5fU0UJCQkyMgorI2RlZmluZSBSVEQxMTk1X1JTVE5fRENVCQkyMworI2RlZmluZSBSVEQxMTk1
X1JTVE5fRENfUEhZCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fQ1AJCQkyNQorI2RlZmluZSBS
VEQxMTk1X1JTVE5fTUQJCQkyNgorI2RlZmluZSBSVEQxMTk1X1JTVE5fVFAJCQkyNworI2RlZmlu
ZSBSVEQxMTk1X1JTVE5fQUUJCQkyOAorI2RlZmluZSBSVEQxMTk1X1JTVE5fTkYJCQkyOQorI2Rl
ZmluZSBSVEQxMTk1X1JTVE5fTUlQSQkJMzAKKworLyogc29mdCByZXNldCAyICovCisjZGVmaW5l
IFJURDExOTVfUlNUTl9BQ1BVCQkwCisjZGVmaW5lIFJURDExOTVfUlNUTl9WQ1BVCQkxCisjZGVm
aW5lIFJURDExOTVfUlNUTl9QQ1IJCTkKKyNkZWZpbmUgUlREMTE5NV9SU1ROX0NSCQkJMTAKKyNk
ZWZpbmUgUlREMTE5NV9SU1ROX0VNTUMJCTExCisjZGVmaW5lIFJURDExOTVfUlNUTl9TRElPCQkx
MgorI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzUJCTE4CisjZGVmaW5lIFJURDExOTVfUlNUTl9S
VEMJCTIwCisjZGVmaW5lIFJURDExOTVfUlNUTl9JMkNfNAkJMjMKKyNkZWZpbmUgUlREMTE5NV9S
U1ROX0kyQ18zCQkyNAorI2RlZmluZSBSVEQxMTk1X1JTVE5fSTJDXzIJCTI1CisjZGVmaW5lIFJU
RDExOTVfUlNUTl9JMkNfMQkJMjYKKyNkZWZpbmUgUlREMTE5NV9SU1ROX1VSMQkJMjgKKworLyog
c29mdCByZXNldCAzICovCisjZGVmaW5lIFJURDExOTVfUlNUTl9TQjIJCTAKKworLyogaXNvIHNv
ZnQgcmVzZXQgKi8KKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9WRkQJCTAKKyNkZWZpbmUgUlRE
MTE5NV9JU09fUlNUTl9JUgkJMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NFQzAJCTIKKyNk
ZWZpbmUgUlREMTE5NV9JU09fUlNUTl9DRUMxCQkzCisjZGVmaW5lIFJURDExOTVfSVNPX1JTVE5f
RFAJCTQKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9DQlVTVFgJCTUKKyNkZWZpbmUgUlREMTE5
NV9JU09fUlNUTl9DQlVTUlgJCTYKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9FRlVTRQkJNwor
I2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX1VSMAkJOAorI2RlZmluZSBSVEQxMTk1X0lTT19SU1RO
X0dNQUMJCTkKKyNkZWZpbmUgUlREMTE5NV9JU09fUlNUTl9HUEhZCQkxMAorI2RlZmluZSBSVEQx
MTk1X0lTT19SU1ROX0kyQ18wCQkxMQorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0kyQ182CQkx
MgorI2RlZmluZSBSVEQxMTk1X0lTT19SU1ROX0NCVVMJCTEzCisKKyNlbmRpZgotLSAKMi4xNi40
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
