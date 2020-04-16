Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D29A1ABABE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K4j3Ed73WgRUdJ7TF72+L+NdpQxVgE9KTjEbaFYmsD4=; b=fTiMJ0LOiaDYjU
	zarn6SH5liKgt/zWrVT0Uip65l+o0CY5U/lAKpOEq8NmTgpdT/C4f3MQ6rfiRIZjXqJSQcmIu1CzB
	0vsoe1uVygaTZCn55potq4QM29imqvXVfCMz8txhek1sDH1Ohnb4H/8/6Xf9jArIXSl0/yJ3DM5n0
	VrTbQIFaYejvb7HZRBKzM62xbFEW9lrpCY2h1LNhBcRMepbPrHPcXd5pIXMrX2IAWiJKmA40wGYdc
	+0Ze6FeQHHu1x9S9Cw81Q2Lbbt1XsL7XDljUErqI5V0RNpUVNMVywo0PJt2wbJwHthJQe4FFibiaI
	MRWDmc86e/YpkXaYdQRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzUI-0005gD-0j; Thu, 16 Apr 2020 08:03:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzUA-0005ff-82
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 08:02:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOzU6-0005Pu-Ox; Thu, 16 Apr 2020 10:02:54 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jOzU5-0005D8-Ge; Thu, 16 Apr 2020 10:02:53 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] pwm: imx27: Fix rounding behavior
Date: Thu, 16 Apr 2020 10:02:45 +0200
Message-Id: <20200416080245.3203-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010258_282832_97AA5043 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VG8gbm90IHRyaWdnZXIgdGhlIHdhcm5pbmdzIHByb3ZpZGVkIGJ5IENPTkZJR19QV01fREVCVUcK
CiAtIHVzZSB1cC1yb3VuZGluZyBpbiAuZ2V0X3N0YXRlKCkKIC0gZG9uJ3QgZGl2aWRlIGJ5IHRo
ZSByZXN1bHQgb2YgYSBkaXZpc2lvbgogLSBkb24ndCB1c2UgdGhlIHJvdW5kZWQgY291bnRlciB2
YWx1ZSBmb3IgdGhlIHBlcmlvZCBsZW5ndGggdG8gY2FsY3VsYXRlCiAgIHRoZSBjb3VudGVyIHZh
bHVlIGZvciB0aGUgZHV0eSBjeWNsZQoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcg
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3B3bS9wd20taW14
MjcuYyB8IDIwICsrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWlt
eDI3LmMgYi9kcml2ZXJzL3B3bS9wd20taW14MjcuYwppbmRleCBhNmU0MGQ0YzQ4NWYuLjczMmE2
ZjM3MDFlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLWlteDI3LmMKKysrIGIvZHJpdmVy
cy9wd20vcHdtLWlteDI3LmMKQEAgLTE1MCwxMyArMTUwLDEyIEBAIHN0YXRpYyB2b2lkIHB3bV9p
bXgyN19nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAogCiAJcHJlc2NhbGVyID0gTVgz
X1BXTUNSX1BSRVNDQUxFUl9HRVQodmFsKTsKIAlwd21fY2xrID0gY2xrX2dldF9yYXRlKGlteC0+
Y2xrX3Blcik7Ci0JcHdtX2NsayA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChwd21fY2xrLCBwcmVz
Y2FsZXIpOwogCXZhbCA9IHJlYWRsKGlteC0+bW1pb19iYXNlICsgTVgzX1BXTVBSKTsKIAlwZXJp
b2QgPSB2YWwgPj0gTVgzX1BXTVBSX01BWCA/IE1YM19QV01QUl9NQVggOiB2YWw7CiAKIAkvKiBQ
V01PVVQgKEh6KSA9IFBXTUNMSyAvIChQV01QUiArIDIpICovCi0JdG1wID0gTlNFQ19QRVJfU0VD
ICogKHU2NCkocGVyaW9kICsgMik7Ci0Jc3RhdGUtPnBlcmlvZCA9IERJVl9ST1VORF9DTE9TRVNU
X1VMTCh0bXAsIHB3bV9jbGspOworCXRtcCA9IE5TRUNfUEVSX1NFQyAqICh1NjQpKHBlcmlvZCAr
IDIpICogcHJlc2NhbGVyOworCXN0YXRlLT5wZXJpb2QgPSBESVZfUk9VTkRfVVBfVUxMKHRtcCwg
cHdtX2Nsayk7CiAKIAkvKgogCSAqIFBXTVNBUiBjYW4gYmUgcmVhZCBvbmx5IGlmIFBXTSBpcyBl
bmFibGVkLiBJZiB0aGUgUFdNIGlzIGRpc2FibGVkLApAQCAtMTY3LDggKzE2Niw4IEBAIHN0YXRp
YyB2b2lkIHB3bV9pbXgyN19nZXRfc3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAogCWVsc2UK
IAkJdmFsID0gaW14LT5kdXR5X2N5Y2xlOwogCi0JdG1wID0gTlNFQ19QRVJfU0VDICogKHU2NCko
dmFsKTsKLQlzdGF0ZS0+ZHV0eV9jeWNsZSA9IERJVl9ST1VORF9DTE9TRVNUX1VMTCh0bXAsIHB3
bV9jbGspOworCXRtcCA9IE5TRUNfUEVSX1NFQyAqICh1NjQpKHZhbCkgKiBwcmVzY2FsZXI7CisJ
c3RhdGUtPmR1dHlfY3ljbGUgPSBESVZfUk9VTkRfVVBfVUxMKHRtcCwgcHdtX2Nsayk7CiAKIAlw
d21faW14MjdfY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteCk7CiB9CkBAIC0yMjAsMjIgKzIxOSwy
MyBAQCBzdGF0aWMgaW50IHB3bV9pbXgyN19hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0
cnVjdCBwd21fZGV2aWNlICpwd20sCiAJc3RydWN0IHB3bV9pbXgyN19jaGlwICppbXggPSB0b19w
d21faW14MjdfY2hpcChjaGlwKTsKIAlzdHJ1Y3QgcHdtX3N0YXRlIGNzdGF0ZTsKIAl1bnNpZ25l
ZCBsb25nIGxvbmcgYzsKKwl1bnNpZ25lZCBsb25nIGxvbmcgY2xrcmF0ZTsKIAlpbnQgcmV0Owog
CXUzMiBjcjsKIAogCXB3bV9nZXRfc3RhdGUocHdtLCAmY3N0YXRlKTsKIAotCWMgPSBjbGtfZ2V0
X3JhdGUoaW14LT5jbGtfcGVyKTsKLQljICo9IHN0YXRlLT5wZXJpb2Q7CisJY2xrcmF0ZSA9IGNs
a19nZXRfcmF0ZShpbXgtPmNsa19wZXIpOworCWMgPSBjbGtyYXRlICogc3RhdGUtPnBlcmlvZDsK
IAotCWRvX2RpdihjLCAxMDAwMDAwMDAwKTsKKwlkb19kaXYoYywgTlNFQ19QRVJfU0VDKTsKIAlw
ZXJpb2RfY3ljbGVzID0gYzsKIAogCXByZXNjYWxlID0gcGVyaW9kX2N5Y2xlcyAvIDB4MTAwMDAg
KyAxOwogCiAJcGVyaW9kX2N5Y2xlcyAvPSBwcmVzY2FsZTsKLQljID0gKHVuc2lnbmVkIGxvbmcg
bG9uZylwZXJpb2RfY3ljbGVzICogc3RhdGUtPmR1dHlfY3ljbGU7Ci0JZG9fZGl2KGMsIHN0YXRl
LT5wZXJpb2QpOworCWMgPSBjbGtyYXRlICogc3RhdGUtPmR1dHlfY3ljbGU7CisJZG9fZGl2KGMs
IE5TRUNfUEVSX1NFQyAqIHByZXNjYWxlKTsKIAlkdXR5X2N5Y2xlcyA9IGM7CiAKIAkvKgotLSAK
Mi4yNi4wLnJjMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
