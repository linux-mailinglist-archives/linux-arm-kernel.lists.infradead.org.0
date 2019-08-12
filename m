Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237298A94B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NsMh5MiAM5+L14DVmm004NCPqZWYKQBghRqXPWApwv8=; b=dXI7W6wpjXCXBO
	eQQj1InWR8HaG0QQBnHBHXBfdhF8waw6r6LBqjqhX4vPEpeq6QJC/kS197ey0pUv9lC0C6hH+zZle
	sdWSWMXeHjtaUyIgTrcY2A6nNlnbIfqeeKq+Zxv1Qbz6mcvRPSo5ghyyPmiQy61Lcqlmhuc/fmOVD
	/Cmhb7wnjTRSL5chvU+vR4xVgVOnjoAMECatk85wG4wnFFlmoo31t1wgXBgqnQ42LHxsBSrZE8/aj
	vf4CDSaDqYsW/yAAPIo5tVLQiyyM/QtpOXdE8g3Nk8iOFwUWoUipnLtfL6dXPA96EAocmyvHZ/9M+
	IC7QyEeRXScuNIb95Deg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxHrh-0001CH-Oi; Mon, 12 Aug 2019 21:28:30 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxHrU-0001BN-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:28:18 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id C47BE763AF1; Mon, 12 Aug 2019 23:28:10 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH 1/9] ARM: dts: at91: Add label for sam9x5's internal RTC
Date: Mon, 12 Aug 2019 23:27:49 +0200
Message-Id: <20190812212757.23432-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_142816_592221_B77B976D 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
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

VGhpcyBhbGxvd3MgdG8gc2ltcGxpZnkgc2V2ZXJhbCBtYWNoaW5lIGRldmljZSB0cmVlcyB1c2lu
ZyB0aGlzIGxhYmVsCmluc3RlYWQgb2YgZHVwbGljYXRpbmcgdGhlIFNvQydzIGhpZXJhcmNoeS4K
ClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+
Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTl4NS5kdHNpIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvYXQ5MXNhbTl4NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTl4
NS5kdHNpCmluZGV4IGVmNDdjMDA1ZWYwMy4uN2MyZWI5M2Y4Y2FjIDEwMDY0NAotLS0gYS9hcmNo
L2FybS9ib290L2R0cy9hdDkxc2FtOXg1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5
MXNhbTl4NS5kdHNpCkBAIC05NDEsNyArOTQxLDcgQEAKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
OwogCQkJfTsKIAotCQkJcnRjQGZmZmZmZWIwIHsKKwkJCXJ0YzogcnRjQGZmZmZmZWIwIHsKIAkJ
CQljb21wYXRpYmxlID0gImF0bWVsLGF0OTFzYW05eDUtcnRjIjsKIAkJCQlyZWcgPSA8MHhmZmZm
ZmViMCAweDQwPjsKIAkJCQlpbnRlcnJ1cHRzID0gPDEgSVJRX1RZUEVfTEVWRUxfSElHSCA3PjsK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
