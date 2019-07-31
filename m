Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EBF7C0F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UaDydHxzJlioXoHfPwi0NU1rcZGKF203A9aIkxahQBE=; b=bOWghQJr2iQqBD
	hy0AeyNSFpUe+8cGAY9D8FuE2h+o/O9apI0v+5LlWSDe8Mm4FHfRJvB21gBnA/V/1pD64jYA6TFWi
	PFh+0O/iswvzfC85cbXXOJUzsSnDp8oDI5HLUy29qFBKdW53pzi03QjFrfioQeWLpQWDFUPEU+jFD
	yf5/pEJMDguWqWDc2OuH4CtA48iuOcqe8ar/vF/EHbSIY1xsJrbRvgRM0MsnAGECqMoH3GYBSn6S3
	LQvl4gfyMpGDlDI5mPvmZ483UzMgc9a0Qz+9ui+Kbjclt67WGRbpv8qIeal+aEiqVQM1fT/wus0aA
	k3KGLsMZ6ChXOvA5gsUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnWd-0000Mn-0l; Wed, 31 Jul 2019 12:16:11 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnWW-0000Le-0d
 for linux-arm-kernel@bombadil.infradead.org; Wed, 31 Jul 2019 12:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bOj6/DfFImfkret2/p2N546djxopb65m94ZiKrbECUw=; b=JQ7tyFbpNJ9HWGAoD7bXubs0zW
 E2E8zJaP7VpMvnYBSvLTkV1YMROKoAOuRoM7HSWpQZHSz5IAjPLRug23dH7X4CY1bKUcMUe3bBcqp
 ljP8mVsX53PW6IX9qoybyLB1Mtgyoqd1aVQJM2x+UmhVSp1LeIRFnLpfeyAt+P75TR+brUWA4rST2
 OyuphLXBoDE3G2cp8pkL/hVYSfmOD8Mcwl4+vF5kw6kko6Va0lKTGVSrgWL62t2uIL8vMouwrI+Cq
 dhUMlMdT+Tf5NdbhDbah9f3cUEojfoYW7eDf2222qsxWDhQlsg/F9jpX47H2qGfPmQAEqiVUeGePk
 L75EW/KQ==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnWS-0001ps-5S
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:16:02 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7C467E0007;
 Wed, 31 Jul 2019 12:15:15 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH] phy: mvebu-a3700-comphy: Inform users if their
 firmware is too old
Date: Wed, 31 Jul 2019 14:15:13 +0200
Message-Id: <20190731121513.2495-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UEhZIGNvbmZpZ3VyYXRpb24gaGFzIGJlZW4gaW1wbGVtZW50ZWQgaW4gdGhlIGZpcm13YXJlIGFu
ZCBhY2Nlc3NlZAp0aHJvdWdoIFNNQyBjYWxscy4gSW4gdGhlIHBhc3QsIGl0IHdvcmtlZCBtYWdp
Y2FsbHkgaWYgdGhlIGJvb3Rsb2FkZXIKd2FzIGNvcnJlY3RseSBkb2luZyB0aGUgaW5pdGlhbGl6
YXRpb25zLgoKV2l0aCB1cC10by1kYXRlIGJpbmRpbmdzLCB0aGUga2VybmVsIHdpbGwgbmVlZCBh
IHJlY2VudCBmaXJtd2FyZSBpbgpvcmRlciB0byBkbyB0aGUgaW5pdGlhbGl6YXRpb25zIGhpbXNl
bGYgKHdlIGFzc3VtZSBwZW9wbGUgbXVzdCB1cGRhdGUKdGhlaXIgZmlybXdhcmUgYWxvbmcgd2l0
aCB0aGVpciBrZXJuZWwpLgoKUGVvcGxlIG1pZ2h0IG5vdCB1bmRlcnN0YW5kIHdoeSBJUHMgdGhh
dCB3ZXJlIHdvcmtpbmcgY29ycmVjdGx5IGJlZm9yZQpzdG9wcGVkIHRvIGJlIHByb2JlZCBzdWRk
ZW5kbHkuIEluIHRoaXMgY2FzZSwgbGV0J3MgYWR2aXNlIHRoZSB1c2Vycwp0byB1cGRhdGUgdGhl
aXIgZmlybXdhcmUgd2l0aCBhIHZpc3VhbCB3YXJuaW5nLgoKU2lnbmVkLW9mZi1ieTogTWlxdWVs
IFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KLS0tCgpIZWxsbywKSSB0aGluayB0
aGlzIHBhdGNoIGdvdCBsb3N0LCBqdXN0IHJlc2VuZGluZyBpdCBhZnRlciAtcmMxLgpDaGVlcnMs
Ck1pcXXDqGwKCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYyB8
IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29t
cGh5LmMgYi9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYwppbmRl
eCA4ODEyYTEwNGMyMzMuLmIwOWJmNjRkNTNiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvbWFy
dmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMKKysrIGIvZHJpdmVycy9waHkvbWFydmVsbC9w
aHktbXZlYnUtYTM3MDAtY29tcGh5LmMKQEAgLTI2LDYgKzI2LDcgQEAKICNkZWZpbmUgQ09NUEhZ
X1NJUF9QT1dFUl9PTgkJCTB4ODIwMDAwMDEKICNkZWZpbmUgQ09NUEhZX1NJUF9QT1dFUl9PRkYJ
CQkweDgyMDAwMDAyCiAjZGVmaW5lIENPTVBIWV9TSVBfUExMX0xPQ0sJCQkweDgyMDAwMDAzCisj
ZGVmaW5lIENPTVBIWV9GV19OT1RfU1VQUE9SVEVECQkJKC0xKQogCiAjZGVmaW5lIENPTVBIWV9G
V19NT0RFX1NBVEEJCQkweDEKICNkZWZpbmUgQ09NUEhZX0ZXX01PREVfU0dNSUkJCQkweDIKQEAg
LTE2OSw2ICsxNzAsNyBAQCBzdGF0aWMgaW50IG12ZWJ1X2EzNzAwX2NvbXBoeV9wb3dlcl9vbihz
dHJ1Y3QgcGh5ICpwaHkpCiAJc3RydWN0IG12ZWJ1X2EzNzAwX2NvbXBoeV9sYW5lICpsYW5lID0g
cGh5X2dldF9kcnZkYXRhKHBoeSk7CiAJdTMyIGZ3X3BhcmFtOwogCWludCBmd19tb2RlOworCWlu
dCByZXQ7CiAKIAlmd19tb2RlID0gbXZlYnVfYTM3MDBfY29tcGh5X2dldF9md19tb2RlKGxhbmUt
PmlkLCBsYW5lLT5wb3J0LAogCQkJCQkJIGxhbmUtPm1vZGUsIGxhbmUtPnN1Ym1vZGUpOwpAQCAt
MjE3LDcgKzIxOSwxMiBAQCBzdGF0aWMgaW50IG12ZWJ1X2EzNzAwX2NvbXBoeV9wb3dlcl9vbihz
dHJ1Y3QgcGh5ICpwaHkpCiAJCXJldHVybiAtRU5PVFNVUFA7CiAJfQogCi0JcmV0dXJuIG12ZWJ1
X2EzNzAwX2NvbXBoeV9zbWMoQ09NUEhZX1NJUF9QT1dFUl9PTiwgbGFuZS0+aWQsIGZ3X3BhcmFt
KTsKKwlyZXQgPSBtdmVidV9hMzcwMF9jb21waHlfc21jKENPTVBIWV9TSVBfUE9XRVJfT04sIGxh
bmUtPmlkLCBmd19wYXJhbSk7CisJaWYgKHJldCA9PSBDT01QSFlfRldfTk9UX1NVUFBPUlRFRCkK
KwkJZGV2X2VycihsYW5lLT5kZXYsCisJCQkidW5zdXBwb3J0ZWQgU01DIGNhbGwsIHRyeSB1cGRh
dGluZyB5b3VyIGZpcm13YXJlXG4iKTsKKworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBpbnQg
bXZlYnVfYTM3MDBfY29tcGh5X3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
