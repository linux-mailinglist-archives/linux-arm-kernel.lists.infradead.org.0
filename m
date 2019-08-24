Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C339BE01
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 15:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QwiKkgph8Tx+MGUq6n8zAP2HeFcQ9sBdcbnFWvanbfA=; b=BXYSQmtaCiUuLo
	BFo6UNdpcytwywSOOB/OXpYkCBn+aRKePETdxzyrHymT2bp+dhwr8Yy0Xw6NPF4Oe15QvXJHSGf8T
	mDrIB/VzSqmnGhrFWM9Agn5C/sRnCshmBelH/irebfFAJT7YVn30LUkpcjz4BRUHHIid5h6bRj9IK
	Lrx4V3x6wGzJ0CHAAVFPfYO/cd1GFWOLX6hyNO7biS+F3oSckzlyKTsBnO6b/8BvtVNvWnCtx2jcO
	WjrZbPVnhRsS/uzojS8R4HuBy2+zLOGhnjH7tFG45iCcIrcoC9i8XZe0nUpLHdELOMDidUzDzqHra
	pAVRoeCq6EQbrJJihGuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1W74-0005wd-3h; Sat, 24 Aug 2019 13:29:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1W6X-0005hF-FE
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 13:29:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6P-0006OC-4U; Sat, 24 Aug 2019 15:29:09 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i1W6L-0002FN-24; Sat, 24 Aug 2019 15:29:05 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/2] iommu: pass cell_count = -1 to of_for_each_phandle
 with cells_name
Date: Sat, 24 Aug 2019 15:28:45 +0200
Message-Id: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_062917_624398_5BF26AC5 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q3VycmVudGx5IG9mX2Zvcl9lYWNoX3BoYW5kbGUgaWdub3JlcyB0aGUgY2VsbF9jb3VudCBwYXJh
bWV0ZXIgd2hlbiBhCmNlbGxzX25hbWUgaXMgZ2l2ZW4uIEkgaW50ZW5kIHRvIGNoYW5nZSB0aGF0
IGFuZCBsZXQgdGhlIGl0ZXJhdG9yIGZhbGwKYmFjayB0byBhIG5vbi1uZWdhdGl2ZSBjZWxsX2Nv
dW50IGlmIHRoZSBjZWxsc19uYW1lIHByb3BlcnR5IGlzIG1pc3NpbmcKaW4gdGhlIHJlZmVyZW5j
ZWQgbm9kZS4KClRvIG5vdCBjaGFuZ2UgaG93IGV4aXN0aW5nIG9mX2Zvcl9lYWNoX3BoYW5kbGUn
cyB1c2VycyBpdGVyYXRlLCBmaXggdGhlbQp0byBwYXNzIGNlbGxfY291bnQgPSAtMSB3aGVuIGFs
c28gY2VsbHNfbmFtZSBpcyBnaXZlbiB3aGljaCB5aWVsZHMgdGhlCmV4cGVjdGVkIGJlaGF2aW91
ciB3aXRoIGFuZCB3aXRob3V0IG15IGNoYW5nZS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9pb21t
dS9hcm0tc21tdS5jICAgICB8IDIgKy0KIGRyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMgfCAy
ICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMgYi9kcml2ZXJzL2lvbW11L2FybS1z
bW11LmMKaW5kZXggNjQ5NzdjMTMxZWU2Li44MWI3NzM0NjU0YjMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvaW9tbXUvYXJtLXNtbXUuYworKysgYi9kcml2ZXJzL2lvbW11L2FybS1zbW11LmMKQEAgLTMz
Myw3ICszMzMsNyBAQCBzdGF0aWMgaW50IF9fZmluZF9sZWdhY3lfbWFzdGVyX3BoYW5kbGUoc3Ry
dWN0IGRldmljZSAqZGV2LCB2b2lkICpkYXRhKQogCWludCBlcnI7CiAKIAlvZl9mb3JfZWFjaF9w
aGFuZGxlKGl0LCBlcnIsIGRldi0+b2Zfbm9kZSwgIm1tdS1tYXN0ZXJzIiwKLQkJCSAgICAiI3N0
cmVhbS1pZC1jZWxscyIsIDApCisJCQkgICAgIiNzdHJlYW0taWQtY2VsbHMiLCAtMSkKIAkJaWYg
KGl0LT5ub2RlID09IG5wKSB7CiAJCQkqKHZvaWQgKiopZGF0YSA9IGRldjsKIAkJCXJldHVybiAx
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9tdGtfaW9tbXVfdjEuYyBiL2RyaXZlcnMvaW9t
bXUvbXRrX2lvbW11X3YxLmMKaW5kZXggYWJlZWFjNDg4MzcyLi42OGQxZGU3MGRlMGMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvaW9tbXUvbXRrX2lvbW11X3YxLmMKKysrIGIvZHJpdmVycy9pb21tdS9t
dGtfaW9tbXVfdjEuYwpAQCAtNDI2LDcgKzQyNiw3IEBAIHN0YXRpYyBpbnQgbXRrX2lvbW11X2Fk
ZF9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KQogCWludCBlcnI7CiAKIAlvZl9mb3JfZWFjaF9w
aGFuZGxlKCZpdCwgZXJyLCBkZXYtPm9mX25vZGUsICJpb21tdXMiLAotCQkJIiNpb21tdS1jZWxs
cyIsIDApIHsKKwkJCSIjaW9tbXUtY2VsbHMiLCAtMSkgewogCQlpbnQgY291bnQgPSBvZl9waGFu
ZGxlX2l0ZXJhdG9yX2FyZ3MoJml0LCBpb21tdV9zcGVjLmFyZ3MsCiAJCQkJCU1BWF9QSEFORExF
X0FSR1MpOwogCQlpb21tdV9zcGVjLm5wID0gb2Zfbm9kZV9nZXQoaXQubm9kZSk7Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
