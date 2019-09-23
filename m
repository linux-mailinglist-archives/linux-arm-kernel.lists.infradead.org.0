Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D4DBB135
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LAE1Wc7itbUK10ovJHwRZs5Zhkb6tAA6yqeommgdqbY=; b=PiGr4TiVGze9pE
	THG747Uvgtu+3LZWnycMjpYh/IInPTJtOSUoqwPI0a03rFF2mw4PCysggQ2AXQftqGlcfZiiffPkr
	JLQxYD0JVFB/6EAqU7+ITbjYhbdgNHPlB69p3+7NGzlfYiE3c1KtktFWdIbmoUnRXafgHIElHF+Ie
	8nI+UO26SOfUFoxwh7yZS8m4pGzmv+EgqS9vdg3q0npCd4sj1YRCBdFBhL4iqofTJ/uxBkJmjs+rA
	3lc5sfeVizpdqZk0jW4CIsq5qSOZnf4C7WxdP5Tp4ifpZQbrEaH7w5mDxvLhrpfYzIiUab46iDP7M
	zAv6p8raUBIIMQ/aCmCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKTE-0002LO-QL; Mon, 23 Sep 2019 09:17:24 +0000
Received: from 9.mo178.mail-out.ovh.net ([46.105.75.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKSy-0002I0-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:17:10 +0000
Received: from player718.ha.ovh.net (unknown [10.108.42.23])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id 60BBB7A0AD
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:17:03 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id BC385A087C8B;
 Mon, 23 Sep 2019 09:16:50 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH 1/1] ARM: dts: imx28: add poweroff support
Date: Mon, 23 Sep 2019 11:17:00 +0200
Message-Id: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 10200090206580266236
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdekgddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021708_503660_4805C8D2 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.75.45 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Julien Boibessot <julien.boibessot@armadeus.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGQgcG93ZXJvZmYgc3VwcG9ydCB1c2luZyB0aGUgZ2VuZXJpYyBzeXNjb24tcG93ZXJv
ZmYgZHJpdmVyLgoKU2lnbmVkLW9mZi1ieTogU8OpYmFzdGllbiBTenltYW5za2kgPHNlYmFzdGll
bi5zenltYW5za2lAYXJtYWRldXMuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDI4LmR0
c2kgfCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14MjguZHRzaSBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL2lteDI4LmR0c2kKaW5kZXggZTE0ZDhlZjAxNThiLi4zN2ZhODEzMWEw
MjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDI4LmR0c2kKKysrIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14MjguZHRzaQpAQCAtMTExNCw4ICsxMTE0LDE2IEBACiAJCQl9OwogCiAJ
CQlwb3dlcjogcG93ZXJAODAwNDQwMDAgeworCQkJCWNvbXBhdGlibGUgPSAic3lzY29uIiwgInNp
bXBsZS1tZmQiOwogCQkJCXJlZyA9IDwweDgwMDQ0MDAwIDB4MjAwMD47Ci0JCQkJc3RhdHVzID0g
ImRpc2FibGVkIjsKKworCQkJCW14c19wb3dlcm9mZjogbXhzLXBvd2Vyb2ZmIHsKKwkJCQkJY29t
cGF0aWJsZSA9ICJzeXNjb24tcG93ZXJvZmYiOworCQkJCQlyZWdtYXAgPSA8JnBvd2VyPjsKKwkJ
CQkJb2Zmc2V0ID0gPDB4MTA0PjsKKwkJCQkJdmFsdWUgPSA8MHgzRTc3MDAwMT47CisJCQkJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7CisJCQkJfTsKIAkJCX07CiAKIAkJCXNhaWYxOiBzYWlmQDgwMDQ2
MDAwIHsKLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
