Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCE37C8C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OjxNjD0/PRoY/kscXM9cXl8Ca/TBJWwzhcA2JvKVAmg=; b=lc1pAGnC7OvSc6
	xLawn0VZKVqYYlcCNm+iL8yjVNAYG3zEQewCtuV9GsU0r/vJv+JlUsHz9fpJ3GEqsCweUmfI39sLa
	1hJyC6226L4XdVMcJnrlihaCTCqTxA1ehnbyjYHiRzsZfa/WNyIPK7N2NLX3eToRvdBNJooY69TWi
	Z4f/tq6X87FD5mLdG00CdOLsMNiSCuAOHR4edco/KhY3+Vw7aUIfuHPZHzd8YL1db7R6CVsERTY0e
	1gfOEl9wtniJVdmcjiH6wzS5J/tB6FPg50Vs1VHBoLr48ADd6phvOc0pRIMEDsOA3yOgJ8QdUHUMN
	O59uUnbMJ978t2+sgmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrY7-0001Wk-4y; Wed, 31 Jul 2019 16:33:59 +0000
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrXy-0001VC-KG
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:33:53 +0000
Received: from player776.ha.ovh.net (unknown [10.109.146.20])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id A8E5F1A7BEB
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:33:47 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player776.ha.ovh.net (Postfix) with ESMTPSA id A3C58878DD52;
 Wed, 31 Jul 2019 16:33:28 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 2/3] media: imx7-media-csi: add i.MX6UL support
Date: Wed, 31 Jul 2019 18:33:30 +0200
Message-Id: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14045319867170182183
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrleehgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093350_807619_9C61F06F 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.48.182 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aS5NWDcgYW5kIGkuTVg2VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQg
aS5NWDZVTC9MIHN1cHBvcnQKdG8gaW14Ny1tZWRpYS1jc2kgZHJpdmVyLgoKU2lnbmVkLW9mZi1i
eTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29t
PgotLS0KCkNoYW5nZXMgZm9yIHYzOgotIHJlYmFzZSBvbiBMaW51eCB2NS4zLXJjMgotIHJlbW92
ZSBjc2lfc29jX2lkIHZhciBhcyBpdCdzIG5vdCBuZWVkZWQgYW55bW9yZSB0aGFua3MgdG8gY29t
bWl0CiAgZTBjNzZhN2QzNDI4ICgibWVkaWE6IGlteDctbWVkaWEtY3NpOiBnZXQgY3NpIHVwc3Ry
ZWFtIGVuZHBvaW50IikKCkNoYW5nZXMgZm9yIHYyOgogLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4
dHYvbWFzdGVyCiAtIG1lbnRpb24gaS5NWDZVTC9MIGluIGhlYWRlciBhbmQgS2NvbmZpZyBoZWxw
IHRleHQKIC0gcmVuYW1lIGNzaV90eXBlIHRvIGNzaV9zb2NfaWQKCiBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaW14L0tjb25maWcgICAgICAgICAgfCAgNCArLS0KIGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pbXgvaW14Ny1tZWRpYS1jc2kuYyB8IDMwICsrKysrKysrKysrKysrKy0tLS0tLS0KIDIgZmls
ZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9LY29uZmlnIGIvZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2lteC9LY29uZmlnCmluZGV4IDRjNzI2MzQ1ZGMyNS4uZjUxNDc2MjQzMDE2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L0tjb25maWcKKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2lteC9LY29uZmlnCkBAIC0yMiwxMSArMjIsMTEgQEAgY29uZmlnIFZJREVPX0lN
WF9DU0kKIAkgIEEgdmlkZW80bGludXggY2FtZXJhIHNlbnNvciBpbnRlcmZhY2UgZHJpdmVyIGZv
ciBpLk1YNS82LgogCiBjb25maWcgVklERU9fSU1YN19DU0kKLQl0cmlzdGF0ZSAiaS5NWDcgQ2Ft
ZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgorCXRyaXN0YXRlICJpLk1YNlVML0wgLyBpLk1Y
NyBDYW1lcmEgU2Vuc29yIEludGVyZmFjZSBkcml2ZXIiCiAJZGVwZW5kcyBvbiBWSURFT19JTVhf
TUVESUEgJiYgVklERU9fREVWICYmIEkyQwogCWRlZmF1bHQgeQogCWhlbHAKIAkgIEVuYWJsZSBz
dXBwb3J0IGZvciB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBkcml2ZXIgZm9y
Ci0JICBpLk1YNy4KKwkgIGkuTVg2VUwvTCBvciBpLk1YNy4KIGVuZG1lbnUKIGVuZGlmCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEtY3NpLmMKaW5kZXggNTAwYjRjMDhkOTY3
Li40Y2E3OWZmNGM5YjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14
Ny1tZWRpYS1jc2kuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaW14L2lteDctbWVkaWEt
Y3NpLmMKQEAgLTEsNiArMSw2IEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAogLyoKLSAqIFY0TDIgQ2FwdHVyZSBDU0kgU3ViZGV2IGZvciBGcmVlc2NhbGUgaS5NWDcgU09D
CisgKiBWNEwyIENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxlIGkuTVg2VUwvTCAvIGku
TVg3IFNPQwogICoKICAqIENvcHlyaWdodCAoYykgMjAxOSBMaW5hcm8gTHRkCiAgKgpAQCAtNzY1
LDYgKzc2NSw3IEBAIHN0YXRpYyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2Nz
aSAqY3NpKQogCXN0cnVjdCB2NGwyX3BpeF9mb3JtYXQgKm91dF9waXggPSAmdmRldi0+Zm10LmZt
dC5waXg7CiAJX191MzIgaW5fY29kZSA9IGNzaS0+Zm9ybWF0X21idXNbSU1YN19DU0lfUEFEX1NJ
TktdLmNvZGU7CiAJdTMyIGNyMSwgY3IxODsKKwlpbnQgd2lkdGggPSBvdXRfcGl4LT53aWR0aDsK
IAogCWlmIChvdXRfcGl4LT5maWVsZCA9PSBWNEwyX0ZJRUxEX0lOVEVSTEFDRUQpIHsKIAkJaW14
N19jc2lfZGVpbnRlcmxhY2VfZW5hYmxlKGNzaSwgdHJ1ZSk7CkBAIC03NzQsMTUgKzc3NSwyNyBA
QCBzdGF0aWMgaW50IGlteDdfY3NpX2NvbmZpZ3VyZShzdHJ1Y3QgaW14N19jc2kgKmNzaSkKIAkJ
aW14N19jc2lfYnVmX3N0cmlkZV9zZXQoY3NpLCAwKTsKIAl9CiAKLQlpbXg3X2NzaV9zZXRfaW1h
Z3BhcmEoY3NpLCBvdXRfcGl4LT53aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKKwljcjE4ID0gaW14
N19jc2lfcmVnX3JlYWQoY3NpLCBDU0lfQ1NJQ1IxOCk7CisKKwlpZiAoIWNzaS0+aXNfY3NpMikg
eworCQlpZiAob3V0X3BpeC0+cGl4ZWxmb3JtYXQgPT0gVjRMMl9QSVhfRk1UX1VZVlkgfHwKKwkJ
ICAgIG91dF9waXgtPnBpeGVsZm9ybWF0ID09IFY0TDJfUElYX0ZNVF9ZVVlWKQorCQkJd2lkdGgg
Kj0gMjsKKworCQlpbXg3X2NzaV9zZXRfaW1hZ3BhcmEoY3NpLCB3aWR0aCwgb3V0X3BpeC0+aGVp
Z2h0KTsKKworCQljcjE4IHw9IChCSVRfQkFTRUFERFJfU1dJVENIX0VOIHwgQklUX0JBU0VBRERS
X1NXSVRDSF9TRUwgfAorCQkJQklUX0JBU0VBRERSX0NIR19FUlJfRU4pOworCQlpbXg3X2NzaV9y
ZWdfd3JpdGUoY3NpLCBjcjE4LCBDU0lfQ1NJQ1IxOCk7CiAKLQlpZiAoIWNzaS0+aXNfY3NpMikK
IAkJcmV0dXJuIDA7CisJfQorCisJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91
dF9waXgtPmhlaWdodCk7CiAKIAljcjEgPSBpbXg3X2NzaV9yZWdfcmVhZChjc2ksIENTSV9DU0lD
UjEpOwogCWNyMSAmPSB+QklUX0dDTEtfTU9ERTsKIAotCWNyMTggPSBpbXg3X2NzaV9yZWdfcmVh
ZChjc2ksIENTSV9DU0lDUjE4KTsKIAljcjE4ICY9IEJJVF9NSVBJX0RBVEFfRk9STUFUX01BU0s7
CiAJY3IxOCB8PSBCSVRfREFUQV9GUk9NX01JUEk7CiAKQEAgLTgxNywxMSArODMwLDkgQEAgc3Rh
dGljIHZvaWQgaW14N19jc2lfZW5hYmxlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQogewogCWlteDdf
Y3NpX3N3X3Jlc2V0KGNzaSk7CiAKLQlpZiAoY3NpLT5pc19jc2kyKSB7Ci0JCWlteDdfY3NpX2Rt
YXJlcV9yZmZfZW5hYmxlKGNzaSk7Ci0JCWlteDdfY3NpX2h3X2VuYWJsZV9pcnEoY3NpKTsKLQkJ
aW14N19jc2lfaHdfZW5hYmxlKGNzaSk7Ci0JfQorCWlteDdfY3NpX2RtYXJlcV9yZmZfZW5hYmxl
KGNzaSk7CisJaW14N19jc2lfaHdfZW5hYmxlX2lycShjc2kpOworCWlteDdfY3NpX2h3X2VuYWJs
ZShjc2kpOwogfQogCiBzdGF0aWMgdm9pZCBpbXg3X2NzaV9kaXNhYmxlKHN0cnVjdCBpbXg3X2Nz
aSAqY3NpKQpAQCAtMTMwMiw2ICsxMzEzLDcgQEAgc3RhdGljIGludCBpbXg3X2NzaV9yZW1vdmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0gImZzbCxp
bXg3LWNzaSIgfSwKKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiB9LAogCXsgfSwK
IH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXg3X2NzaV9vZl9tYXRjaCk7Ci0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
