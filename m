Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EBE1049CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 06:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bof9KG+coxj4grlIPEXA8d8Vm+078rmLnSCZMa9CABk=; b=WAFE3GFwBs8SgO
	GSiq2UjInA4P0lb/AQzGuOaoFepYkEBXRl5BXmdzUwc2dmEM0adOJv3WO8Szlp/4acLNNtPLSG6E1
	u2YOHdGhHq6h1IwQf4VtYzGTezSM9IvoFZ4mx5l96L2WLOX4d1b6gDYbDp2aMBukyLDWBnjiB7jZ0
	RaaOr6LpIaVHgSAQ8z4o71bS4Vf20VQfbXqYe0tLVbZuqi1o6rIO+XxpYKCrqKzrrSrPZU3pUDLl6
	qWQRVDyyatkj9P+ZvNkNlimBOIQQ3iP5Ax52+7OHI8o3TwRN90OQ6dbPVg8XUtSEcBLHAdpMteRoY
	C/nrhFmBf8/ktbG9a81A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXebz-00046e-Sz; Thu, 21 Nov 2019 05:02:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXebm-00044a-28; Thu, 21 Nov 2019 05:02:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3B77BB00A;
 Thu, 21 Nov 2019 05:02:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [PATCH v5 3/9] irqchip: rtd1195-mux: Implement irq_get_irqchip_state
Date: Thu, 21 Nov 2019 06:02:02 +0100
Message-Id: <20191121050208.11324-4-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191121050208.11324-1-afaerber@suse.de>
References: <20191121050208.11324-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_210222_244333_66CDA51E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW1wbGVtZW50IHRoZSAuaXJxX2dldF9pcnFjaGlwX3N0YXRlIGNhbGxiYWNrIHRvIHJldHJpZXZl
IHBlbmRpbmcsCmFjdGl2ZSBhbmQgbWFza2VkIGludGVycnVwdCBzdGF0dXMuCgpTaWduZWQtb2Zm
LWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogdjU6IE5ldwogCiBk
cml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMgfCAzNiArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1ydGQxMTk1LW11eC5jIGIvZHJpdmVycy9pcnFj
aGlwL2lycS1ydGQxMTk1LW11eC5jCmluZGV4IDBlODY5NzNhYWZjYS4uMmYxYmNmZDlkNWQ2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2lycWNoaXAvaXJxLXJ0ZDExOTUtbXV4LmMKKysrIGIvZHJpdmVy
cy9pcnFjaGlwL2lycS1ydGQxMTk1LW11eC5jCkBAIC03LDYgKzcsNyBAQAogCiAjaW5jbHVkZSA8
bGludXgvYml0b3BzLmg+CiAjaW5jbHVkZSA8bGludXgvaW8uaD4KKyNpbmNsdWRlIDxsaW51eC9p
bnRlcnJ1cHQuaD4KICNpbmNsdWRlIDxsaW51eC9pcnFjaGlwLmg+CiAjaW5jbHVkZSA8bGludXgv
aXJxY2hpcC9jaGFpbmVkX2lycS5oPgogI2luY2x1ZGUgPGxpbnV4L2lycWRvbWFpbi5oPgpAQCAt
OTYsMTAgKzk3LDQ1IEBAIHN0YXRpYyB2b2lkIHJ0ZDExOTVfbXV4X3VubWFza19pcnEoc3RydWN0
IGlycV9kYXRhICpkYXRhKQogCXJhd19zcGluX3VubG9ja19pcnFyZXN0b3JlKCZtdXgtPmxvY2ss
IGZsYWdzKTsKIH0KIAorc3RhdGljIGludCBydGQxMTk1X211eF9nZXRfaXJxY2hpcF9zdGF0ZShz
dHJ1Y3QgaXJxX2RhdGEgKmRhdGEsCisJZW51bSBpcnFjaGlwX2lycV9zdGF0ZSB3aGljaCwgYm9v
bCAqc3RhdGUpCit7CisJc3RydWN0IHJ0ZDExOTVfaXJxX211eF9kYXRhICptdXggPSBpcnFfZGF0
YV9nZXRfaXJxX2NoaXBfZGF0YShkYXRhKTsKKwl1MzIgdmFsOworCisJc3dpdGNoICh3aGljaCkg
eworCWNhc2UgSVJRQ0hJUF9TVEFURV9QRU5ESU5HOgorCQkvKgorCQkgKiBVTVNLX0lTUiBwcm92
aWRlcyB0aGUgdW5tYXNrZWQgcGVuZGluZyBpbnRlcnJ1cHRzLAorCQkgKiBleGNlcHQgVUFSVCBh
bmQgSTJDLgorCQkgKi8KKwkJdmFsID0gcmVhZGxfcmVsYXhlZChtdXgtPnJlZ191bXNrX2lzcik7
CisJCSpzdGF0ZSA9ICEhKHZhbCAmIEJJVChkYXRhLT5od2lycSkpOworCQlicmVhazsKKwljYXNl
IElSUUNISVBfU1RBVEVfQUNUSVZFOgorCQkvKgorCQkgKiBJU1IgcHJvdmlkZXMgdGhlIG1hc2tl
ZCBwZW5kaW5nIGludGVycnVwdHMsCisJCSAqIGluY2x1ZGluZyBVQVJUIGFuZCBJMkMuCisJCSAq
LworCQl2YWwgPSByZWFkbF9yZWxheGVkKG11eC0+cmVnX2lzcik7CisJCSpzdGF0ZSA9ICEhKHZh
bCAmIEJJVChkYXRhLT5od2lycSkpOworCQlicmVhazsKKwljYXNlIElSUUNISVBfU1RBVEVfTUFT
S0VEOgorCQl2YWwgPSBtdXgtPmluZm8tPmlzcl90b19pbnRfZW5fbWFza1tkYXRhLT5od2lycV07
CisJCSpzdGF0ZSA9ICEobXV4LT5zY3B1X2ludF9lbiAmIHZhbCk7CisJCWJyZWFrOworCWRlZmF1
bHQ6CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCXJldHVybiAwOworfQorCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGlycV9jaGlwIHJ0ZDExOTVfbXV4X2lycV9jaGlwID0gewogCS5pcnFfYWNrCQk9
IHJ0ZDExOTVfbXV4X2Fja19pcnEsCiAJLmlycV9tYXNrCQk9IHJ0ZDExOTVfbXV4X21hc2tfaXJx
LAogCS5pcnFfdW5tYXNrCQk9IHJ0ZDExOTVfbXV4X3VubWFza19pcnEsCisJLmlycV9nZXRfaXJx
Y2hpcF9zdGF0ZQk9IHJ0ZDExOTVfbXV4X2dldF9pcnFjaGlwX3N0YXRlLAogfTsKIAogc3RhdGlj
IGludCBydGQxMTk1X211eF9pcnFfZG9tYWluX21hcChzdHJ1Y3QgaXJxX2RvbWFpbiAqZCwKLS0g
CjIuMTYuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
