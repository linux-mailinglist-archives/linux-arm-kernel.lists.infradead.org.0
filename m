Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01717B942C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HK7f0bUs8Yfs74496aNK5NtS5CnUroPeF6X7xpDZq3Q=; b=ec/vtxrR1fNAf2
	40xGDpuD3V2JegZFoiSD/k0lqRb25uiYf4VN3Ld+r8OG8LgUI9iPAD0TVdLpUSUv9LuF8n4150PFk
	ZsPdTUO8S/i3p83Q3iw+dBZx/OqCeM26Xh+ussjLDqVDmq7qxN5U1FGJi7cdcHvT6EEe5S0kRV0Kz
	gRjKSJ6PvyF2fEWW4UNSmLkBnSCFehP5sg5LiiUBIAbkaWI3RBeEuN7qvtKznzS7qhUNTV6z7YM5O
	f+t85djRvMFo8lGGVUzvSMeG/dbSFy1QfYh3HwLOag8s1a97kht5QbY/9AkMNefW/0QStgKBk+kdn
	7R/QRyk2ubh+7mgiX4Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBL0K-00076Z-GW; Fri, 20 Sep 2019 15:39:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBL0D-00075j-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:39:23 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id AE20FFF811;
 Fri, 20 Sep 2019 15:39:12 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: at91: avoid sleeping early
Date: Fri, 20 Sep 2019 17:39:06 +0200
Message-Id: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_083921_266919_EEA47D8F 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SXQgaXMgbm90IGFsbG93ZWQgdG8gc2xlZXAgdG8gZWFybHkgaW4gdGhlIGJvb3QgcHJvY2VzcyBh
bmQgdGhpcyBtYXkgbGVhZAp0byBrZXJuZWwgaXNzdWVzIGlmIHRoZSBib290bG9hZGVyIGRpZG4n
dCBwcmVwYXJlIHRoZSBzbG93IGNsb2NrIGFuZCBtYWluCmNsb2NrLgoKVGhpcyByZXN1bHRzIGlu
IHRoZSBmb2xsb3dpbmcgZXJyb3IgYW5kIGR1bXAgc3RhY2sgb24gdGhlIEFyaWV0dGFHMjU6CiAg
IGJhZDogc2NoZWR1bGluZyBmcm9tIHRoZSBpZGxlIHRocmVhZCEKCkVuc3VyZSBpdCBpcyBwb3Nz
aWJsZSB0byBzbGVlcCwgZWxzZSBzaW1wbHkgaGF2ZSBhIGRlbGF5LgoKUmVwb3J0ZWQtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1v
ZmYtYnk6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4K
LS0tCgpOb3RlIHRoYXQgdGhpcyB3YXMgYWxyZWFkeSBkaXNjdXNzZWQgYSB3aGlsZSBhZ28gYW5k
IEFybmQgc2FpZCB0aGlzIGFwcHJvYWNoIHdhcwpyZWFzb25hYmxlOgogIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvNjEyMDgxOC5NeWVKWjc0aFlhQHd1ZXJmZWwvCgogZHJpdmVycy9jbGsv
YXQ5MS9jbGstbWFpbi5jIHwgIDUgKysrKy0KIGRyaXZlcnMvY2xrL2F0OTEvc2NrYy5jICAgICB8
IDIwICsrKysrKysrKysrKysrKystLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9jbGstbWFp
bi5jIGIvZHJpdmVycy9jbGsvYXQ5MS9jbGstbWFpbi5jCmluZGV4IGY2MDdlZTcwMmM4My4uY2Nk
NDhlN2EzZDc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL2Nsay1tYWluLmMKKysrIGIv
ZHJpdmVycy9jbGsvYXQ5MS9jbGstbWFpbi5jCkBAIC0yOTMsNyArMjkzLDEwIEBAIHN0YXRpYyBp
bnQgY2xrX21haW5fcHJvYmVfZnJlcXVlbmN5KHN0cnVjdCByZWdtYXAgKnJlZ21hcCkKIAkJcmVn
bWFwX3JlYWQocmVnbWFwLCBBVDkxX0NLR1JfTUNGUiwgJm1jZnIpOwogCQlpZiAobWNmciAmIEFU
OTFfUE1DX01BSU5SRFkpCiAJCQlyZXR1cm4gMDsKLQkJdXNsZWVwX3JhbmdlKE1BSU5GX0xPT1Bf
TUlOX1dBSVQsIE1BSU5GX0xPT1BfTUFYX1dBSVQpOworCQlpZiAoc3lzdGVtX3N0YXRlIDwgU1lT
VEVNX1JVTk5JTkcpCisJCQl1ZGVsYXkoTUFJTkZfTE9PUF9NSU5fV0FJVCk7CisJCWVsc2UKKwkJ
CXVzbGVlcF9yYW5nZShNQUlORl9MT09QX01JTl9XQUlULCBNQUlORl9MT09QX01BWF9XQUlUKTsK
IAl9IHdoaWxlICh0aW1lX2JlZm9yZShwcmVwX3RpbWUsIHRpbWVvdXQpKTsKIAogCXJldHVybiAt
RVRJTUVET1VUOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9zY2tjLmMgYi9kcml2ZXJz
L2Nsay9hdDkxL3Nja2MuYwppbmRleCA5YmZlOWEyODI5NGEuLmZhYzBjYTU2ZDQyZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9zY2tjLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9zY2tj
LmMKQEAgLTc2LDcgKzc2LDEwIEBAIHN0YXRpYyBpbnQgY2xrX3Nsb3dfb3NjX3ByZXBhcmUoc3Ry
dWN0IGNsa19odyAqaHcpCiAKIAl3cml0ZWwodG1wIHwgb3NjLT5iaXRzLT5jcl9vc2MzMmVuLCBz
Y2tjcik7CiAKLQl1c2xlZXBfcmFuZ2Uob3NjLT5zdGFydHVwX3VzZWMsIG9zYy0+c3RhcnR1cF91
c2VjICsgMSk7CisJaWYgKHN5c3RlbV9zdGF0ZSA8IFNZU1RFTV9SVU5OSU5HKQorCQl1ZGVsYXko
b3NjLT5zdGFydHVwX3VzZWMpOworCWVsc2UKKwkJdXNsZWVwX3JhbmdlKG9zYy0+c3RhcnR1cF91
c2VjLCBvc2MtPnN0YXJ0dXBfdXNlYyArIDEpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0xODcsNyAr
MTkwLDEwIEBAIHN0YXRpYyBpbnQgY2xrX3Nsb3dfcmNfb3NjX3ByZXBhcmUoc3RydWN0IGNsa19o
dyAqaHcpCiAKIAl3cml0ZWwocmVhZGwoc2NrY3IpIHwgb3NjLT5iaXRzLT5jcl9yY2VuLCBzY2tj
cik7CiAKLQl1c2xlZXBfcmFuZ2Uob3NjLT5zdGFydHVwX3VzZWMsIG9zYy0+c3RhcnR1cF91c2Vj
ICsgMSk7CisJaWYgKHN5c3RlbV9zdGF0ZSA8IFNZU1RFTV9SVU5OSU5HKQorCQl1ZGVsYXkob3Nj
LT5zdGFydHVwX3VzZWMpOworCWVsc2UKKwkJdXNsZWVwX3JhbmdlKG9zYy0+c3RhcnR1cF91c2Vj
LCBvc2MtPnN0YXJ0dXBfdXNlYyArIDEpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0yODgsNyArMjk0
LDEwIEBAIHN0YXRpYyBpbnQgY2xrX3NhbTl4NV9zbG93X3NldF9wYXJlbnQoc3RydWN0IGNsa19o
dyAqaHcsIHU4IGluZGV4KQogCiAJd3JpdGVsKHRtcCwgc2NrY3IpOwogCi0JdXNsZWVwX3Jhbmdl
KFNMT1dDS19TV19USU1FX1VTRUMsIFNMT1dDS19TV19USU1FX1VTRUMgKyAxKTsKKwlpZiAoc3lz
dGVtX3N0YXRlIDwgU1lTVEVNX1JVTk5JTkcpCisJCXVkZWxheShTTE9XQ0tfU1dfVElNRV9VU0VD
KTsKKwllbHNlCisJCXVzbGVlcF9yYW5nZShTTE9XQ0tfU1dfVElNRV9VU0VDLCBTTE9XQ0tfU1df
VElNRV9VU0VDICsgMSk7CiAKIAlyZXR1cm4gMDsKIH0KQEAgLTUzMyw3ICs1NDIsMTAgQEAgc3Rh
dGljIGludCBjbGtfc2FtYTVkNF9zbG93X29zY19wcmVwYXJlKHN0cnVjdCBjbGtfaHcgKmh3KQog
CQlyZXR1cm4gMDsKIAl9CiAKLQl1c2xlZXBfcmFuZ2Uob3NjLT5zdGFydHVwX3VzZWMsIG9zYy0+
c3RhcnR1cF91c2VjICsgMSk7CisJaWYgKHN5c3RlbV9zdGF0ZSA8IFNZU1RFTV9SVU5OSU5HKQor
CQl1ZGVsYXkob3NjLT5zdGFydHVwX3VzZWMpOworCWVsc2UKKwkJdXNsZWVwX3JhbmdlKG9zYy0+
c3RhcnR1cF91c2VjLCBvc2MtPnN0YXJ0dXBfdXNlYyArIDEpOwogCW9zYy0+cHJlcGFyZWQgPSB0
cnVlOwogCiAJcmV0dXJuIDA7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
