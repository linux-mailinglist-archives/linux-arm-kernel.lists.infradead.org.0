Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90F2201D2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyOwT4absFENd6Bp4vd65O6kc5k0lPgrSELZ6CSodGk=; b=catldTP6i4MWgC
	ZWpwUH6z1xy9z0yrm4htKGfB2yktdACtWbm4z23+5oKpJq9kdHZiEImHVntB5SIFT6s1eb7pxyWpY
	3zLHQOQLGtaYF53sf/upj3VOAK6Z2/BS7uVLJDtOLNBt4osuFNqdvl73gX1OvbUYC9FP6l325J6xE
	vvip0+LZZxYBVbzlERQvhI2+mlkgdqg/7duzxjYrr5wGv8tBmv6BWYOjUmKXQkI4DiHy/oysiTC1V
	GOG+6yMnvj63QyWtRsgCzs+IzslyMDvuGle3YcxN5OgDLm5su8+9pixySqjwTO59570xzGkAZH42P
	t8Jyt9ADRlfZY/F+B2VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOej-0001xR-Oa; Fri, 19 Jun 2020 21:34:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOeX-0001wG-GZ
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:34:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0238720120C;
 Fri, 19 Jun 2020 23:34:22 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E9B8D20120A;
 Fri, 19 Jun 2020 23:34:21 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 38846204B6;
 Fri, 19 Jun 2020 23:34:21 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 2/4] ARM: dts: imx6sll: add rng
Date: Sat, 20 Jun 2020 00:33:45 +0300
Message-Id: <20200619213347.27826-3-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619213347.27826-1-horia.geanta@nxp.com>
References: <20200619213347.27826-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_143425_685917_33DFAD9A 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Franck Lenormand <franck.lenormand@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kaiser <martin@kaiser.cx>, Silvano Di Ninno <silvano.dininno@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG5vZGUgZm9yIHRoZSBSTkdCIGJsb2NrLgoKU2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTE
gyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnNsbC5k
dHNpIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14NnNsbC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnNsbC5kdHNpCmluZGV4IGVkZDNhYmI5YTlmMS4uZTYzNGNkNDUwODZiIDEwMDY0NAotLS0g
YS9hcmNoL2FybS9ib290L2R0cy9pbXg2c2xsLmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnNsbC5kdHNpCkBAIC03ODYsNiArNzg2LDEzIEBACiAJCQkJY2xvY2tzID0gPCZjbGtzIElN
WDZTTExfQ0xLX01NRENfUDBfSVBHPjsKIAkJCX07CiAKKwkJCXJuZ2I6IHJuZ0AyMWI0MDAwIHsK
KwkJCQljb21wYXRpYmxlID0gImZzbCxpbXgyNS1ybmdiIjsKKwkJCQlyZWcgPSA8MHgwMjFiNDAw
MCAweDQwMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA1IElSUV9UWVBFX0xFVkVMX0hJ
R0g+OworCQkJCWNsb2NrcyA9IDwmY2xrcyBJTVg2U0xMX0NMS19EVU1NWT47CisJCQl9OworCiAJ
CQlvY290cDogb2NvdHAtY3RybEAyMWJjMDAwIHsKIAkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsK
IAkJCQkjc2l6ZS1jZWxscyA9IDwxPjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
