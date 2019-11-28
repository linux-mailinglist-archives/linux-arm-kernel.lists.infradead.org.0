Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4809110C69B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:26:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/YXQ4rpUaO6D0VhZ/bJXL4HZf6eMtsa+L4XtiG/hYHE=; b=TduQIOH7xxAPaf
	T5TSb/gvF+z7eZGORuRdYVS2cFnP40WDrJeIU8M7rj3y2N1Okn1cl3R84ZtY2RpNuxtjQvGrp6JBq
	bG1DbwE1755IKChqk7VwTly1yTdehpt+q5Kdr4FbVWIk+UpEWeIMZMCTCPbhYtjeks4mkLAGFYr4a
	IRM/RA3SZMBb8DdMTUAm9z16uG/kvSk1e4zt3Cmzt1NeKb1v0KKIghgBqz7O+QXRTFKXWbnISqxLX
	Pkq+ix8ZYvbZ4wjmLfd9jszxTQFnc4HVM7R5gj5s+hCRHAUXpazwTxgxYwbW1Q/IX/pIcfc/EIY/e
	Ah8ydnPkP8wjEPP/WjuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGzs-0005rs-Bz; Thu, 28 Nov 2019 10:26:04 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGzh-0005rW-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:25:55 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1D174240014;
 Thu, 28 Nov 2019 10:25:39 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: at91: fix possible deadlock
Date: Thu, 28 Nov 2019 11:25:31 +0100
Message-Id: <20191128102531.817549-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_022553_693085_6CF3E317 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TG9ja2RlcCB3YXJucyBhYm91dCBhIHBvc3NpYmxlIGNpcmN1bGFyIGxvY2tpbmcgZGVwZW5kZW5j
eSBiZWNhdXNlIHVzaW5nCnN5c2Nvbl9ub2RlX3RvX3JlZ21hcCgpIHdpbGwgbWFrZSB0aGUgY3Jl
YXRlZCByZWdtYXAgZ2V0IGFuZCBlbmFibGUgdGhlCmZpcnN0IGNsb2NrIGl0IGNhbiBwYXJzZSBm
cm9tIHRoZSBkZXZpY2UgdHJlZS4gVGhpcyBjbG9jayBpcyBub3QgbmVlZGVkIHRvCmFjY2VzcyB0
aGUgcmVnaXN0ZXJzIGFuZCBzaG91bGQgbm90IGJlIGVuYWJsZWQgYXQgdGhhdCB0aW1lLgoKVXNl
IHRoZSByZWNlbnRseSBpbnRyb2R1Y2VkIGRldmljZV9ub2RlX3RvX3JlZ21hcCB0byBzb2x2ZSB0
aGF0IGFzIGl0IGxvb2tzCnVwIHRoZSByZWdtYXAgaW4gdGhlIHNhbWUgbGlzdCBidXQgZG9lc24n
dCBjYXJlIGFib3V0IHRoZSBjbG9ja3MuCgpSZXBvcnRlZC1ieTogTWljaGHFgiBNaXJvc8WCYXcg
PG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPgpTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kcmUgQmVsbG9u
aSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20+Ci0tLQogZHJpdmVycy9jbGsvYXQ5MS9h
dDkxc2FtOTI2MC5jIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXJsLmMgIHwgMiAr
LQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMgIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5
MS9wbWMuYyAgICAgICAgIHwgMiArLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMgICAgIHwg
MiArLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQ0LmMgICAgIHwgMiArLQogNiBmaWxlcyBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5j
CmluZGV4IDBhYWJlNDlhZWQwOS4uYTlkNDIzNDc1OGQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Ns
ay9hdDkxL2F0OTFzYW05MjYwLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5j
CkBAIC0zNDgsNyArMzQ4LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0OTFzYW05MjZ4X3BtY19z
ZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCQlyZXR1cm47CiAJbWFpbnh0YWxfbmFtZSA9
IG9mX2Nsa19nZXRfcGFyZW50X25hbWUobnAsIGkpOwogCi0JcmVnbWFwID0gc3lzY29uX25vZGVf
dG9fcmVnbWFwKG5wKTsKKwlyZWdtYXAgPSBkZXZpY2Vfbm9kZV90b19yZWdtYXAobnApOwogCWlm
IChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9h
dDkxL2F0OTFzYW05cmwuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTlybC5jCmluZGV4IDBh
YzM0Y2RhYTEwNi4uNzdmZTgzYTczYmY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL2F0
OTFzYW05cmwuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwuYwpAQCAtODMsNyAr
ODMsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTlybF9wbWNfc2V0dXAoc3RydWN0IGRl
dmljZV9ub2RlICpucCkKIAkJcmV0dXJuOwogCW1haW54dGFsX25hbWUgPSBvZl9jbGtfZ2V0X3Bh
cmVudF9uYW1lKG5wLCBpKTsKIAotCXJlZ21hcCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChucCk7
CisJcmVnbWFwID0gZGV2aWNlX25vZGVfdG9fcmVnbWFwKG5wKTsKIAlpZiAoSVNfRVJSKHJlZ21h
cCkpCiAJCXJldHVybjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1
LmMgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05eDUuYwppbmRleCAwODU1ZjNhODBjYzcuLjA4
NmNmMGI0OTU1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMKKysr
IGIvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXg1LmMKQEAgLTE0Niw3ICsxNDYsNyBAQCBzdGF0
aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTl4NV9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpu
cCwKIAkJcmV0dXJuOwogCW1haW54dGFsX25hbWUgPSBvZl9jbGtfZ2V0X3BhcmVudF9uYW1lKG5w
LCBpKTsKIAotCXJlZ21hcCA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChucCk7CisJcmVnbWFwID0g
ZGV2aWNlX25vZGVfdG9fcmVnbWFwKG5wKTsKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVy
bjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9wbWMuYyBiL2RyaXZlcnMvY2xrL2F0
OTEvcG1jLmMKaW5kZXggMGIwM2NmYWUzYTlkLi5iNzE1MTVhY2RlYzEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvY2xrL2F0OTEvcG1jLmMKKysrIGIvZHJpdmVycy9jbGsvYXQ5MS9wbWMuYwpAQCAtMjc1
LDcgKzI3NSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IHBtY19yZWdpc3Rlcl9vcHModm9pZCkKIAog
CW5wID0gb2ZfZmluZF9tYXRjaGluZ19ub2RlKE5VTEwsIHNhbWE1ZDJfcG1jX2R0X2lkcyk7CiAK
LQlwbWNyZWcgPSBzeXNjb25fbm9kZV90b19yZWdtYXAobnApOworCXBtY3JlZyA9IGRldmljZV9u
b2RlX3RvX3JlZ21hcChucCk7CiAJaWYgKElTX0VSUihwbWNyZWcpKQogCQlyZXR1cm4gUFRSX0VS
UihwbWNyZWcpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYyBiL2Ry
aXZlcnMvY2xrL2F0OTEvc2FtYTVkMi5jCmluZGV4IDBkZTExMDg3MzdkYi4uZmY3ZTNmNzI3MDgy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDIuYworKysgYi9kcml2ZXJzL2Ns
ay9hdDkxL3NhbWE1ZDIuYwpAQCAtMTYyLDcgKzE2Miw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBz
YW1hNWQyX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCQlyZXR1cm47CiAJbWFp
bnh0YWxfbmFtZSA9IG9mX2Nsa19nZXRfcGFyZW50X25hbWUobnAsIGkpOwogCi0JcmVnbWFwID0g
c3lzY29uX25vZGVfdG9fcmVnbWFwKG5wKTsKKwlyZWdtYXAgPSBkZXZpY2Vfbm9kZV90b19yZWdt
YXAobnApOwogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJuOwogCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYyBiL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkNC5jCmlu
ZGV4IDI1YjE1NmQ0ZTY0NS4uYTZkZWU0YTNiNmU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9h
dDkxL3NhbWE1ZDQuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYwpAQCAtMTM2LDcg
KzEzNiw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQ0X3BtY19zZXR1cChzdHJ1Y3QgZGV2
aWNlX25vZGUgKm5wKQogCQlyZXR1cm47CiAJbWFpbnh0YWxfbmFtZSA9IG9mX2Nsa19nZXRfcGFy
ZW50X25hbWUobnAsIGkpOwogCi0JcmVnbWFwID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKG5wKTsK
KwlyZWdtYXAgPSBkZXZpY2Vfbm9kZV90b19yZWdtYXAobnApOwogCWlmIChJU19FUlIocmVnbWFw
KSkKIAkJcmV0dXJuOwogCi0tIAoyLjIzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
