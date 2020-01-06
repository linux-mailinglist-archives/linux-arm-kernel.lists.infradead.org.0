Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC471318FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNKJGQ8W88q16OE9eayIULyFM5FyEGlS4LpXZ0a6s/A=; b=e/iBv7/I7L0ZhI
	WT/kOsZhgFDBWeUx1ZAxuVlDh46+hgD6BQ6dOQ/gAuklICnFCkqwyR3yEjLpVtouvXppT/YTGyePq
	fWSO1I/X1b8j0f2N8mB4TsmNx6nExZjik69X0A1K57CSRNrkIEWYIn4wP6JxW/fKvEU6M/Re1GiEW
	zHTNMkgLH8Lhpl+ZASGnhaMZ+rHEhp/MftFhgY2Rt1icZ+52C0uUhbeKtuMqjXuGz4EdYpSKisIXz
	aoL2cL0ZE57JBruCyX+YC5979WjUg942qtS/WjHOht8OAVnUm89Ug/fhIgbDvuwbZPk72v+nDqebu
	YBubLXVdixzZnLTBWIjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioYa2-0002nL-Tu; Mon, 06 Jan 2020 20:02:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioYZg-0002fr-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:02:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 563561A0E3F;
 Mon,  6 Jan 2020 21:02:01 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 469CA1A0E3C;
 Mon,  6 Jan 2020 21:02:01 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 89CDB203CC;
 Mon,  6 Jan 2020 21:02:00 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 2/2] arm64: dts: imx8mn: add crypto node
Date: Mon,  6 Jan 2020 22:01:54 +0200
Message-Id: <20200106200154.30643-2-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106200154.30643-1-horia.geanta@nxp.com>
References: <20200106200154.30643-1-horia.geanta@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_120204_449650_B5A2905E 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG5vZGUgZm9yIENBQU0gLSBDcnlwdG9ncmFwaGljIEFjY2VsZXJhdGlvbiBhbmQgQXNzdXJh
bmNlIE1vZHVsZS4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBu
eHAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbi5kdHNpIHwg
MzAgKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1uLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW4uZHRzaQppbmRleCBjY2U2
NWI5YTg2MWYuLmMzZmVjMTlmNGYwNSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1uLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1uLmR0c2kKQEAgLTUzNyw2ICs1MzcsMzYgQEAKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
OwogCQkJfTsKIAorCQkJY3J5cHRvOiBjcnlwdG9AMzA5MDAwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiZnNsLHNlYy12NC4wIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1j
ZWxscyA9IDwxPjsKKwkJCQlyZWcgPSA8MHgzMDkwMDAwMCAweDQwMDAwPjsKKwkJCQlyYW5nZXMg
PSA8MCAweDMwOTAwMDAwIDB4NDAwMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA5MSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TU5fQ0xLX0FIQj4s
CisJCQkJCSA8JmNsayBJTVg4TU5fQ0xLX0lQR19ST09UPjsKKwkJCQljbG9jay1uYW1lcyA9ICJh
Y2xrIiwgImlwZyI7CisKKwkJCQlzZWNfanIwOiBqcjBAMTAwMCB7CisJCQkJCSBjb21wYXRpYmxl
ID0gImZzbCxzZWMtdjQuMC1qb2ItcmluZyI7CisJCQkJCSByZWcgPSA8MHgxMDAwIDB4MTAwMD47
CisJCQkJCSBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTA1IElSUV9UWVBFX0xFVkVMX0hJR0g+Owor
CQkJCX07CisKKwkJCQlzZWNfanIxOiBqcjFAMjAwMCB7CisJCQkJCSBjb21wYXRpYmxlID0gImZz
bCxzZWMtdjQuMC1qb2ItcmluZyI7CisJCQkJCSByZWcgPSA8MHgyMDAwIDB4MTAwMD47CisJCQkJ
CSBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTA2IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCX07
CisKKwkJCQlzZWNfanIyOiBqcjJAMzAwMCB7CisJCQkJCSBjb21wYXRpYmxlID0gImZzbCxzZWMt
djQuMC1qb2ItcmluZyI7CisJCQkJCSByZWcgPSA8MHgzMDAwIDB4MTAwMD47CisJCQkJCSBpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgMTE0IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCX07CisJCQl9
OworCiAJCQlpMmMxOiBpMmNAMzBhMjAwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDht
bi1pMmMiLCAiZnNsLGlteDIxLWkyYyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0tIAoy
LjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
