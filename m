Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C2F201D30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkLvsf1gRPhyXXwm0BT+dOdmLP2F5JET9gweAf6xjPA=; b=S7rCLgwPuOzg+w
	gj50zn0YkFuc9aUrall5tK7wZU8Q8U5H7OdTZau2QA7WO+wsH78T7yNm4uoDgatFZvJAw0oPDk5bJ
	Y7JoHeREm+HR8R0/1XVgA1TxaMNSVUWiRqWO6VdKfTNBeZPtKZE2jD28F/uwk9gVbwFg+eufrOl59
	iBXn/PUufpw4o8N0PKv5n/Emok24EbJa8doMshAWKH2P3ZaK0HASEzteSE7XIYTwYhAVhjVa2+Cuj
	Wz5/Y71+0EDATJ1CeN0vckLUU1T7jiqs50rPUppryKAp3pbm9+S4W3Zf6uQWXMO99YOSHuB0ZB8Xx
	CHGVIAAYoKxDNJhCupbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOfB-0002Me-LM; Fri, 19 Jun 2020 21:35:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOeY-0001wI-4A
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:34:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 96A4A20120F;
 Fri, 19 Jun 2020 23:34:23 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 88EB7201203;
 Fri, 19 Jun 2020 23:34:23 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C9583204B6;
 Fri, 19 Jun 2020 23:34:22 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 4/4] hwrng: imx-rngc: enable driver for i.MX6
Date: Sat, 20 Jun 2020 00:33:47 +0300
Message-Id: <20200619213347.27826-5-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619213347.27826-1-horia.geanta@nxp.com>
References: <20200619213347.27826-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_143426_296614_AFF432D6 
X-CRM114-Status: GOOD (  10.59  )
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

aS5NWDYgU0wsIFNMTCwgVUxMLCBVTFogU29DcyBoYXZlIGFuIFJOR0IgYmxvY2suCgpTaW5jZSBp
bXgtcm5nYyBkcml2ZXIgc3VwcG9ydHMgYWxzbyBybmdiLApsZXQncyBlbmFibGUgaXQgZm9yIHRo
ZXNlIFNvQ3MgdG9vLgoKU2lnbmVkLW9mZi1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRh
QG54cC5jb20+Ci0tLQogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9LY29uZmlnIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9LY29uZmlnIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9L
Y29uZmlnCmluZGV4IDBhZDE3ZWZjOTZkZi4uNTNmNmE3ZTQzOTJmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2NoYXIvaHdfcmFuZG9tL0tjb25maWcKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9L
Y29uZmlnCkBAIC0yNDUsNyArMjQ1LDcgQEAgY29uZmlnIEhXX1JBTkRPTV9NWENfUk5HQQogY29u
ZmlnIEhXX1JBTkRPTV9JTVhfUk5HQwogCXRyaXN0YXRlICJGcmVlc2NhbGUgaS5NWCBSTkdDIFJh
bmRvbSBOdW1iZXIgR2VuZXJhdG9yIgogCWRlcGVuZHMgb24gSEFTX0lPTUVNICYmIEhBVkVfQ0xL
Ci0JZGVwZW5kcyBvbiBTT0NfSU1YMjUgfHwgQ09NUElMRV9URVNUCisJZGVwZW5kcyBvbiBTT0Nf
SU1YMjUgfHwgU09DX0lNWDZTTCB8fCBTT0NfSU1YNlNMTCB8fCBTT0NfSU1YNlVMIHx8IENPTVBJ
TEVfVEVTVAogCWRlZmF1bHQgSFdfUkFORE9NCiAJaGVscAogCSAgVGhpcyBkcml2ZXIgcHJvdmlk
ZXMga2VybmVsLXNpZGUgc3VwcG9ydCBmb3IgdGhlIFJhbmRvbSBOdW1iZXIKLS0gCjIuMTcuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
