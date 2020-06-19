Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B3201D32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 23:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jZ4cugW1BCwOhXkTNEYxMfghkYKeW1BX86ak6qN8PJA=; b=Hpf41pdMGA47jr
	jbffkn7NIHYea5rWalrfNPKhdBzqpLwNQFkPTpdCYpXHl1XeqHfU6hneYA8GljgaWisVK1F8dG0+f
	JxP728whtKyS54JjcEkkQOZa0OTr2N1hsKpg/USs4i+Zbj5d2N87NSmtJbOAcfuDxNnrvRSl89Nls
	nPErk9H09EnGPJ/8yUhGhOQ0z14EoMDGpXlo/iM8c6kfIo1GVvFi5UHRzII1vDyBGM/YQH02r3ji/
	dtxurTOGdcBwlzrRi6inOXH4Lgst0s8Dzo0e6fcUu6VkJUDMm0yHlUqaCSoPrBooz925FHyJPL0RG
	OG3DcUA4WDgnVcHa4S5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmOfU-0002nh-22; Fri, 19 Jun 2020 21:35:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmOea-0001wr-2q
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 21:34:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 682E81A02C5;
 Fri, 19 Jun 2020 23:34:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 59E9E1A02BB;
 Fri, 19 Jun 2020 23:34:20 +0200 (CEST)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B9BB204B6;
 Fri, 19 Jun 2020 23:34:19 +0200 (CEST)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Matt Mackall <mpm@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>
Subject: [PATCH 0/4] hwrng: add support for i.MX6 rngb
Date: Sat, 20 Jun 2020 00:33:43 +0300
Message-Id: <20200619213347.27826-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_143428_278989_F53B1335 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

QWRkIHN1cHBvcnQgZm9yIFJOR0IgZm91bmQgaW4gc29tZSBpLk1YNiBTb0NzICg2U0wsIDZTTEws
IDZVTEwsIDZVTFopLApiYXNlZCBvbiBSTkdDIGRyaXZlciAoZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9pbXgtcm5nYy5jKS4KClRoaXMgZHJpdmVyIGNsYWltcyBzdXBwb3J0IGFsc28gZm9yIFJOR0Ig
KGJlc2lkZXMgUk5HQyksCmFuZCBpcyBjdXJyZW50bHkgdXNlZCBvbmx5IGJ5IGkuTVgyNS4KCk5v
dGU6CgpBbGwgdGhlIGkuTVg2IFNvQ3Mgd2l0aCBSTkdCIGhhdmUgYSBEQ1AgKERhdGEgQ28tUHJv
Y2Vzc29yKQpjcnlwdG8gYWNjZWxlcmF0b3IuCgpTZXZlcmFsIE5YUCBTb0MgZnJvbSBRb3JJUSBm
YW1pbHkgKFAxMDEwLCBQMTAyMywgUDQwODAsIFAzMDQxLCBQNTAyMCkKYWxzbyBoYXZlIGEgUk5H
QiwgaG93ZXZlciBpdCdzIHBhcnQgb2YgdGhlIENBQU0KKENyeXB0b2dyYWhpYyBBY2NlbGVyYXRv
ciBhbmQgQXNzdXJhbmNlIE1vZHVsZSkgY3J5cHRvIGFjY2VsZXJhdG9yLgpJbiB0aGlzIGNhc2Us
IFJOR0IgaXMgbWFuYWdlZCBpbiB0aGUgY2FhbSBkcml2ZXIKKGRyaXZlcnMvY3J5cHRvL2NhYW0v
KSwgc2luY2UgaXQncyB0aWdodGx5IHJlbGF0ZWQgdG8KdGhlIGNhYW0gImpvYiByaW5nIiBpbnRl
cmZhY2UuCgpIb3JpYSBHZWFudMSDICg0KToKICBBUk06IGR0czogaW14NnNsOiBmaXggcm5nIG5v
ZGUKICBBUk06IGR0czogaW14NnNsbDogYWRkIHJuZwogIEFSTTogZHRzOiBpbXg2dWxsOiBhZGQg
cm5nCiAgaHdybmc6IGlteC1ybmdjOiBlbmFibGUgZHJpdmVyIGZvciBpLk1YNgoKIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZzbC5kdHNpICB8IDIgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZzbGwu
ZHRzaSB8IDcgKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC5kdHNpIHwgNyArKysr
KysrCiBkcml2ZXJzL2NoYXIvaHdfcmFuZG9tL0tjb25maWcgfCAyICstCiA0IGZpbGVzIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoyLjE3LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
