Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E12C836E0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:03:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9p1vGxfa8oA//1ST4srwl05Rn7civcplG/3TcLHGEMg=; b=C2WtJaDw1uSrAy
	kba7Wz6sFaKzp9xIvK675FGYnpORS5ZmLCpNWGJH7weDLVv38Z3RoTxgQZqIElIW7YpdMogUemiK1
	+4gZJHNuvG4CZe5JPja1Xkr6t5kkx2lcn3/1p1w1iXwqAPzKM4j+kTgAcwO92JjbvPnE2aH/rD/He
	/5pHjU2T/H5ra6Bs4LKH2k0hU/CTlXJ9pp+agZ8RaZso+Q7l/1EMXcuX+2mA6hWBpNxEMP8bKWlLJ
	hz/XnnDJEPqooA6azQuCC1angL9Y07okQBe9LeMh6QwwZknCpsDB6fjocQ6h0sjhQdcvPGi7szls+
	qIj5JEk++6WFaxYNqm/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnMp-0000uC-GZ; Thu, 06 Jun 2019 08:03:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnMi-0000sd-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:03:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0E911200A0C;
 Thu,  6 Jun 2019 10:03:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 016FC200A13;
 Thu,  6 Jun 2019 10:03:08 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 5069B205C7;
 Thu,  6 Jun 2019 10:03:07 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: imx7ulp: add crypto support
Date: Thu,  6 Jun 2019 11:02:55 +0300
Message-Id: <20190606080255.25504-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_010316_277759_35545B42 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Iuliana Prodan <iuliana.prodan@nxp.com>, linux-kernel@vger.kernel.org,
 Franck Lenormand <franck.lenormand@nxp.com>, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSXVsaWFuYSBQcm9kYW4gPGl1bGlhbmEucHJvZGFuQG54cC5jb20+CgpBZGQgY3J5cHRv
IG5vZGUgaW4gZGV2aWNlIHRyZWUgZm9yIENBQU0gc3VwcG9ydC4KCk5vdGV3b3J0aHkgaXMgdGhh
dCBvbiA3dWxwIHRoZSBpbnRlcnJ1cHQgbGluZSBpcyBzaGFyZWQKYmV0d2VlbiB0aGUgdHdvIGpv
YiByaW5ncy4KClNpZ25lZC1vZmYtYnk6IEl1bGlhbmEgUHJvZGFuIDxpdWxpYW5hLnByb2RhbkBu
eHAuY29tPgpTaWduZWQtb2ZmLWJ5OiBGcmFuY2sgTEVOT1JNQU5EIDxmcmFuY2subGVub3JtYW5k
QG54cC5jb20+ClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAu
Y29tPgotLS0KCkkndmUganVzdCByZWFsaXplZCB0aGF0IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIG1l
cmdlZCB0aHJvdWdoIHRoZSBjcnlwdG8gdHJlZSwKZWxzZSBiaXNlY3RhYmlsaXR5IGNvdWxkIGJl
IGFmZmVjdGVkIGR1ZSB0byBjcnlwdG9kZXYtMi42CmNvbW1pdCAzODVjZmM4NGE1YTggKCJjcnlw
dG86IGNhYW0gLSBkaXNhYmxlIHNvbWUgY2xvY2sgY2hlY2tzIGZvciBpTVg3VUxQIikKKCBodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTcwMDE3LyApCndoaWNoIHNob3VsZCBj
b21lIGZpcnN0LgoKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDd1bHAuZHRzaSB8IDIzICsrKysrKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDd1bHAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDd1bHAuZHRzaQppbmRleCBkNmI3MTEwMTFjYmEuLmUyMDQ4MzcxNGJlNSAxMDA2NDQKLS0t
IGEvYXJjaC9hcm0vYm9vdC9kdHMvaW14N3VscC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDd1bHAuZHRzaQpAQCAtMTAwLDYgKzEwMCwyOSBAQAogCQlyZWcgPSA8MHg0MDAwMDAwMCAw
eDgwMDAwMD47CiAJCXJhbmdlczsKIAorCQljcnlwdG86IGNyeXB0b0A0MDI0MDAwMCB7CisJCQlj
b21wYXRpYmxlID0gImZzbCxzZWMtdjQuMCI7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJ
CSNzaXplLWNlbGxzID0gPDE+OworCQkJcmVnID0gPDB4NDAyNDAwMDAgMHgxMDAwMD47CisJCQly
YW5nZXMgPSA8MCAweDQwMjQwMDAwIDB4MTAwMDA+OworCQkJY2xvY2tzID0gPCZwY2MyIElNWDdV
TFBfQ0xLX0NBQU0+LAorCQkJCSA8JnNjZzEgSU1YN1VMUF9DTEtfTklDMV9CVVNfRElWPjsKKwkJ
CWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaXBnIjsKKworCQkJc2VjX2pyMDoganIwQDEwMDAgewor
CQkJCWNvbXBhdGlibGUgPSAiZnNsLHNlYy12NC4wLWpvYi1yaW5nIjsKKwkJCQlyZWcgPSA8MHgx
MDAwIDB4MTAwMD47CisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU0IElSUV9UWVBFX0xFVkVM
X0hJR0g+OworCQkJfTsKKworCQkJc2VjX2pyMToganIxQDIwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiZnNsLHNlYy12NC4wLWpvYi1yaW5nIjsKKwkJCQlyZWcgPSA8MHgyMDAwIDB4MTAwMD47CisJ
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU0IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJfTsK
KwkJfTsKKwogCQlscHVhcnQ0OiBzZXJpYWxANDAyZDAwMDAgewogCQkJY29tcGF0aWJsZSA9ICJm
c2wsaW14N3VscC1scHVhcnQiOwogCQkJcmVnID0gPDB4NDAyZDAwMDAgMHgxMDAwPjsKLS0gCjIu
MTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
