Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4985CB5D76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 08:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0AxOzz50QzfuEOluAM2Ze9znm4Nr3rd3nTVWXVaUb68=; b=sZzQEvYwOzf9/g
	t6p2YYfyMXKHFOPPaO5ZSUd1nH2KEveBxd4ediggY6cZr+12MKV4DTmiZddIBAh/2FCxuRiawSskW
	CttAB7D317avKdaTYaOTcwJveKSuBg7w2oc3mrNnryvyCofa2Qk2mlbmhL5xHPWD8sFb0mymTXmMe
	MtLyfs67zDQfJNLnRtgFxsTWd/3hKQ4hePiRrIEx4w/w1eqGmy3kVpgsboD0JZfgo7HIkmIy6uVKK
	07XVEWz1rYD1MKDjqqueca10ca3JTKzuI0jmb8XoU4nzFBi3UPbZYRrGErcz+5v7E4+8rgD6/cn52
	uTIsFlJDoNJPGzUuFmgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iATcJ-0001iL-Eg; Wed, 18 Sep 2019 06:39:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iATc5-0001gU-Cq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 06:38:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iATc2-0003Vb-Bq; Wed, 18 Sep 2019 08:38:50 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iATby-0003FW-Lw; Wed, 18 Sep 2019 08:38:46 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Date: Wed, 18 Sep 2019 08:38:37 +0200
Message-Id: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_233853_446822_28496D14 
X-CRM114-Status: GOOD (  16.78  )
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 kernel@pengutronix.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 Peter Rosin <peda@axentia.se>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KCkJlZm9yZSBj
b21taXQgZTQyZWU2MTAxN2Y1ICgib2Y6IExldCBvZl9mb3JfZWFjaF9waGFuZGxlIGZhbGxiYWNr
IHRvCm5vbi1uZWdhdGl2ZSBjZWxsX2NvdW50IikgdGhlIGl0ZXJhdG9yIGZ1bmN0aW9ucyBjYWxs
aW5nCm9mX2Zvcl9lYWNoX3BoYW5kbGUgYXNzdW1lZCBhIGNlbGwgY291bnQgb2YgMCBpZiBjZWxs
c19uYW1lIHdhcyBOVUxMLgpUaGlzIGNvcm5lciBjYXNlIHdhcyBtaXNzZWQgd2hlbiBpbXBsZW1l
bnRpbmcgdGhlIGZhbGxiYWNrIGxvZ2ljIGluCmU0MmVlNjEwMTdmNSBhbmQgcmVzdWx0ZWQgaW4g
YW4gZW5kbGVzcyBsb29wLgoKUmVzdG9yZSB0aGUgb2xkIGJlaGF2aW91ciBvZiBvZl9jb3VudF9w
aGFuZGxlX3dpdGhfYXJncygpIGFuZApvZl9wYXJzZV9waGFuZGxlX3dpdGhfYXJncygpIGFuZCBh
ZGQgYSBjaGVjayB0bwpvZl9waGFuZGxlX2l0ZXJhdG9yX2luaXQoKSB0byBwcmV2ZW50IGEgc2lt
aWxhciBmYWlsdXJlIGFzIGEgc2FmZXR5CnByZWNhdXRpb24uIG9mX3BhcnNlX3BoYW5kbGVfd2l0
aF9hcmdzX21hcCgpIGRvZXNuJ3QgbmVlZCBhIHNpbWlsYXIgZml4CmFzIGNlbGxzX25hbWUgaXNu
J3QgTlVMTCB0aGVyZS4KCkFmZmVjdGVkIGRyaXZlcnMgYXJlOgogLSBkcml2ZXJzL2Jhc2UvcG93
ZXIvZG9tYWluLmMKIC0gZHJpdmVycy9iYXNlL3Bvd2VyL2RvbWFpbi5jCiAtIGRyaXZlcnMvY2xr
L3RpL2Nsay1kcmE3LWF0bC5jCiAtIGRyaXZlcnMvaHdtb24vaWJtcG93ZXJudi5jCiAtIGRyaXZl
cnMvaTJjL211eGVzL2kyYy1kZW11eC1waW5jdHJsLmMKIC0gZHJpdmVycy9pb21tdS9tdGtfaW9t
bXUuYwogLSBkcml2ZXJzL25ldC9ldGhlcm5ldC9mcmVlc2NhbGUvZm1hbi9tYWMuYwogLSBkcml2
ZXJzL29wcC9vZi5jCiAtIGRyaXZlcnMvcGVyZi9hcm1fZHN1X3BtdS5jCiAtIGRyaXZlcnMvcmVn
dWxhdG9yL29mX3JlZ3VsYXRvci5jCiAtIGRyaXZlcnMvcmVtb3RlcHJvYy9pbXhfcnByb2MuYwog
LSBkcml2ZXJzL3NvYy9yb2NrY2hpcC9wbV9kb21haW5zLmMKIC0gc291bmQvc29jL2ZzbC9pbXgt
YXVkbWl4LmMKIC0gc291bmQvc29jL2ZzbC9pbXgtYXVkbWl4LmMKIC0gc291bmQvc29jL21lc29u
L2F4Zy1jYXJkLmMKIC0gc291bmQvc29jL3NhbXN1bmcvdG0yX3dtNTExMC5jCiAtIHNvdW5kL3Nv
Yy9zYW1zdW5nL3RtMl93bTUxMTAuYwoKVGhhbmtzIHRvIEdlZXJ0IFV5dHRlcmhvZXZlbiBmb3Ig
cmVwb3J0aW5nIHRoZSBpc3N1ZSwgUGV0ZXIgUm9zaW4gZm9yCmhlbHBpbmcgcGlucG9pbnQgdGhl
IGFjdHVhbCBwcm9ibGVtIGFuZCB0aGUgdGVzdGVycyBmb3IgY29uZmlybWluZyB0aGlzCmZpeC4K
CkZpeGVzOiBlNDJlZTYxMDE3ZjUgKCJvZjogTGV0IG9mX2Zvcl9lYWNoX3BoYW5kbGUgZmFsbGJh
Y2sgdG8gbm9uLW5lZ2F0aXZlIGNlbGxfY291bnQiKQpUZXN0ZWQtYnk6IE1hcmVrIFN6eXByb3dz
a2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KVGVzdGVkLWJ5OiBHZWVydCBVeXR0ZXJob2V2
ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KSGVsbG8sCgpjb21wYXJl
ZCB0byB0aGUgdW50ZXN0ZWQgcGF0Y2ggSSBzZW50IHllc3RlcmRheSBJIGFsc28gZml4ZWQKb2Zf
cGFyc2VfcGhhbmRsZV93aXRoX2FyZ3Mgd2hpY2ggaGFzIHRocmVlIHVzZXJzIHRoYXQgcGFzcwpj
ZWxsc19uYW1lPU5VTEwuIChpLmUuIGRyaXZlcnMvY2xrL3RpL2Nsay1kcmE3LWF0bC5jLApzb3Vu
ZC9zb2MvZnNsL2lteC1hdWRtaXguYywgc291bmQvc29jL3NhbXN1bmcvdG0yX3dtNTExMC5jKSBJ
IGRpZG4ndApsb29rIGNsb3NlbHksIGJ1dCBtYXliZSB0aGVzZSBjb3VsZCBiZSBjb252ZXJ0ZWQg
dG8gdXNlIG9mX3BhcnNlX3BoYW5kbGUKYXMgdGhlcmUgYXJlIG5vIGFyZ3VtZW50cyB0byBiZSBw
cm9jZXNzZWQgd2l0aCBubyBjZWxsc19uYW1lPyEKCkJlc3QgcmVnYXJkcwpVd2UKCiBkcml2ZXJz
L29mL2Jhc2UuYyB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9vZi9iYXNlLmMgYi9kcml2ZXJzL29mL2Jhc2UuYwppbmRleCAyZjI1ZDJkZmVjZmEuLjI1
ZWUwN2MwYTNjZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9vZi9iYXNlLmMKKysrIGIvZHJpdmVycy9v
Zi9iYXNlLmMKQEAgLTEyODYsNiArMTI4NiwxMyBAQCBpbnQgb2ZfcGhhbmRsZV9pdGVyYXRvcl9p
bml0KHN0cnVjdCBvZl9waGFuZGxlX2l0ZXJhdG9yICppdCwKIAogCW1lbXNldChpdCwgMCwgc2l6
ZW9mKCppdCkpOwogCisJLyoKKwkgKiBvbmUgb2YgY2VsbF9jb3VudCBvciBjZWxsc19uYW1lIG11
c3QgYmUgcHJvdmlkZWQgdG8gZGV0ZXJtaW5lIHRoZQorCSAqIGFyZ3VtZW50IGxlbmd0aC4KKwkg
Ki8KKwlpZiAoY2VsbF9jb3VudCA8IDAgJiYgIWNlbGxzX25hbWUpCisJCXJldHVybiAtRUlOVkFM
OworCiAJbGlzdCA9IG9mX2dldF9wcm9wZXJ0eShucCwgbGlzdF9uYW1lLCAmc2l6ZSk7CiAJaWYg
KCFsaXN0KQogCQlyZXR1cm4gLUVOT0VOVDsKQEAgLTE1MTIsMTAgKzE1MTksMTcgQEAgaW50IG9m
X3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKGNvbnN0IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGNv
bnN0IGNoYXIgKmxpc3RfbmEKIAkJCQljb25zdCBjaGFyICpjZWxsc19uYW1lLCBpbnQgaW5kZXgs
CiAJCQkJc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqb3V0X2FyZ3MpCiB7CisJaW50IGNlbGxfY291
bnQgPSAtMTsKKwogCWlmIChpbmRleCA8IDApCiAJCXJldHVybiAtRUlOVkFMOwotCXJldHVybiBf
X29mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUsIC0x
LAotCQkJCQkgICAgaW5kZXgsIG91dF9hcmdzKTsKKworCS8qIElmIGNlbGxzX25hbWUgaWYgTlVM
TCB3ZSBhc3N1bWUgYSBjZWxsIGNvdW50IG9mIDAgKi8KKwlpZiAoIWNlbGxzX25hbWUpCisJCWNl
bGxfY291bnQgPSAwOworCisJcmV0dXJuIF9fb2ZfcGFyc2VfcGhhbmRsZV93aXRoX2FyZ3MobnAs
IGxpc3RfbmFtZSwgY2VsbHNfbmFtZSwKKwkJCQkJICAgIGNlbGxfY291bnQsIGluZGV4LCBvdXRf
YXJncyk7CiB9CiBFWFBPUlRfU1lNQk9MKG9mX3BhcnNlX3BoYW5kbGVfd2l0aF9hcmdzKTsKIApA
QCAtMTc2NSw2ICsxNzc5LDE4IEBAIGludCBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhjb25z
dCBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCBjb25zdCBjaGFyICpsaXN0X25hCiAJc3RydWN0IG9m
X3BoYW5kbGVfaXRlcmF0b3IgaXQ7CiAJaW50IHJjLCBjdXJfaW5kZXggPSAwOwogCisJLyogSWYg
Y2VsbHNfbmFtZSBpcyBOVUxMIHdlIGFzc3VtZSBhIGNlbGwgY291bnQgb2YgMCAqLworCWlmIChj
ZWxsc19uYW1lID09IE5VTEwpIHsKKwkJY29uc3QgX19iZTMyICpsaXN0OworCQlpbnQgc2l6ZTsK
KworCQlsaXN0ID0gb2ZfZ2V0X3Byb3BlcnR5KG5wLCBsaXN0X25hbWUsICZzaXplKTsKKwkJaWYg
KCFsaXN0KQorCQkJcmV0dXJuIC1FTk9FTlQ7CisKKwkJcmV0dXJuIHNpemUgLyBzaXplb2YoKmxp
c3QpOworCX0KKwogCXJjID0gb2ZfcGhhbmRsZV9pdGVyYXRvcl9pbml0KCZpdCwgbnAsIGxpc3Rf
bmFtZSwgY2VsbHNfbmFtZSwgLTEpOwogCWlmIChyYykKIAkJcmV0dXJuIHJjOwotLSAKMi4yMy4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
