Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF38F68C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 23:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r8E+Q9Sj3ljj2y0pGSaJw6v8XHLGsUHb8QVkK32eZHU=; b=X4qu1tM2JEaBpj
	WhCmDqxbzNMRNLXT+yw6PBXbNKnmmE0F7jcClxyMH9vZ0PmtncspjYeHrrbsqKtjzFcvvxUvQNPbw
	0p0VeH6WjFp5nmPq7t25MbI36Axj0Y/XGBKeORTJ21rP/EZebnc0uLQguJFlgf/641E/6d3qmQ21m
	MMA8pGoo5917eFp9PPih1Smy8zu0omHVwt4UCas04Lj3YYnzsg/i1Bkq6lQQdWJJxhw7HvQZKj5qs
	KKB8Hdfbd0NNigU4tfcDuWkyL83Hd6UXt/VCPMsKF0a74JfEPkAd3rX5RcoNf7OKKl3U/RAS+sZnF
	edqeCvrgchnls5ay+1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyNVo-0003s0-4P; Thu, 15 Aug 2019 21:42:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyNVJ-0003hN-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 21:41:55 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNVA-0007cE-3U; Thu, 15 Aug 2019 23:41:44 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyNV8-0003Gl-Br; Thu, 15 Aug 2019 23:41:42 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/3] pwm: atmel: Add link to reference manual
Date: Thu, 15 Aug 2019 23:41:31 +0200
Message-Id: <20190815214133.11134-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_144153_899263_B4792014 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJlZmVyZW5jZSBtYW51YWwgZm9yIGF0IGxlYXN0IG9uZSBvZiB0aGUgc3VwcG9ydGVkIHZh
cmlhbnRzIGlzCnB1YmxpY2x5IGF2YWlsYWJsZS4gQWRkIGEgbGluayB0byBpdCBhdCB0aGUgdG9w
IG9mIHRoZSBkcml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGts
ZWluZS1rb2VuaWcub3JnPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1hdG1lbC5jIHwgMyArKysKIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9w
d20tYXRtZWwuYyBiL2RyaXZlcnMvcHdtL3B3bS1hdG1lbC5jCmluZGV4IGU1ZTFlYWYzNzJmYS4u
YWMzZDdhMjAwYjllIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tYXRtZWwuYworKysgYi9k
cml2ZXJzL3B3bS9wd20tYXRtZWwuYwpAQCAtNCw2ICs0LDkgQEAKICAqCiAgKiBDb3B5cmlnaHQg
KEMpIDIwMTMgQXRtZWwgQ29ycG9yYXRpb24KICAqCQkgQm8gU2hlbiA8dm9pY2Uuc2hlbkBhdG1l
bC5jb20+CisgKgorICogUmVmZXJlbmNlIG1hbnVhbCBmb3IgImF0bWVsLGF0OTFzYW05cmwtcHdt
IjoKKyAqICAgaHR0cDovL3d3MS5taWNyb2NoaXAuY29tL2Rvd25sb2Fkcy9lbi9EZXZpY2VEb2Mv
QXRtZWwtMTEwMzItMzItYml0LUFSTTkyNkVKLVMtTWljcm9jb250cm9sbGVyLVNBTTlHMjVfRGF0
YXNoZWV0LnBkZgogICovCiAKICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
