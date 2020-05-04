Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8252C1C47EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/Uy1MXIAB8ahB/SecEbojYuSmdOItbnSWhshzD/R+M=; b=blspNgiTfu/Ftx
	Fshl8H0VY136BtA02HE1uH1fYa7tLUw4APUmgSUIJgyF9jBrWutNg5nHhQwFnURp5xu5KlbrH7upp
	ofuebrY731ERnUchPHCN0gEEg1wE+HrW3CQxNkzD8dBN4yAFnITlmVVpWBQYZG4T0ONtl35uKQBKS
	z/fp+s7zT2U+3vZWFzIAZWMl4Zr6vi9Uc1uy1ZYwR4lN3BBygJTSQtu5Jn0xqC4c6ENk9bucPIHHq
	fR77N+LUgjZbKXQ8EbSZxD+VEAkrstmxWZ+SbYTxErI8DcbTK+dnRgugEl/WMne0jAt1KjD39bQZ5
	4K/euh08fy55kMZjOPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhZe-00018Y-KT; Mon, 04 May 2020 20:20:22 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhYe-000896-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:19:22 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GDj23lhXzLn;
 Mon,  4 May 2020 22:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588623558; bh=fcLJDZBV/tNDlGoHlaLE5xKR15r8/Q8zYkN7kzB9L5E=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=TRnrGV17bZcWY9pCenItXt2IDfZm8jjQkn3cH3NTdQsFEZEPOjCbE7pc/0HVa7tqr
 5nzxhKD7vdb94uw4P9t5PanuZMUwvNVAuzo6cDBYPq10JsWF2tMhOtF4I1zzimdgs0
 YkZedE3Yh1v2ejI9dVHf0OFOXzA6SH4m5toUqESWkXb6ti7othuyEhs2xUXiEmpJBB
 Z0aiJD6kRhtWfgXPy0OwCR1U9whUm++pcf6fR3YtkU0GNbYjxBtonGFcntQ2Ax9LPI
 aZGnAybxRmmpv7lQAAPXrP9MeytbinniC47LxhJ+Uu6pFWRAGuQrI2EQinIoEjC3bO
 6c3GO3ABqHcyw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 04 May 2020 22:19:18 +0200
Message-Id: <5f41e1872b1a9a7f0f50f9bb47e4378e67e55e74.1588623391.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1588623391.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588623391.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH v6 3/3] clk: at91: allow setting all PMC clock parents via DT
MIME-Version: 1.0
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_131920_666399_58273DFD 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgbmVlZCB0byBoYXZlIGNsb2NrcyBhY2Nlc3NpYmxlIHZpYSBwaGFuZGxlIHRvIHNlbGVjdCB0
aGVtCmFzIHBlcmlwaGVyYWwgY2xvY2sgcGFyZW50IHVzaW5nIGFzc2lnbmVkLWNsb2NrLXBhcmVu
dHMgaW4gRFQuCkFkZCBzdXBwb3J0IGZvciBQTExBQ0svUExMQkNLL0FVRElPUExMQ0sgY2xvY2tz
IHdoZXJlIGF2YWlsYWJsZS4KClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgTWlyb3PFgmF3IDxtaXJx
LWxpbnV4QHJlcmUucW1xbS5wbD4KLS0tCnYyOiByZWJhc2UgdG8gY2xrL2Nsay1hdDkxIGJyYW5j
aAp2Mzogbm8gY2hhbmdlcwp2NDogZXh0ZW5kIHRvIHdob2xlIGZhbWlseQp2NTogZml4IGNvcHkt
YW5kLXBhc3RlIGJ1Z3MgZm9yIFNBTUE1RDMvNAp2NjogbWFrZSBBVURJT1BMTCdzIGlkIHNlcGFy
YXRlIHRvIFBMTEIKLS0tCiBkcml2ZXJzL2Nsay9hdDkxL2F0OTFybTkyMDAuYyAgICB8IDYgKysr
KystCiBkcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05MjYwLmMgICB8IDYgKysrKystCiBkcml2ZXJz
L2Nsay9hdDkxL2F0OTFzYW05ZzQ1LmMgICB8IDQgKysrLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkx
c2FtOW4xMi5jICAgfCA2ICsrKysrLQogZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOXJsLmMgICAg
fCA0ICsrKy0KIGRyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTl4NS5jICAgIHwgNCArKystCiBkcml2
ZXJzL2Nsay9hdDkxL3NhbTl4NjAuYyAgICAgICB8IDQgKysrLQogZHJpdmVycy9jbGsvYXQ5MS9z
YW1hNWQyLmMgICAgICAgfCA2ICsrKysrLQogZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQzLmMgICAg
ICAgfCA0ICsrKy0KIGRyaXZlcnMvY2xrL2F0OTEvc2FtYTVkNC5jICAgICAgIHwgNCArKystCiBp
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2F0OTEuaCB8IDMgKysrCiAxMSBmaWxlcyBjaGFuZ2Vk
LCA0MSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2Nsay9hdDkxL2F0OTFybTkyMDAuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXJtOTIwMC5jCmlu
ZGV4IDhkYTg4ZTlhOTVkOC4uMzhiZGI0OTgxMzE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9h
dDkxL2F0OTFybTkyMDAuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFybTkyMDAuYwpAQCAt
OTgsNyArOTgsNyBAQCBzdGF0aWMgdm9pZCBfX2luaXQgYXQ5MXJtOTIwMF9wbWNfc2V0dXAoc3Ry
dWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAot
CWF0OTFybTkyMDBfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX01BSU4gKyAxLAorCWF0OTFy
bTkyMDBfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUoUE1DX1BMTEJDSyArIDEsCiAJCQkJCSAgICBu
Y2soYXQ5MXJtOTIwMF9zeXN0ZW1jayksCiAJCQkJCSAgICBuY2soYXQ5MXJtOTIwMF9wZXJpcGhj
ayksIDAsIDQpOwogCWlmICghYXQ5MXJtOTIwMF9wbWMpCkBAIC0xMjMsMTIgKzEyMywxNiBAQCBz
dGF0aWMgdm9pZCBfX2luaXQgYXQ5MXJtOTIwMF9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2Rl
ICpucCkKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsKIAorCWF0OTFybTkyMDBf
cG1jLT5jaHdzW1BNQ19QTExBQ0tdID0gaHc7CisKIAlodyA9IGF0OTFfY2xrX3JlZ2lzdGVyX3Bs
bChyZWdtYXAsICJwbGxiY2siLCAibWFpbmNrIiwgMSwKIAkJCQkgICAmYXQ5MXJtOTIwMF9wbGxf
bGF5b3V0LAogCQkJCSAgICZybTkyMDBfcGxsX2NoYXJhY3RlcmlzdGljcyk7CiAJaWYgKElTX0VS
UihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxcm05MjAwX3BtYy0+Y2h3c1tQTUNfUExM
QkNLXSA9IGh3OworCiAJcGFyZW50X25hbWVzWzBdID0gc2xvd3h0YWxfbmFtZTsKIAlwYXJlbnRf
bmFtZXNbMV0gPSAibWFpbmNrIjsKIAlwYXJlbnRfbmFtZXNbMl0gPSAicGxsYWNrIjsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTkyNjAuYyBiL2RyaXZlcnMvY2xrL2F0OTEv
YXQ5MXNhbTkyNjAuYwppbmRleCA3ZTVmZjI1MmZmZmMuLjZkMDcyM2FhOGIxMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2FtOTI2MC5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEv
YXQ5MXNhbTkyNjAuYwpAQCAtMzUyLDcgKzM1Miw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkx
c2FtOTI2eF9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpucCwKIAlpZiAoSVNfRVJSKHJl
Z21hcCkpCiAJCXJldHVybjsKIAotCWF0OTFzYW05MjYwX3BtYyA9IHBtY19kYXRhX2FsbG9jYXRl
KFBNQ19NQUlOICsgMSwKKwlhdDkxc2FtOTI2MF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNf
UExMQkNLICsgMSwKIAkJCQkJICAgIG5kY2soZGF0YS0+c2NrLCBkYXRhLT5udW1fc2NrKSwKIAkJ
CQkJICAgIG5kY2soZGF0YS0+cGNrLCBkYXRhLT5udW1fcGNrKSwKIAkJCQkJICAgIDAsIGRhdGEt
Pm51bV9wcm9nY2spOwpAQCAtMzk5LDEyICszOTksMTYgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0
OTFzYW05MjZ4X3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCWlmIChJU19FUlIo
aHcpKQogCQlnb3RvIGVycl9mcmVlOwogCisJYXQ5MXNhbTkyNjBfcG1jLT5jaHdzW1BNQ19QTExB
Q0tdID0gaHc7CisKIAlodyA9IGF0OTFfY2xrX3JlZ2lzdGVyX3BsbChyZWdtYXAsICJwbGxiY2si
LCAibWFpbmNrIiwgMSwKIAkJCQkgICBkYXRhLT5wbGxiX2xheW91dCwKIAkJCQkgICBkYXRhLT5w
bGxiX2NoYXJhY3RlcmlzdGljcyk7CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7
CiAKKwlhdDkxc2FtOTI2MF9wbWMtPmNod3NbUE1DX1BMTEJDS10gPSBodzsKKwogCXBhcmVudF9u
YW1lc1swXSA9IHNsY2tfbmFtZTsKIAlwYXJlbnRfbmFtZXNbMV0gPSAibWFpbmNrIjsKIAlwYXJl
bnRfbmFtZXNbMl0gPSAicGxsYWNrIjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5
MXNhbTlnNDUuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTlnNDUuYwppbmRleCA1ZDE4ZWIw
NGMyMTguLjk4NzNiNTgzYzI2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9hdDkxc2Ft
OWc0NS5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTlnNDUuYwpAQCAtMTE1LDcgKzEx
NSw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOWc0NV9wbWNfc2V0dXAoc3RydWN0IGRl
dmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAotCWF0OTFz
YW05ZzQ1X3BtYyA9IHBtY19kYXRhX2FsbG9jYXRlKFBNQ19NQUlOICsgMSwKKwlhdDkxc2FtOWc0
NV9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQUNLICsgMSwKIAkJCQkJICAgIG5jayhh
dDkxc2FtOWc0NV9zeXN0ZW1jayksCiAJCQkJCSAgICBuY2soYXQ5MXNhbTlnNDVfcGVyaXBoY2sp
LCAwLCAyKTsKIAlpZiAoIWF0OTFzYW05ZzQ1X3BtYykKQEAgLTE0Myw2ICsxNDMsOCBAQCBzdGF0
aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTlnNDVfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnApCiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlhdDkxc2FtOWc0NV9w
bWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwogCWh3ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfdXRt
aShyZWdtYXAsIE5VTEwsICJ1dG1pY2siLCAibWFpbmNrIik7CiAJaWYgKElTX0VSUihodykpCiAJ
CWdvdG8gZXJyX2ZyZWU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05bjEy
LmMgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05bjEyLmMKaW5kZXggM2EyNTY0YzJmNzI0Li42
MzBkYzVkODcxNzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTluMTIuYwor
KysgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05bjEyLmMKQEAgLTEyOCw3ICsxMjgsNyBAQCBz
dGF0aWMgdm9pZCBfX2luaXQgYXQ5MXNhbTluMTJfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnApCiAJaWYgKElTX0VSUihyZWdtYXApKQogCQlyZXR1cm47CiAKLQlhdDkxc2FtOW4xMl9w
bWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfTUFJTiArIDEsCisJYXQ5MXNhbTluMTJfcG1jID0g
cG1jX2RhdGFfYWxsb2NhdGUoUE1DX1BMTEJDSyArIDEsCiAJCQkJCSAgIG5jayhhdDkxc2FtOW4x
Ml9zeXN0ZW1jayksIDMxLCAwLCAyKTsKIAlpZiAoIWF0OTFzYW05bjEyX3BtYykKIAkJcmV0dXJu
OwpAQCAtMTYyLDExICsxNjIsMTUgQEAgc3RhdGljIHZvaWQgX19pbml0IGF0OTFzYW05bjEyX3Bt
Y19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcpKQogCQlnb3Rv
IGVycl9mcmVlOwogCisJYXQ5MXNhbTluMTJfcG1jLT5jaHdzW1BNQ19QTExBQ0tdID0gaHc7CisK
IAlodyA9IGF0OTFfY2xrX3JlZ2lzdGVyX3BsbChyZWdtYXAsICJwbGxiY2siLCAibWFpbmNrIiwg
MSwKIAkJCQkgICAmYXQ5MXJtOTIwMF9wbGxfbGF5b3V0LCAmcGxsYl9jaGFyYWN0ZXJpc3RpY3Mp
OwogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVycl9mcmVlOwogCisJYXQ5MXNhbTluMTJfcG1j
LT5jaHdzW1BNQ19QTExCQ0tdID0gaHc7CisKIAlwYXJlbnRfbmFtZXNbMF0gPSBzbGNrX25hbWU7
CiAJcGFyZW50X25hbWVzWzFdID0gIm1haW5jayI7CiAJcGFyZW50X25hbWVzWzJdID0gInBsbGFk
aXZjayI7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwuYyBiL2RyaXZl
cnMvY2xrL2F0OTEvYXQ5MXNhbTlybC5jCmluZGV4IGJjZjA3ZjZhMGUwZS4uMGQxY2M0NGIwNTZm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05cmwuYworKysgYi9kcml2ZXJz
L2Nsay9hdDkxL2F0OTFzYW05cmwuYwpAQCAtODcsNyArODcsNyBAQCBzdGF0aWMgdm9pZCBfX2lu
aXQgYXQ5MXNhbTlybF9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNf
RVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAotCWF0OTFzYW05cmxfcG1jID0gcG1jX2RhdGFfYWxs
b2NhdGUoUE1DX01BSU4gKyAxLAorCWF0OTFzYW05cmxfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUo
UE1DX1BMTEFDSyArIDEsCiAJCQkJCSAgIG5jayhhdDkxc2FtOXJsX3N5c3RlbWNrKSwKIAkJCQkJ
ICAgbmNrKGF0OTFzYW05cmxfcGVyaXBoY2spLCAwLCAyKTsKIAlpZiAoIWF0OTFzYW05cmxfcG1j
KQpAQCAtMTA1LDYgKzEwNSw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOXJsX3BtY19z
ZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVy
cl9mcmVlOwogCisJYXQ5MXNhbTlybF9wbWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwogCWh3
ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfdXRtaShyZWdtYXAsIE5VTEwsICJ1dG1pY2siLCAibWFpbmNr
Iik7CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9hdDkxL2F0OTFzYW05eDUuYyBiL2RyaXZlcnMvY2xrL2F0OTEvYXQ5MXNhbTl4NS5j
CmluZGV4IGYxMzc1NmI0MDdlMi4uMGNlM2RhMDgwMjg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Ns
ay9hdDkxL2F0OTFzYW05eDUuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL2F0OTFzYW05eDUuYwpA
QCAtMTUwLDcgKzE1MCw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBhdDkxc2FtOXg1X3BtY19zZXR1
cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJu
OwogCi0JYXQ5MXNhbTl4NV9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfTUFJTiArIDEsCisJ
YXQ5MXNhbTl4NV9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQUNLICsgMSwKIAkJCQkJ
ICAgbmNrKGF0OTFzYW05eDVfc3lzdGVtY2spLCAzMSwgMCwgMik7CiAJaWYgKCFhdDkxc2FtOXg1
X3BtYykKIAkJcmV0dXJuOwpAQCAtMTg0LDYgKzE4NCw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBh
dDkxc2FtOXg1X3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAogCWlmIChJU19FUlIo
aHcpKQogCQlnb3RvIGVycl9mcmVlOwogCisJYXQ5MXNhbTl4NV9wbWMtPmNod3NbUE1DX1BMTEFD
S10gPSBodzsKKwogCWh3ID0gYXQ5MV9jbGtfcmVnaXN0ZXJfdXRtaShyZWdtYXAsIE5VTEwsICJ1
dG1pY2siLCAibWFpbmNrIik7CiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9hdDkxL3NhbTl4NjAuYyBiL2RyaXZlcnMvY2xrL2F0OTEv
c2FtOXg2MC5jCmluZGV4IGRiMTRlMDQyN2M3Zi4uM2UyMGFhNjgyNTlmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2Nsay9hdDkxL3NhbTl4NjAuYworKysgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbTl4NjAu
YwpAQCAtMTgyLDcgKzE4Miw3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW05eDYwX3BtY19zZXR1
cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIocmVnbWFwKSkKIAkJcmV0dXJu
OwogCi0Jc2FtOXg2MF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfTUFJTiArIDEsCisJc2Ft
OXg2MF9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0ZShQTUNfUExMQUNLICsgMSwKIAkJCQkJbmNrKHNh
bTl4NjBfc3lzdGVtY2spLAogCQkJCQluY2soc2FtOXg2MF9wZXJpcGhjayksCiAJCQkJCW5jayhz
YW05eDYwX2djayksIDgpOwpAQCAtMjE0LDYgKzIxNCw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBz
YW05eDYwX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcp
KQogCQlnb3RvIGVycl9mcmVlOwogCisJc2FtOXg2MF9wbWMtPmNod3NbUE1DX1BMTEFDS10gPSBo
dzsKKwogCWh3ID0gc2FtOXg2MF9jbGtfcmVnaXN0ZXJfcGxsKHJlZ21hcCwgJnBtY19wbGxfbG9j
aywgInVwbGxjayIsCiAJCQkJICAgICAgIm1haW5fb3NjIiwgMSwgJnVwbGxfY2hhcmFjdGVyaXN0
aWNzKTsKIAlpZiAoSVNfRVJSKGh3KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2F0OTEvc2Ft
YTVkMi5jIGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQyLmMKaW5kZXggYWU1ZTgzY2FkYjNkLi5i
M2ZhMjI5MWNjZDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkMi5jCisrKyBi
L2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkMi5jCkBAIC0xNjYsNyArMTY2LDcgQEAgc3RhdGljIHZv
aWQgX19pbml0IHNhbWE1ZDJfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApCiAJaWYg
KElTX0VSUihyZWdtYXApKQogCQlyZXR1cm47CiAKLQlzYW1hNWQyX3BtYyA9IHBtY19kYXRhX2Fs
bG9jYXRlKFBNQ19JMlMxX01VWCArIDEsCisJc2FtYTVkMl9wbWMgPSBwbWNfZGF0YV9hbGxvY2F0
ZShQTUNfQVVESU9QTExDSyArIDEsCiAJCQkJCW5jayhzYW1hNWQyX3N5c3RlbWNrKSwKIAkJCQkJ
bmNrKHNhbWE1ZDJfcGVyaXBoMzJjayksCiAJCQkJCW5jayhzYW1hNWQyX2djayksIDMpOwpAQCAt
MjAyLDYgKzIwMiw4IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQyX3BtY19zZXR1cChzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wKQogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVycl9mcmVlOwog
CisJc2FtYTVkMl9wbWMtPmNod3NbUE1DX1BMTEFDS10gPSBodzsKKwogCWh3ID0gYXQ5MV9jbGtf
cmVnaXN0ZXJfYXVkaW9fcGxsX2ZyYWMocmVnbWFwLCAiYXVkaW9wbGxfZnJhY2NrIiwKIAkJCQkJ
ICAgICAgIm1haW5jayIpOwogCWlmIChJU19FUlIoaHcpKQpAQCAtMjE3LDYgKzIxOSw4IEBAIHN0
YXRpYyB2b2lkIF9faW5pdCBzYW1hNWQyX3BtY19zZXR1cChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KQogCWlmIChJU19FUlIoaHcpKQogCQlnb3RvIGVycl9mcmVlOwogCisJc2FtYTVkMl9wbWMtPmNo
d3NbUE1DX0FVRElPUExMQ0tdID0gaHc7CisKIAlyZWdtYXBfc2ZyID0gc3lzY29uX3JlZ21hcF9s
b29rdXBfYnlfY29tcGF0aWJsZSgiYXRtZWwsc2FtYTVkMi1zZnIiKTsKIAlpZiAoSVNfRVJSKHJl
Z21hcF9zZnIpKQogCQlyZWdtYXBfc2ZyID0gTlVMTDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xr
L2F0OTEvc2FtYTVkMy5jIGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQzLmMKaW5kZXggNTA3ZWVm
Njc5N2YxLi41ZTRlNDRkZDRjMzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVk
My5jCisrKyBiL2RyaXZlcnMvY2xrL2F0OTEvc2FtYTVkMy5jCkBAIC0xMjUsNyArMTI1LDcgQEAg
c3RhdGljIHZvaWQgX19pbml0IHNhbWE1ZDNfcG1jX3NldHVwKHN0cnVjdCBkZXZpY2Vfbm9kZSAq
bnApCiAJaWYgKElTX0VSUihyZWdtYXApKQogCQlyZXR1cm47CiAKLQlzYW1hNWQzX3BtYyA9IHBt
Y19kYXRhX2FsbG9jYXRlKFBNQ19NQUlOICsgMSwKKwlzYW1hNWQzX3BtYyA9IHBtY19kYXRhX2Fs
bG9jYXRlKFBNQ19QTExBQ0sgKyAxLAogCQkJCQluY2soc2FtYTVkM19zeXN0ZW1jayksCiAJCQkJ
CW5jayhzYW1hNWQzX3BlcmlwaGNrKSwgMCwgMyk7CiAJaWYgKCFzYW1hNWQzX3BtYykKQEAgLTE1
OCw2ICsxNTgsOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgc2FtYTVkM19wbWNfc2V0dXAoc3RydWN0
IGRldmljZV9ub2RlICpucCkKIAlpZiAoSVNfRVJSKGh3KSkKIAkJZ290byBlcnJfZnJlZTsKIAor
CXNhbWE1ZDNfcG1jLT5jaHdzW1BNQ19QTExBQ0tdID0gaHc7CisKIAlodyA9IGF0OTFfY2xrX3Jl
Z2lzdGVyX3V0bWkocmVnbWFwLCBOVUxMLCAidXRtaWNrIiwgIm1haW5jayIpOwogCWlmIChJU19F
UlIoaHcpKQogCQlnb3RvIGVycl9mcmVlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYXQ5MS9z
YW1hNWQ0LmMgYi9kcml2ZXJzL2Nsay9hdDkxL3NhbWE1ZDQuYwppbmRleCA4MDY5MjkwMmI0ZTQu
LjY2MmZmNWZhNmU5OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQ0LmMKKysr
IGIvZHJpdmVycy9jbGsvYXQ5MS9zYW1hNWQ0LmMKQEAgLTE0MCw3ICsxNDAsNyBAQCBzdGF0aWMg
dm9pZCBfX2luaXQgc2FtYTVkNF9wbWNfc2V0dXAoc3RydWN0IGRldmljZV9ub2RlICpucCkKIAlp
ZiAoSVNfRVJSKHJlZ21hcCkpCiAJCXJldHVybjsKIAotCXNhbWE1ZDRfcG1jID0gcG1jX2RhdGFf
YWxsb2NhdGUoUE1DX01DSzIgKyAxLAorCXNhbWE1ZDRfcG1jID0gcG1jX2RhdGFfYWxsb2NhdGUo
UE1DX1BMTEFDSyArIDEsCiAJCQkJCW5jayhzYW1hNWQ0X3N5c3RlbWNrKSwKIAkJCQkJbmNrKHNh
bWE1ZDRfcGVyaXBoMzJjayksIDAsIDMpOwogCWlmICghc2FtYTVkNF9wbWMpCkBAIC0xNzMsNiAr
MTczLDggQEAgc3RhdGljIHZvaWQgX19pbml0IHNhbWE1ZDRfcG1jX3NldHVwKHN0cnVjdCBkZXZp
Y2Vfbm9kZSAqbnApCiAJaWYgKElTX0VSUihodykpCiAJCWdvdG8gZXJyX2ZyZWU7CiAKKwlzYW1h
NWQ0X3BtYy0+Y2h3c1tQTUNfUExMQUNLXSA9IGh3OworCiAJaHcgPSBhdDkxX2Nsa19yZWdpc3Rl
cl91dG1pKHJlZ21hcCwgTlVMTCwgInV0bWljayIsICJtYWluY2siKTsKIAlpZiAoSVNfRVJSKGh3
KSkKIAkJZ290byBlcnJfZnJlZTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xv
Y2svYXQ5MS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9hdDkxLmgKaW5kZXggYzNmNGFh
NmEyZDI5Li5lYmExNzEwNjYwOGIgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xv
Y2svYXQ5MS5oCisrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYXQ5MS5oCkBAIC0yMSw2
ICsyMSw5IEBACiAjZGVmaW5lIFBNQ19NQ0syCQk0CiAjZGVmaW5lIFBNQ19JMlMwX01VWAkJNQog
I2RlZmluZSBQTUNfSTJTMV9NVVgJCTYKKyNkZWZpbmUgUE1DX1BMTEFDSwkJNworI2RlZmluZSBQ
TUNfUExMQkNLCQk4CisjZGVmaW5lIFBNQ19BVURJT1BMTENLCQk5CiAKICNpZm5kZWYgQVQ5MV9Q
TUNfTU9TQ1MKICNkZWZpbmUgQVQ5MV9QTUNfTU9TQ1MJCTAJCS8qIE1PU0NTIEZsYWcgKi8KLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
