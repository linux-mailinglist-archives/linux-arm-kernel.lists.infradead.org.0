Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E87F19002A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 22:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o5LvL0BZrWlVT1U/lrFS4uUx4piVOwUVyDIBCm/BoxM=; b=Mxba7/gUh286wp
	z0pLROlhxCKFHQVMU0aBEpKAqV8jr96sDChZin0auMcxbeP0tiTOTJZ2rBXm+ZBy3X1NGjftQRVFF
	QOZltXwM7ZfjWPzAnE4+fwF9Vy+QLGbwKLjOfcpOyWnVp44WecIQE67hXANccOPTPhAipWRfJXTqX
	u1Xyc/I5Br4gTQYIpR/1JX+cduE3iA4Do23TmKEACO3uhTXzwZOPlZb8ueUDE7Pr0vbPJJldjlJpm
	odPS605GlwY5EjnJTtdmH6vw5gDKXaegcq+mAjZRm440xGKpq5Rxnu3W2PnPPpBPkXojLTiSgWinL
	ZrsDylkuDEiO2WyVCsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGURQ-00082K-J0; Mon, 23 Mar 2020 21:17:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGURF-0007yy-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 21:16:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGUR6-0004GR-5B; Mon, 23 Mar 2020 22:16:40 +0100
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGUR3-0006TG-DH; Mon, 23 Mar 2020 22:16:37 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH] video: fbdev: imxfb: ensure balanced regulator usage
Date: Mon, 23 Mar 2020 22:16:26 +0100
Message-Id: <20200323211626.24812-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_141649_218254_38C3F594 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-fbdev@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZiZGV2IGZyYW1ld29yayBkb2Vzbid0IGNhcmUgdG8gY2FsbCB0aGUgLnNldF9wb3dlciBj
YWxsYmFjayBvbmx5IG9uCmNoYW5nZXMuIFNvIHRoZSBkcml2ZXIgaGFzIHRvIGNhcmUgZm9yIGl0
c2VsZiB0aGF0IHRoZSByZWd1bGF0b3IgZG9lc24ndApnZXQgZGlzYWJsZWQgbW9yZSBvZnRlbiB0
aGFuIGVuYWJsZWQuCgpUaGlzIGZpeGVzIHRoZSByZWd1bGF0b3Igd2FybmluZwoKCXVuYmFsYW5j
ZWQgZGlzYWJsZXMgZm9yIGxjZCBzdXBwbHkKCndoaWNoIGNhbiBiZSB0cmlnZ2VyZWQgYnkgZG9p
bmcKCgllY2hvIDQgPiAvc3lzL2NsYXNzL2xjZC9pbXhmYi1sY2QvbGNkX3Bvd2VyCgp0d2ljZS4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0
cm9uaXguZGU+Ci0tLQogZHJpdmVycy92aWRlby9mYmRldi9pbXhmYi5jIHwgMjcgKysrKysrKysr
KysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgNiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMgYi9k
cml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMKaW5kZXggMzcwYmYyNTUzZDQzLi44ODRiMTZlZmE3
ZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvaW14ZmIuYworKysgYi9kcml2ZXJz
L3ZpZGVvL2ZiZGV2L2lteGZiLmMKQEAgLTE3Miw2ICsxNzIsNyBAQCBzdHJ1Y3QgaW14ZmJfaW5m
byB7CiAJaW50CQkJbnVtX21vZGVzOwogCiAJc3RydWN0IHJlZ3VsYXRvcgkqbGNkX3B3cjsKKwlp
bnQJCQlsY2RfcHdyX2VuYWJsZWQ7CiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHBsYXRmb3Jt
X2RldmljZV9pZCBpbXhmYl9kZXZ0eXBlW10gPSB7CkBAIC04MDEsMTYgKzgwMiwzMCBAQCBzdGF0
aWMgaW50IGlteGZiX2xjZF9nZXRfcG93ZXIoc3RydWN0IGxjZF9kZXZpY2UgKmxjZGRldikKIAly
ZXR1cm4gRkJfQkxBTktfVU5CTEFOSzsKIH0KIAorc3RhdGljIGludCBpbXhmYl9yZWd1bGF0b3Jf
c2V0KHN0cnVjdCBpbXhmYl9pbmZvICpmYmksIGludCBlbmFibGUpCit7CisJaW50IHJldDsKKwor
CWlmIChlbmFibGUgPT0gZmJpLT5sY2RfcHdyX2VuYWJsZWQpCisJCXJldHVybiAwOworCisJaWYg
KGVuYWJsZSkKKwkJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShmYmktPmxjZF9wd3IpOworCWVsc2UK
KwkJcmV0ID0gcmVndWxhdG9yX2Rpc2FibGUoZmJpLT5sY2RfcHdyKTsKKworCWlmIChyZXQgPT0g
MCkKKwkJZmJpLT5sY2RfcHdyX2VuYWJsZWQgPSBlbmFibGU7CisKKwlyZXR1cm4gcmV0OworfQor
CiBzdGF0aWMgaW50IGlteGZiX2xjZF9zZXRfcG93ZXIoc3RydWN0IGxjZF9kZXZpY2UgKmxjZGRl
diwgaW50IHBvd2VyKQogewogCXN0cnVjdCBpbXhmYl9pbmZvICpmYmkgPSBkZXZfZ2V0X2RydmRh
dGEoJmxjZGRldi0+ZGV2KTsKIAotCWlmICghSVNfRVJSKGZiaS0+bGNkX3B3cikpIHsKLQkJaWYg
KHBvd2VyID09IEZCX0JMQU5LX1VOQkxBTkspCi0JCQlyZXR1cm4gcmVndWxhdG9yX2VuYWJsZShm
YmktPmxjZF9wd3IpOwotCQllbHNlCi0JCQlyZXR1cm4gcmVndWxhdG9yX2Rpc2FibGUoZmJpLT5s
Y2RfcHdyKTsKLQl9CisJaWYgKCFJU19FUlIoZmJpLT5sY2RfcHdyKSkKKwkJcmV0dXJuIGlteGZi
X3JlZ3VsYXRvcl9zZXQoZmJpLCBwb3dlciA9PSBGQl9CTEFOS19VTkJMQU5LKTsKIAogCXJldHVy
biAwOwogfQotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
