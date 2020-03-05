Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7306D17A6F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyHbkAi6/BiAF2TK4iVVqPMxGjWqfYTqG+Qa7V+UkjI=; b=HwMa1sjxyh2c78
	MCd+tJx7PJ4JhJng9sIBTj8L8ePy4ROLZTs3VCF+66AN8z3bdL9BsdAGPV/OjPKXFLlXULPUw/bBG
	UIa7+FbBK2x/zV3GyC9uG90p4n18sEmNw8cQ0XKnve9U/rwMem82kXrVllakg7eXttFaUhMas1Ih3
	F3G0GsK8bGxwWDuMenK4icxqeYWb3IW0np6esnFN+6X5JVnr7iEXpQnuoltWTgaCzOReEdgV1rAd+
	Ft8Hx7y0xhnltAXDMu3OAQOc9l51MCcklWD9HoG6NIHg39Dp0lHg0BmKYcuH5vSRHSjIfgZDjn5uh
	Bc96rARfFlCBN3CfpHnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9r3C-00066o-TV; Thu, 05 Mar 2020 14:00:34 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9r2O-0004Lu-Mf
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:59:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D7F7200715;
 Thu,  5 Mar 2020 14:59:42 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C631200713;
 Thu,  5 Mar 2020 14:59:42 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D08F62059D;
 Thu,  5 Mar 2020 14:59:41 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 3/5] dt-bindings: crypto: caam: use generic node name
Date: Thu,  5 Mar 2020 15:59:07 +0200
Message-Id: <20200305135909.8180-4-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305135909.8180-1-horia.geanta@nxp.com>
References: <20200305135909.8180-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_055944_873429_C2D6768D 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aS5NWDZVTCBleGFtcGxlIHVzZXMgYSBzcGVjaWZpYyBub2RlIG5hbWUgZm9yIHRoZSBjcnlwdG8g
bm9kZS4KTGV0J3MgZml4IGl0IHNvIHdlIGF2b2lkIHRoaXMgcHJvcGFnYXRpbmcgZnVydGhlci4K
ClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0K
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLXNlYzQudHh0IHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtc2Vj
NC50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRvL2ZzbC1zZWM0
LnR4dAppbmRleCAyZmUyNDVjYTgxNmEuLjhmMzU5ZjQ3M2FkYSAxMDA2NDQKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtc2VjNC50eHQKKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtc2VjNC50eHQKQEAgLTEz
OCw3ICsxMzgsNyBAQCBpTVg2UURML1NYIHJlcXVpcmVzIGZvdXIgY2xvY2tzCiAKIGlNWDZVTCBk
b2VzIG9ubHkgcmVxdWlyZSB0aHJlZSBjbG9ja3MKIAotCWNyeXB0bzogY2FhbUAyMTQwMDAwIHsK
KwljcnlwdG86IGNyeXB0b0AyMTQwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJmc2wsc2VjLXY0LjAi
OwogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MT47Ci0tIAoyLjE3
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
