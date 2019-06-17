Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F5048638
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKb+kMWDn+kQsAw3JAuyFr63PRBdMQ1LHiOWGLzy3f8=; b=oxC8gAMhOTrr36
	P0H3znh8dRyg1oSEEGRK12bd7FQgCovnllvrruy+qyBM3cKtByjzBG/GTVq1en3CqxfxIJKMZ+Pw/
	Y7fe9j9RPpMaFHg7kfqQPsIzfeHRogrOb6QLRA9y/JccL+rO+eMNvFhPxuGt/tj1IOsV1E9+IIckA
	LJH7rGj8XIJxMdBCi+uqlPlIh3LV5r2nISeu7y2efZJr1uxYZinGJoX9qWMbivyVg8ouHRILXslee
	VaHdr10r2fetRjEHkI5p1YuNI62b9iTtW5GrZZUxNMwLWtUv7+yj5jAbTmEkROFFXmoI/Mw21hVW9
	/ewXb68h9/x/FNUd6Eeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct3a-0000s3-M6; Mon, 17 Jun 2019 14:56:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszo-0005Iw-Bf
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:34 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B693E240010;
 Mon, 17 Jun 2019 14:52:24 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 09/12] drm/modes: Parse overscan properties
Date: Mon, 17 Jun 2019 16:51:36 +0200
Message-Id: <e481f1628e3768ca49226ec2115cfa4dfcbd5e4c.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075232_869263_7FF8A1D7 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UHJvcGVybHkgY29uZmlndXJpbmcgdGhlIG92ZXJzY2FuIHByb3BlcnRpZXMgbWlnaHQgYmUgbmVl
ZGVkIGZvciB0aGUKaW5pdGlhbCBzZXR1cCBvZiB0aGUgZnJhbWVidWZmZXIgZm9yIGRpc3BsYXkg
dGhhdCBzdGlsbCBoYXZlIG92ZXJzY2FuLgpMZXQncyBhbGxvdyBmb3IgbW9yZSBwcm9wZXJ0aWVz
IG9uIHRoZSBrZXJuZWwgY29tbWFuZCBsaW5lIHRvIHNldHVwIGVhY2gKbWFyZ2luLgoKUmV2aWV3
ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5
OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgotLS0KIERvY3VtZW50
YXRpb24vZmIvbW9kZWRiLnJzdCB8ICAyICsrLQogZHJpdmVycy9ncHUvZHJtL2RybV9tb2Rlcy5j
IHwgNDQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBpbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmggfCAgNSArKysrLQogMyBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9mYi9tb2RlZGIucnN0IGIvRG9jdW1l
bnRhdGlvbi9mYi9tb2RlZGIucnN0CmluZGV4IDNlOGE2Zjc5ZGNkNy4uNDQ0YmMzMjllNWE4IDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2ZiL21vZGVkYi5yc3QKKysrIGIvRG9jdW1lbnRhdGlv
bi9mYi9tb2RlZGIucnN0CkBAIC01OSw2ICs1OSw4IEBAIE9wdGlvbnMgY2FuIGFsc28gYmUgcGFz
c2VkIGFmdGVyIHRoZSBtb2RlLCB1c2luZyBjb21tYXMgYXMgc2VwYXJhdG9yLgogCiBWYWxpZCBv
cHRpb25zIGFyZToKIAorICAtIG1hcmdpbl90b3AsIG1hcmdpbl9ib3R0b20sIG1hcmdpbl9sZWZ0
LCBtYXJnaW5fcmlnaHQgKGludGVnZXIpOgorICAgIE51bWJlciBvZiBwaXhlbHMgaW4gdGhlIG1h
cmdpbnMsIHR5cGljYWxseSB0byBkZWFsIHdpdGggb3ZlcnNjYW4gb24gVFZzCiAgIC0gcmVmbGVj
dF94IChib29sZWFuKTogUGVyZm9ybSBhbiBheGlhbCBzeW1ldHJ5IG9uIHRoZSBYIGF4aXMKICAg
LSByZWZsZWN0X3kgKGJvb2xlYW4pOiBQZXJmb3JtIGFuIGF4aWFsIHN5bWV0cnkgb24gdGhlIFkg
YXhpcwogICAtIHJvdGF0ZSAoaW50ZWdlcik6IFJvdGF0ZSB0aGUgaW5pdGlhbCBmcmFtZWJ1ZmZl
ciBieSB4CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vZHJtX21vZGVzLmMKaW5kZXggZGM2ZDExMjkyNjg1Li41N2U2NDA4Mjg4YzggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZXMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vZHJtX21vZGVzLmMKQEAgLTE2MDksNiArMTYwOSw1MCBAQCBzdGF0aWMgaW50IGRybV9tb2Rl
X3BhcnNlX2NtZGxpbmVfb3B0aW9ucyhjaGFyICpzdHIsIHNpemVfdCBsZW4sCiAJCX0gZWxzZSBp
ZiAoIXN0cm5jbXAob3B0aW9uLCAicmVmbGVjdF95IiwgZGVsaW0gLSBvcHRpb24pKSB7CiAJCQly
b3RhdGlvbiB8PSBEUk1fTU9ERV9SRUZMRUNUX1k7CiAJCQlzZXAgPSBkZWxpbTsKKwkJfSBlbHNl
IGlmICghc3RybmNtcChvcHRpb24sICJtYXJnaW5fcmlnaHQiLCBkZWxpbSAtIG9wdGlvbikpIHsK
KwkJCWNvbnN0IGNoYXIgKnZhbHVlID0gZGVsaW0gKyAxOworCQkJdW5zaWduZWQgaW50IG1hcmdp
bjsKKworCQkJbWFyZ2luID0gc2ltcGxlX3N0cnRvbCh2YWx1ZSwgJnNlcCwgMTApOworCisJCQkv
KiBNYWtlIHN1cmUgd2UgaGF2ZSBwYXJzZWQgc29tZXRoaW5nICovCisJCQlpZiAoc2VwID09IHZh
bHVlKQorCQkJCXJldHVybiAtRUlOVkFMOworCisJCQltb2RlLT50dl9tYXJnaW5zLnJpZ2h0ID0g
bWFyZ2luOworCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9wdGlvbiwgIm1hcmdpbl9sZWZ0IiwgZGVs
aW0gLSBvcHRpb24pKSB7CisJCQljb25zdCBjaGFyICp2YWx1ZSA9IGRlbGltICsgMTsKKwkJCXVu
c2lnbmVkIGludCBtYXJnaW47CisKKwkJCW1hcmdpbiA9IHNpbXBsZV9zdHJ0b2wodmFsdWUsICZz
ZXAsIDEwKTsKKworCQkJLyogTWFrZSBzdXJlIHdlIGhhdmUgcGFyc2VkIHNvbWV0aGluZyAqLwor
CQkJaWYgKHNlcCA9PSB2YWx1ZSkKKwkJCQlyZXR1cm4gLUVJTlZBTDsKKworCQkJbW9kZS0+dHZf
bWFyZ2lucy5sZWZ0ID0gbWFyZ2luOworCQl9IGVsc2UgaWYgKCFzdHJuY21wKG9wdGlvbiwgIm1h
cmdpbl90b3AiLCBkZWxpbSAtIG9wdGlvbikpIHsKKwkJCWNvbnN0IGNoYXIgKnZhbHVlID0gZGVs
aW0gKyAxOworCQkJdW5zaWduZWQgaW50IG1hcmdpbjsKKworCQkJbWFyZ2luID0gc2ltcGxlX3N0
cnRvbCh2YWx1ZSwgJnNlcCwgMTApOworCisJCQkvKiBNYWtlIHN1cmUgd2UgaGF2ZSBwYXJzZWQg
c29tZXRoaW5nICovCisJCQlpZiAoc2VwID09IHZhbHVlKQorCQkJCXJldHVybiAtRUlOVkFMOwor
CisJCQltb2RlLT50dl9tYXJnaW5zLnRvcCA9IG1hcmdpbjsKKwkJfSBlbHNlIGlmICghc3RybmNt
cChvcHRpb24sICJtYXJnaW5fYm90dG9tIiwgZGVsaW0gLSBvcHRpb24pKSB7CisJCQljb25zdCBj
aGFyICp2YWx1ZSA9IGRlbGltICsgMTsKKwkJCXVuc2lnbmVkIGludCBtYXJnaW47CisKKwkJCW1h
cmdpbiA9IHNpbXBsZV9zdHJ0b2wodmFsdWUsICZzZXAsIDEwKTsKKworCQkJLyogTWFrZSBzdXJl
IHdlIGhhdmUgcGFyc2VkIHNvbWV0aGluZyAqLworCQkJaWYgKHNlcCA9PSB2YWx1ZSkKKwkJCQly
ZXR1cm4gLUVJTlZBTDsKKworCQkJbW9kZS0+dHZfbWFyZ2lucy5ib3R0b20gPSBtYXJnaW47CiAJ
CX0gZWxzZSB7CiAJCQlyZXR1cm4gLUVJTlZBTDsKIAkJfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCmluZGV4IGIy
MmUzMTUwZTMzZC4uY2E3NDVkOWZlYWY1IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fY29u
bmVjdG9yLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCkBAIC0xMDU0LDYgKzEw
NTQsMTEgQEAgc3RydWN0IGRybV9jbWRsaW5lX21vZGUgewogCSAqIERSTV9NT0RFX1JPVEFURV8w
IGFuZCBEUk1fTU9ERV9ST1RBVEVfMTgwLgogCSAqLwogCXVuc2lnbmVkIGludCByb3RhdGlvbl9y
ZWZsZWN0aW9uOworCisJLyoqCisJICogQHR2X21hcmdpbnM6IFRWIG1hcmdpbnMgdG8gYXBwbHkg
dG8gdGhlIG1vZGUuCisJICovCisJc3RydWN0IGRybV9jb25uZWN0b3JfdHZfbWFyZ2lucyB0dl9t
YXJnaW5zOwogfTsKIAogLyoqCi0tIApnaXQtc2VyaWVzIDAuOS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
