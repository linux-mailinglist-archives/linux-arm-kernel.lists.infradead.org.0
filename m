Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23FA48622
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbKSWGzB8I6eeIwz+MaY9PLWL3M5VIWvCFBkqLwS9N0=; b=MgcPmZPyjufvWf
	TIKCKVGDESjVwU2gTkFbwvEX/mZV73ooL/JwcK/5y0g5lpFxOUOk5PMkd/n3Kaia5QKLuexjS623Z
	D+qDbTUgOWIF5auLXM6UWc6bayT/U31F2ppEv3zv0TslwlgwUCfVbAon6+JKC7MAGsGI65DjsOG56
	ubyJeyvswQxLlBwat8Zi5/PPvRL25yiwFUyIrYg6fKUkRoZZVCJHxTBlAYCj9/ubVPQtw3xH5Uue3
	MpO3QroS6FW4nIeVPJBvx1rzXkw129VxDj2ws/88s70RcGszr1P+Cp4h0yr1+Iw9rrMUaClweol+3
	wPhsyd814CyMluDfnL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct1L-0006Dk-HX; Mon, 17 Jun 2019 14:54:07 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcszc-00059c-2I
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:52:22 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B574040022;
 Mon, 17 Jun 2019 14:52:07 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v5 03/12] drm/client: Restrict the rotation check to the
 rotation itself
Date: Mon, 17 Jun 2019 16:51:30 +0200
Message-Id: <cf4de0cdef20aac6c654b7b73c2ab3e317c46803.1560783090.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075220_296389_1186E972 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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

VGhlIGRybV9jbGllbnRfcm90YXRpb24gaGFzIGEgY2hlY2sgb24gdGhlIHJvdGF0aW9uIHZhbHVl
LCBidXQgdGhlCnJlZmxlY3Rpb25zIGFyZSBhbHNvIHN0b3JlZCBpbiB0aGUgc2FtZSB2YXJpYWJs
ZSwgYW5kIHRoZSBjaGVjayBkb2Vzbid0CnRha2UgdGhpcyBpbnRvIGFjY291bnQuCgpUaGVyZWZv
cmUsIGV2ZW4gdGhvdWdoIHdlIG1pZ2h0IGhhdmUgYSB2YWxpZCByb3RhdGlvbiwgaWYgd2UncmUg
YWxzbyB1c2luZwphIHJlZmxlY3Rpb24gcGFyYW1ldGVyLCB0aGUgdGVzdCB3aWxsIGZhaWwgZm9y
IG5vIHBhcnRpY3VsYXIgcmVhc29uLgoKUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9y
YWxmQHRyb25uZXMub3JnPgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlw
YXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50X21vZGVzZXQu
YyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jIGIvZHJp
dmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jCmluZGV4IDgyNjRjM2E3MzJiMC4uYjRl
NWZiMGExN2NmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jCkBAIC04NDUsNyAr
ODQ1LDggQEAgYm9vbCBkcm1fY2xpZW50X3BhbmVsX3JvdGF0aW9uKHN0cnVjdCBkcm1fbW9kZV9z
ZXQgKm1vZGVzZXQsIHVuc2lnbmVkIGludCAqcm90YXQKIAkgKiBkZXBlbmRpbmcgb24gdGhlIGhh
cmR3YXJlIHRoaXMgbWF5IHJlcXVpcmUgdGhlIGZyYW1lYnVmZmVyCiAJICogdG8gYmUgaW4gYSBz
cGVjaWZpYyB0aWxpbmcgZm9ybWF0LgogCSAqLwotCWlmICgqcm90YXRpb24gIT0gRFJNX01PREVf
Uk9UQVRFXzE4MCB8fCAhcGxhbmUtPnJvdGF0aW9uX3Byb3BlcnR5KQorCWlmICgoKnJvdGF0aW9u
ICYgRFJNX01PREVfUk9UQVRFX01BU0spICE9IERSTV9NT0RFX1JPVEFURV8xODAgfHwKKwkgICAg
IXBsYW5lLT5yb3RhdGlvbl9wcm9wZXJ0eSkKIAkJcmV0dXJuIGZhbHNlOwogCiAJZm9yIChpID0g
MDsgaSA8IHBsYW5lLT5yb3RhdGlvbl9wcm9wZXJ0eS0+bnVtX3ZhbHVlczsgaSsrKQotLSAKZ2l0
LXNlcmllcyAwLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
