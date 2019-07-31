Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31A77D11D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9p9U0wnR1JLi57udvVuovSGLCyUvT4d01sJ42XRWG7c=; b=oekXhD8nun88Mg
	3sfno/BGirzzfmKbDydvSpwk7cRG/9ROTeACacFgfIGDrYtqnTGsVkE16E2Af8fdRe0b0fWyMR3wu
	Yb2imnqNIIu1ih3MVBzfxl4zAwGlgT1veQTeGPPhitSGXIqFHuMt8elWYQzJRwhLMwq2PJpYsVSdE
	A/WM+LZ6Qg3eekg3vjm8RV2IZsgo5IEP7gGy2XiSgC/0b14MPFUFAAXxZFAkcuOqR8iVl39bNxRdn
	nGJtwIbSsoMGfpwqWI3YV07XM6VdV+RWRSpDS/qDSz0InU6L2fkVxfQKOuFTjiFiMK48yhl27xb6M
	CF6uEanP9PbAlxk+Sicg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsx1j-0004ek-LY; Wed, 31 Jul 2019 22:24:55 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsx1d-0004eP-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:24:50 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id D419E747ABC; Thu,  1 Aug 2019 00:24:47 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH] ARM: at91/dt: pinctrl: add helper define for MULTI_DRIVE +
 PULL_UP
Date: Thu,  1 Aug 2019 00:24:39 +0200
Message-Id: <20190731222439.15704-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731221448.tnxrrwny2jpe7iop@pengutronix.de>
References: <20190731221448.tnxrrwny2jpe7iop@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_152449_430837_1AE2EA2E 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4K
LS0tCgpPbiBUaHUsIEF1ZyAwMSwgMjAxOSBhdCAxMjoxNDo0OEFNICswMjAwLCBVd2UgS2xlaW5l
LUvDtm5pZyB3cm90ZToKPiBUaGUgZGVmaW5lIEkgYWRkZWQgaW4gaW5jbHVkZS9kdC1iaW5kaW5n
cy9waW5jdHJsL2F0OTEuaCB3b3VsZCBiZSBuaWNlCj4gdG8gaGF2ZSB0aG91Z2ggdG8gc2ltcGxp
Znkgb3ZlcnJpZGluZyB0aGUgU29DJ3MgZGVmYXVsdCBwaW5jdHJsLiBXb3VsZAo+IGl0IGJlIE9L
IHRvIGFkZCB0aGlzPwoKc29tZXRoaW5nIGxpa2UgdGhpcyAuLi4KClRoZSBuYW1lIGlzIGEgYml0
IGluY29uc2lzdGVudCBjb21wYXJlZCB0bwpBVDkxX1BJTkNUUkxfUFVMTF9VUF9ERUdMSVRDSCwg
YnV0IG9uIHRoZSBwcm8gc2lkZSBpdCBpcyBzaG9ydGVyLgpBc3N1bWluZyB5b3UgbGlrZSB0aGlz
LCB3aGF0IGlzIHlvdXIgbmFtaW5nIHByZWZlcmVuY2U/CgpCZXN0IHJlZ2FyZHMKVXdlCgogaW5j
bHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL2F0OTEuaCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL2F0
OTEuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcGluY3RybC9hdDkxLmgKaW5kZXggMzgzMWY5MWZi
M2JhLi5iOGJiNTVhOTM1ZjYgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcGluY3Ry
bC9hdDkxLmgKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL2F0OTEuaApAQCAtMjEs
NiArMjEsNyBAQAogI2RlZmluZSBBVDkxX1BJTkNUUkxfREVCT1VOQ0VfVkFMKHgpCSh4IDw8IDE3
KQogCiAjZGVmaW5lIEFUOTFfUElOQ1RSTF9QVUxMX1VQX0RFR0xJVENICShBVDkxX1BJTkNUUkxf
UFVMTF9VUCB8IEFUOTFfUElOQ1RSTF9ERUdMSVRDSCkKKyNkZWZpbmUgQVQ5MV9QSU5DVFJMX01V
TFRJX0RSSVZFX1BVCShBVDkxX1BJTkNUUkxfTVVMVElfRFJJVkUgfCBBVDkxX1BJTkNUUkxfUFVM
TF9VUCkKIAogI2RlZmluZSBBVDkxX1BJTkNUUkxfRFJJVkVfU1RSRU5HVEhfREVGQVVMVAkJKDB4
MCA8PCA1KQogI2RlZmluZSBBVDkxX1BJTkNUUkxfRFJJVkVfU1RSRU5HVEhfTE9XCQkJKDB4MSA8
PCA1KQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
