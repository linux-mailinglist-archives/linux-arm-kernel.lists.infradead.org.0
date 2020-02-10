Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A751584AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:23:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMIo80C+poEH9Tbjp3MqTC1h6OI9vGKboaCk+E3o3gU=; b=IXqpglQsAx7mJF
	RNA6JFUT3tWotGZBkpjp9neRsKFywn2v/uNLcaB+FUnqYaaA1wKwTA9c9WXEVnzCR4zEDa3MyYJCL
	mM9IQlF2F7Ze3uJ/IfKsaHkeDjCTWNEvDrjM5yYSiN/d+EYPW1gYlQ4TJft+rhxae97C3RTJB72L2
	ihftsHzLrYCEZwj6D8hbotVENXIZMfqe9JXjqnbb6QKhiSia08dikabi8RB0JKlYhKUAb/ViuRj4/
	4ivKG8/ouQKjbFIoyTrb3xKe5cB1Nkxi/SjryBfzUUPoLeGqUzuEBrap/JDWUK2MtnM1WVgiOtMqy
	MfeUGoqyQfAF989y+Ecw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GX1-0004DI-1N; Mon, 10 Feb 2020 21:23:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GWI-0003be-9d
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:23:09 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWC-0000yM-HV; Mon, 10 Feb 2020 22:23:00 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j1GWB-00042y-Bp; Mon, 10 Feb 2020 22:22:59 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 3/3] pwm: imx27: Ensure clocks being on iff the PWM is on
Date: Mon, 10 Feb 2020 22:22:40 +0100
Message-Id: <20200210212240.25513-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
References: <20200209213106.5067-1-u.kleine-koenig@pengutronix.de>
 <20200210212240.25513-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_132306_348269_9B91ED68 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXAgdG8gbm93IHRoZSAucHJvYmUgZnVuY3Rpb24gZGlkbid0IGVuYWJsZSBjbGtzIGFuZCByZWxp
ZWQgb24gdGhlIGNvcmUKdG8gY2FsbCB0aGUgLmdldF9zdGF0ZSgpIGNhbGxiYWNrIHRvIGhhdmUg
dGhlIGNsayBydW5uaW5nLiBUaGUgbGF0dGVyCmVuYWJsZWQgdGhlIG5lZWRlZCBjbG9ja3MgYW5k
IGtlcHQgdGhlbSBydW5uaW5nIGlmIHRoZSBQV00gaXMgZW5hYmxlZC4KClRoaXMgb25seSB3b3Jr
cyBjb3JyZWN0bHkgaWYgdGhlIC5nZXRfc3RhdGUoKSBjYWxsYmFjayBpcyBjYWxsZWQgZXhhY3Rs
eQpvbmNlIGFuZCB0aGlzIHNpbmdsZSBjYWxsIGhhcHBlbnMgYmVmb3JlIHVudXNlZCBjbG9ja3Mg
YXJlIGRpc2FibGVkIGJ5CnRoZSBjbGsgY29yZS4KClRoZSBmb3JtZXIgd2Fzbid0IHRydWUgZm9y
IGEgc2hvcnQgcGVyaW9kIHdoaWxlIGNvbW1pdCAwMWNjZjkwM2VkZDYKKCJwd206IExldCBwd21f
Z2V0X3N0YXRlKCkgcmV0dXJuIHRoZSBsYXN0IGltcGxlbWVudGVkIHN0YXRlIikgYXBwbGllZAph
bmQgbm90IG5vdCByZXZlcnRlZCB5ZXQgYW5kIG1pZ2h0IGJlY29tZSB3cm9uZyBpbiB0aGUgZnV0
dXJlLgoKVGhlIGxhdHRlciBpc24ndCB0cnVlIGFueSBtb3JlIHNpbmNlIGNvbW1pdCBjZmM0YzE4
OWJjNzAgKCJwd206IFJlYWQKaW5pdGlhbCBoYXJkd2FyZSBzdGF0ZSBhdCByZXF1ZXN0IHRpbWUi
KSB3aGljaCByZXN1bHRzIGluIGEgcnVubmluZyBQV00KYmVpbmcgc3RvcHBlZCBhdCBib290IHRp
bWUgaWYgZm9yIGV4YW1wbGUgdGhlIGNvbnN1bWVyIGxpdmVzIGluIGEga2VybmVsCm1vZHVsZSB0
aGF0IGlzIG9ubHkgbG9hZGVkIGFmdGVyIHRoZSBjbGsgY29yZSBkaXNhYmxlZCB1bnVzZWQgY2xv
Y2tzLgoKU28gZW5zdXJlIC5wcm9iZSgpIGlzIGxlZnQgd2l0aCB0aGUgY2xvY2tzIG9uIGlmIHRo
ZSBQV00gaXMgcnVubmluZyBhbmQKLmdldF9zdGF0ZSgpIGRpc2FibGVzIGV2ZXJ5dGhpbmcgaXQg
ZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2Vu
aWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9wd20vcHdtLWlteDI3LmMgfCAxNCArKysr
KysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLWlteDI3LmMgYi9kcml2ZXJzL3B3bS9w
d20taW14MjcuYwppbmRleCBmYjE0MjgxM2Q0NTUuLmU4M2MwNzdiYjdjYyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9wd20vcHdtLWlteDI3LmMKKysrIGIvZHJpdmVycy9wd20vcHdtLWlteDI3LmMKQEAg
LTE3MSw4ICsxNzEsNyBAQCBzdGF0aWMgdm9pZCBwd21faW14MjdfZ2V0X3N0YXRlKHN0cnVjdCBw
d21fY2hpcCAqY2hpcCwKIAl0bXAgPSBOU0VDX1BFUl9TRUMgKiAodTY0KSh2YWwpOwogCXN0YXRl
LT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgcHdtX2Nsayk7CiAKLQlp
ZiAoIXN0YXRlLT5lbmFibGVkKQotCQlwd21faW14MjdfY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlt
eCk7CisJcHdtX2lteDI3X2Nsa19kaXNhYmxlX3VucHJlcGFyZShpbXgpOwogfQogCiBzdGF0aWMg
dm9pZCBwd21faW14Mjdfc3dfcmVzZXQoc3RydWN0IHB3bV9jaGlwICpjaGlwKQpAQCAtMzA3LDYg
KzMwNiw4IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHB3bV9pbXgyN19kdF9pZHMpOwogc3Rh
dGljIGludCBwd21faW14MjdfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsK
IAlzdHJ1Y3QgcHdtX2lteDI3X2NoaXAgKmlteDsKKwlpbnQgcmV0OworCXUzMiBwd21jcjsKIAog
CWlteCA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2YoKmlteCksIEdGUF9LRVJORUwp
OwogCWlmIChpbXggPT0gTlVMTCkKQEAgLTM0OSw2ICszNTAsMTUgQEAgc3RhdGljIGludCBwd21f
aW14MjdfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAoSVNfRVJSKGlt
eC0+bW1pb19iYXNlKSkKIAkJcmV0dXJuIFBUUl9FUlIoaW14LT5tbWlvX2Jhc2UpOwogCisJcmV0
ID0gcHdtX2lteDI3X2Nsa19wcmVwYXJlX2VuYWJsZShpbXgpOworCWlmIChyZXQpCisJCXJldHVy
biByZXQ7CisKKwkvKiBrZWVwIGNsa3Mgb24gaWYgcHdtIGlzIHJ1bm5pbmcgKi8KKwlwd21jciA9
IHJlYWRsKGlteC0+bW1pb19iYXNlICsgTVgzX1BXTUNSKTsKKwlpZiAoIShwd21jciAmIE1YM19Q
V01DUl9FTikpCisJCXB3bV9pbXgyN19jbGtfZGlzYWJsZV91bnByZXBhcmUoaW14KTsKKwogCXJl
dHVybiBwd21jaGlwX2FkZCgmaW14LT5jaGlwKTsKIH0KIAotLSAKMi4yNC4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
