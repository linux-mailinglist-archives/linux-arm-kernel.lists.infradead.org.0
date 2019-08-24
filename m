Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A6C9B959
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 02:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxVijsDx5S0Zj09PeYeoRLS/maqBB4TzeY1XwZzaEtM=; b=KjN1cnUCnJxSAh
	S9iZyFZ0GqPpdHXqwma8grS+MKL/Xfj3Pk021tP4QKPM0q0BsVP26gYpaw66HmSAjPzWzHIWEKODZ
	XoZyGQNphOMg34eJx3vl1UQkSBUbWI7nJyjGZn875/kx+nH60rFJo7lSCCiQ8hHauzZomthrOVuXg
	iho0eD6jSbBfIWdNbKOLrxis13v3kCbLkcTCreVCuS0B5jC63NovaGQoJ+/DP0AGXNMhAC9wJM6g8
	B/jq79S7JrIYqmJ/SVpeglzhtJAxmgm6QNEu7gLouRA6i2E40rc1ml90o623u1PRJlejivBm1sjsL
	B+tU2x50NQievnQzosfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1JeP-0001uq-3c; Sat, 24 Aug 2019 00:11:25 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1JeH-0001tA-Uw
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 00:11:19 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 2A79077D4B4; Sat, 24 Aug 2019 02:10:51 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 1/6] pwm: atmel: Add a hint where to find hardware
 documentation
Date: Sat, 24 Aug 2019 02:10:36 +0200
Message-Id: <20190824001041.11007-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_171118_147886_725A66CA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW9zdCBNaWNyb2NoaXAgKGZvcm1lcmx5IEF0bWVsKSBjaGlwcyBoYXZlIHB1YmxpY2x5IGF2YWls
YWJsZSBtYW51YWxzLgpBIGNvbXByZWhlbnNpdmUgbGlzdCBpcyBhbHJlYWR5IGNvbnRhaW5lZCBp
biB0aGUgZG9jdW1lbnRhdGlvbiBmb2xkZXIuClJlZmVyZW5jZSB0aGlzIGxpc3QgaW4gdGhlIGhl
YWRlciBvZiB0aGUgZHJpdmVyIHRvIGFsbG93IHJldmlld2VycyB0bwpmaW5kIHRoZSByZWxldmFu
dCBtYW51YWxzLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUt
a29lbmlnLm9yZz4KLS0tCkNoYW5nZXMgc2luY2UgKGltcGxpY2l0KSB2MSBzZW50IHdpdGggTWVz
c2FnZS1JZDoKMjAxOTA4MTUyMTQxMzMuMTExMzQtMS11d2VAa2xlaW5lLWtvZW5pZy5vcmc6Cgog
LSBPbmx5IHJlZmVyZW5jZSBEb2N1bWVudGF0aW9uL2FybS9taWNyb2NoaXAucnN0IGluc3RlYWQg
b2Ygc3RhcnRpbmcKICAgYW5vdGhlciBsaXN0IG9mIGxpbmtzCgogZHJpdmVycy9wd20vcHdtLWF0
bWVsLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jIGIvZHJpdmVycy9wd20vcHdtLWF0bWVsLmMKaW5k
ZXggZTVlMWVhZjM3MmZhLi5hNjFhMzBmYThiN2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3
bS1hdG1lbC5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jCkBAIC00LDYgKzQsOSBAQAog
ICoKICAqIENvcHlyaWdodCAoQykgMjAxMyBBdG1lbCBDb3Jwb3JhdGlvbgogICoJCSBCbyBTaGVu
IDx2b2ljZS5zaGVuQGF0bWVsLmNvbT4KKyAqCisgKiBMaW5rcyB0byByZWZlcmVuY2UgbWFudWFs
cyBmb3IgdGhlIHN1cHBvcnRlZCBQV00gY2hpcHMgY2FuIGJlIGZvdW5kIGluCisgKiBEb2N1bWVu
dGF0aW9uL2FybS9taWNyb2NoaXAucnN0LgogICovCiAKICNpbmNsdWRlIDxsaW51eC9jbGsuaD4K
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
