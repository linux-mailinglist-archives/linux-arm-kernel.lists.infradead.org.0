Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2111184F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDRMPHYGh5GGFwvwX3A7XzQ6/hLnYMPXjeGE6Vn8A+A=; b=A/B6thxWOZAFyD
	oCNTaEf0dBRzdAx7/rsC0jf+9o/bQ47zLvnt2n1s8Jv6mOTNZ1TfuFI63dsy28/PY9zkVEugi5vUt
	f/O11BbRAgMf4JHYRYCum/u3vq3aA7fH43Yxd6yhPwAtWvG2i9aQrRQWqyTrKE41Dzv8Q7NFSWn8q
	icZPNY/1BPKCFhLJDjb/qO0ssxJWJkfeau7RULXl56NysPNsVaqdPghXOFzm83wFLnfYXb3/1Oq2r
	aJhv6YMC7uFj8DxH2/jNmgqVg/ycAs13gKn4T2/doFmWQd/vaskZBlCkSRLw9NvPAAzKBM0ddaHNA
	diuiI0USwautmTFwhJig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iechR-0002Pq-6e; Tue, 10 Dec 2019 10:25:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iechJ-0002PE-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:24:54 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iechH-0002GB-4u; Tue, 10 Dec 2019 11:24:51 +0100
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iechG-000777-It; Tue, 10 Dec 2019 11:24:50 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Colin King <colin.king@canonical.com>,
 Thierry Reding <thierry.reding@gmail.com>, Walter Harms <wharms@bfs.de>
Subject: [PATCH v2] pwm: sun4i: Narrow scope of local variable
Date: Tue, 10 Dec 2019 11:24:44 +0100
Message-Id: <20191210102444.26594-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210101229.rvqelc2hanisd2cp@pengutronix.de>
References: <20191210101229.rvqelc2hanisd2cp@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_022453_421101_22CBA87C 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-pwm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHZhcmlhYmxlIHB2YWwgaXMgb25seSB1c2VkIGluIGEgc2luZ2xlIGJsb2NrIGluIHRoZSBm
dW5jdGlvbgpzdW40aV9wd21fY2FsY3VsYXRlKCkuIFNvIGRlY2xhcmUgaXQgaW4gYSBtb3JlIGxv
Y2FsIHNjb3BlIHRvIHNpbXBsaWZ5CnRoZSBmdW5jdGlvbiBmb3IgaHVtYW5zIGFuZCBjb21waWxl
cnMuCgpXaGlsZSBhdCBpdCBhbHNvIHNpbXBsaWZ5IGFzc2lnbm1lbnQgdG8gcHZhbC4KCldoaWxl
IHRoZSBkaWZmc3RhdCBmb3IgdGhpcyBwYXRjaCBpcyBuZWdhdGl2ZSBmb3IgdGhpcyBwYXRjaCBJ
IHN0aWxsCnRoaW5nIHRoZSBhZHZhbnRhZ2Ugb2YgaGF2aW5nIGEgbmFycm93ZXIgc2NvcGUgaXMg
YmVuZWZpY2lhbC4KCkluIG15IGNvbXBpbGVyIC8gLmNvbmZpZyBzZXR1cCAoZ2NjIDguMi4xLCBh
cm0vaW14X3Y2X3Y3X2RlZmNvbmZpZyArCkNPTVBJTEVfVEVTVCArIFBXTV9TVU40SSkgdGhpcyBj
aGFuZ2UgZG9lc24ndCByZXN1bHQgaW4gYW55IGJpbmFyeQpjaGFuZ2VzLgoKU2lnbmVkLW9mZi1i
eTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0t
CkhlbGxvLAoKY2hhbmdlcyBzaW5jZSAoaW1wbGljaXQpIHYxOgoKIC0gYWxzbyBzaW1wbGlmeSBh
c3NpZ25tZW50IHRvIHB2YWwgYXMgc3VnZ2VzdGVkIGJ5IFdhbHRlcgogLSB2ZXJpZnkgdGhlIHBh
dGNoIGRvZXNuJ3QgaW50cm9kdWNlIGJpbmFyeSBjaGFuZ2VzCgpCZXN0IHJlZ2FyZHMKVXdlCgog
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA4ICsrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3
bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggMWZhMjA1NzQxOWZiLi40
Zjc3ZWJjOGFlNjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2Ry
aXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC0xNTIsNyArMTUyLDcgQEAgc3RhdGljIGludCBzdW40
aV9wd21fY2FsY3VsYXRlKHN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtLAogCQkJICAg
ICAgIHUzMiAqZHR5LCB1MzIgKnByZCwgdW5zaWduZWQgaW50ICpwcnNjbHIpCiB7CiAJdTY0IGNs
a19yYXRlLCBkaXYgPSAwOwotCXVuc2lnbmVkIGludCBwdmFsLCBwcmVzY2FsZXIgPSAwOworCXVu
c2lnbmVkIGludCBwcmVzY2FsZXIgPSAwOwogCiAJY2xrX3JhdGUgPSBjbGtfZ2V0X3JhdGUoc3Vu
NGlfcHdtLT5jbGspOwogCkBAIC0xNzMsOSArMTczLDExIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdt
X2NhbGN1bGF0ZShzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSwKIAlpZiAocHJlc2Nh
bGVyID09IDApIHsKIAkJLyogR28gdXAgZnJvbSB0aGUgZmlyc3QgZGl2aWRlciAqLwogCQlmb3Ig
KHByZXNjYWxlciA9IDA7IHByZXNjYWxlciA8IFBXTV9QUkVTQ0FMX01BU0s7IHByZXNjYWxlcisr
KSB7CisJCQl1bnNpZ25lZCBpbnQgcHZhbCA9IHByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdOwor
Ci0JCQlpZiAoIXByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdKQorCQkJaWYgKCFwdmFsKQogCQkJ
CWNvbnRpbnVlOwotCQkJcHZhbCA9IHByZXNjYWxlcl90YWJsZVtwcmVzY2FsZXJdOworCiAJCQlk
aXYgPSBjbGtfcmF0ZTsKIAkJCWRvX2RpdihkaXYsIHB2YWwpOwogCQkJZGl2ID0gZGl2ICogc3Rh
dGUtPnBlcmlvZDsKLS0gCjIuMjQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
