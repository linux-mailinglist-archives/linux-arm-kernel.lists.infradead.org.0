Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B588ECB9AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hF+RbwSibNBPmmRTFWv2E7gvKnb1CZhLVL4RXALncKk=; b=sdZnoUjrfdRFSK
	C1cCqMoGPzHsYFj2yPxlpl/HWTXp4aYsxWV08xC9sC6ut59oWGLtqZH16vaDGa04pIVQV+LzKjsw4
	sM1anA+htozUORKpYiL4os68nCs2p0tEziUiIzj3nGTEGlOddqlux2nom3nSiicTnRD/GaKn1kbnc
	DdHx8Jr2bIIVVwL0Uj4L/sv/A57IbZlalfsBDmR/jXYiogrweXu00kqrYeNg3wE6wUHLr3H/+ImEk
	xS88ZgEVM/upyw5aPQGtMY0zir8etthCJbRLVhRu8mHXPRDggUKs9PAYvMYF37IFyEaqJs2BZAMvi
	QieyKYaw+/+XBKhHbjag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMFn-0004kx-Ov; Fri, 04 Oct 2019 12:00:11 +0000
Received: from 1.mo179.mail-out.ovh.net ([178.33.111.220])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMFV-0004kO-Nd
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 11:59:55 +0000
Received: from player792.ha.ovh.net (unknown [10.108.42.5])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id A64011446CD
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 13:59:47 +0200 (CEST)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player792.ha.ovh.net (Postfix) with ESMTPSA id DB408AA655F6;
 Fri,  4 Oct 2019 11:59:29 +0000 (UTC)
From: =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
To: linux-mtd@lists.infradead.org, Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH 00/16] mtd: spi-nor: aspeed: AST2600 support and extensions
Date: Fri,  4 Oct 2019 13:59:03 +0200
Message-Id: <20191004115919.20788-1-clg@kaod.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 3761068641438567347
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrhedugdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_045953_922779_EFD0CBD2 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.33.111.220 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [178.33.111.220 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Richard Weinberger <richard@nod.at>, Marek Vasut <marek.vasut@gmail.com>,
 Joel Stanley <joel@jms.id.au>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHNlcmllcyBmaXJzdCBleHRlbmRzIHRoZSBzdXBwb3J0IGZvciB0aGUgQXNw
ZWVkIEFTVDI1MDAgYW5kCkFTVDI0MDAgU01DIGRyaXZlci4gSXQgYWRkcyBEdWFsIERhdGEgc3Vw
cG9ydCBhbmQgcmVhZCB0cmFpbmluZyBnaXZpbmcKdGhlIGJlc3QgcmVhZCBzZXR0aW5ncyBmb3Ig
YSBnaXZlbiBjaGlwLiBTdXBwb3J0IGZvciB0aGUgbmV3IEFTVDI2MDAKU29DIGlzIGFkZGVkIGF0
IHRoZSBlbmQuCgpJIHVuZGVyc3RhbmQgdGhhdCBhIG5ldyBzcGlfbWVtIGZyYW1ld29yayBleGlz
dHMgYW5kIEkgZG8gaGF2ZSBhbgpleHBlcmltZW50YWwgZHJpdmVyIHVzaW5nIGl0LiBCdXQgdW5m
b3J0dW5hdGVseSwgaXQgaXMgZGlmZmljdWx0IHRvCmludGVncmF0ZSB0aGUgcmVhZCB0cmFpbmlu
Zy4gVGhlIEFzcGVlZCBjb25zdHJhaW50cyBhcmUgbm90IGNvbXBhdGlibGUKYW5kIGkgaGF2ZW4n
dCBoYWQgdGhlIHRpbWUgdG8gZXh0ZW5kIHRoZSBjdXJyZW50IGZyYW1ld29yay4KClRoaXMgcGF0
Y2hzZXQgaGFzIGJlZW4gaW4gdXNlIGZvciBzb21lIHRpbWUgaW4gdGhlIE9wZW5CTUMga2VybmVs
IG9uCnRoZXNlIHN5c3RlbXMgOgoKICogT3BlblBPV0VSIFBhbG1ldHRvIChBU1QyNDAwKQogKiBF
dmFsdWF0aW9uIGJvYXJkIChBU1QyNTAwKSAKICogT3BlblBPV0VSIFdpdGhlcnNwb29uIChBU1Qy
NTAwKQogKiBPcGVuUE9XRVIgUm9tdWx1cyAoQVNUMjUwMCkKICogT3BlblBPV0VSIFphaXVzIChB
U1QyNTAwKQogICBhbmQgbWFueSBvdGhlcnMKIAphbmQgaXQgaXMgbm93IGluIHVzZSBvbiB0aGVz
ZSBib2FyZHMgd2l0aCB0aGUgbmV3IFNvQyA6CgogKiBFdmFsdWF0aW9uIGJvYXJkIChBU1QyNjAw
KSAKICogVGFjb21hIGJvYXJkIChBU1QyNjAwKSAKClRoYW5rcywKCkMuCgpBbGV4YW5kZXIgU29s
ZGF0b3YgKDEpOgogIG10ZDogc3BpLW5vcjogZml4IG9wdGlvbnMgZm9yIG14NjZsNTEyMzVmCgpD
w6lkcmljIExlIEdvYXRlciAoMTUpOgogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBVc2UgY29tbWFu
ZCBtb2RlIGZvciByZWFkcwogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBBZGQgc3VwcG9ydCBmb3Ig
U1BJIGR1YWwgSU8gcmVhZCBtb2RlCiAgbXRkOiBzcGktbm9yOiBhc3BlZWQ6IExpbmsgY29udHJv
bGxlciB3aXRoIHRoZSBhaGIgY2xvY2sKICBtdGQ6IHNwaS1ub3I6IGFzcGVlZDogQWRkIHJlYWQg
dHJhaW5pbmcKICBtdGQ6IHNwaS1ub3I6IGFzcGVlZDogTGltaXQgdGhlIG1heGltdW0gU1BJIGZy
ZXF1ZW5jeQogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBBZGQgc3VwcG9ydCBmb3IgdGhlIDRCIG9w
Y29kZXMKICBtdGQ6IHNwaS1ub3I6IEFkZCBzdXBwb3J0IGZvciB3MjVxNTEyanYKICBtdGQ6IHNw
aS1ub3I6IGFzcGVlZDogSW50cm9kdWNlIGEgZmllbGQgZm9yIHRoZSBBSEIgcGh5c2ljYWwgYWRk
cmVzcwogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBJbnRyb2R1Y2Ugc2VnbWVudCBvcGVyYXRpb25z
CiAgZHQtYmluZGluZ3M6IG10ZDogYXNwZWVkLXNtYzogQWRkIG5ldyBjb21wdGF0aWJsZSBmb3Ig
QVNUMjYwMAogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciB0
aGUgQVNUMjYwMAogIG10ZDogc3BpLW5vcjogYXNwZWVkOiBDaGVjayBmb3IgZGlzYWJsZWQgc2Vn
bWVudHMgb24gdGhlIEFTVDI2MDAKICBtdGQ6IHNwaS1ub3I6IGFzcGVlZDogSW50cm9kdWNlIHRy
YWluaW5nIG9wZXJhdGlvbnMgcGVyIHBsYXRmb3JtCiAgbXRkOiBzcGktbm9yOiBhc3BlZWQ6IElu
dHJvZHVjZSBhIEhDTEsgbWFzayBmb3IgdHJhaW5pbmcKICBtdGQ6IHNwaS1ub3I6IGFzcGVlZDog
QWRkIHJlYWQgdHJhaW5pbmcgc3VwcG9ydCBmb3IgdGhlIEFTVDI2MDAKCiBkcml2ZXJzL210ZC9z
cGktbm9yL2FzcGVlZC1zbWMuYyAgICAgICAgICAgICAgfCA1OTMgKysrKysrKysrKysrKysrKy0t
CiBkcml2ZXJzL210ZC9zcGktbm9yL3NwaS1ub3IuYyAgICAgICAgICAgICAgICAgfCAgIDUgKy0K
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL210ZC9hc3BlZWQtc21jLnR4dCAgICB8ICAgMiArCiAz
IGZpbGVzIGNoYW5nZWQsIDU1MSBpbnNlcnRpb25zKCspLCA0OSBkZWxldGlvbnMoLSkKCi0tIAoy
LjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
