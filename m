Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E5778D8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Z36bcIz51yJ7NlWjLa1A2z1tkIvMQSx5gaaSO3+lgk=; b=B0KDQMA/5wSKoQ
	TjfPPe5txrEaliMkr5atQ+n5jsYazrgpdNL/RqvKFw2ldfIkPi64EJ+8utr5Vc8C367sdReujLIXf
	arjTpGHKyKl41049z54fzvqgPxZmeXoRm/2yVdn1adFh2nkM+sTHl7942ZFpxjbBGWvjXOGNn7Ixj
	D+Mbb28izPM231snyKCvHgOZPefxbsfHlhYK0KhY9OIsMZdOMgp3pUUpkXelmqvndVwv0YGUK6rnU
	AIz7uPltnKjCoCCZp18Ec9t+ADcD789HJDr2zyLE+Pl0lY3syPkonVZigVSF8ROUgMBUUxwAy1sMp
	wH28mxBaoZQw10FNkajQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6Q0-0007ki-Nf; Mon, 29 Jul 2019 14:14:28 +0000
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6Pl-0007k9-LI
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:14:15 +0000
Received: from player789.ha.ovh.net (unknown [10.108.57.43])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 71BD31A8156
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 16:14:07 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr
 [90.126.248.179])
 (Authenticated sender: sebastien.szymanski@armadeus.com)
 by player789.ha.ovh.net (Postfix) with ESMTPSA id 9862F85F2C77;
 Mon, 29 Jul 2019 14:13:51 +0000 (UTC)
From: =?UTF-8?q?S=C3=A9bastien=20Szymanski?= <sebastien.szymanski@armadeus.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 1/1] drm: mxsfb: add i.MX6UL in Kconfig
Date: Mon, 29 Jul 2019 16:13:49 +0200
Message-Id: <20190729141349.28465-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 18387634328820536422
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrledugdejgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_071413_845901_316B5CC8 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [87.98.165.38 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
 Julien BOIBESSOT <julien.boibessot@armadeus.com>,
 Stefan Agner <stefan@agner.ch>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBjb250cm9sbGVyIGlzIGFsc28gZm91bmQgb24gaS5NWDZVTCBhbmQgaS5NWDZVTEwgc28g
dXBkYXRlIEtjb25maWcKYWNjb3JkaW5nbHkuCgpTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVuIFN6
eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL214c2ZiL0tjb25maWcgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL214c2Zi
L0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvS2NvbmZpZwppbmRleCAwZGNhOGYyNzE2
OWUuLjQ1NzFkNDk5MGU2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL214c2ZiL0tjb25m
aWcKKysrIGIvZHJpdmVycy9ncHUvZHJtL214c2ZiL0tjb25maWcKQEAgLTUsNyArNSw3IEBAIGNv
bmZpZyBEUk1fTVhTCiAJICBDaG9vc2UgdGhpcyBvcHRpb24gdG8gc2VsZWN0IGRyaXZlcnMgZm9y
IE1YUyBGQiBkZXZpY2VzCiAKIGNvbmZpZyBEUk1fTVhTRkIKLQl0cmlzdGF0ZSAiaS5NWDIzL2ku
TVgyOC9pLk1YNlNYIE1YU0ZCIExDRCBjb250cm9sbGVyIgorCXRyaXN0YXRlICJpLk1YMjMvaS5N
WDI4L2kuTVg2U1gvaS5NWDZVTCBNWFNGQiBMQ0QgY29udHJvbGxlciIKIAlkZXBlbmRzIG9uIERS
TSAmJiBPRgogCWRlcGVuZHMgb24gQ09NTU9OX0NMSwogCXNlbGVjdCBEUk1fTVhTCkBAIC0xNCw3
ICsxNCw3IEBAIGNvbmZpZyBEUk1fTVhTRkIKIAlzZWxlY3QgRFJNX0tNU19DTUFfSEVMUEVSCiAJ
c2VsZWN0IERSTV9QQU5FTAogCWhlbHAKLQkgIENob29zZSB0aGlzIG9wdGlvbiBpZiB5b3UgaGF2
ZSBhbiBpLk1YMjMvaS5NWDI4L2kuTVg2U1ggTVhTRkIKKwkgIENob29zZSB0aGlzIG9wdGlvbiBp
ZiB5b3UgaGF2ZSBhbiBpLk1YMjMvaS5NWDI4L2kuTVg2U1gvaS5NWDZVTCBNWFNGQgogCSAgTENE
IGNvbnRyb2xsZXIuCiAKIAkgIElmIE0gaXMgc2VsZWN0ZWQgdGhlIG1vZHVsZSB3aWxsIGJlIGNh
bGxlZCBteHNmYi4KLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
