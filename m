Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E7016A676
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:51:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cHHKQffp9tYeflITmszq6ZQXHyc8Ehw0LbF1HpHXiIs=; b=bVWjSI5WRxNiNQ
	ZEJ0UbH12d417EtoHlmz9nfzrENC/PmMb9gac1TzkmwkiXerpLaDFCaxR1lakLkEgx+4QzhitUh0s
	beXA8TkcGa9rKKz4/VIN9vdGrgzXvqtTHJPJV6TIXSHHK3VmZiKOkxTFX9ETanXJ6a6owA6hbqZMF
	1Y5rl1dpBA1e5kZPCYPWAJhseDWnyyOzhme4kVdOCtP6CgC4T8SBH9/8aZfawz+oByfeAzNgYeHeG
	e/hJc3cIYDDeReaFxBm5hPdD2bPfKcu7LCYLheWNLhnqC3pIkVJx5JBL7aXSrDYRUXD6Pd7YkKuIe
	sHEOrkkebYWhPymNkdZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DCq-0006bu-Uk; Mon, 24 Feb 2020 12:51:28 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DCi-0006aS-Kb
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:51:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 276CB1AECE6;
 Mon, 24 Feb 2020 13:51:17 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B0351AECE0;
 Mon, 24 Feb 2020 13:51:17 +0100 (CET)
Received: from fsr-ub1864-014.ea.freescale.net
 (fsr-ub1864-014.ea.freescale.net [10.171.95.219])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 7E781203CB;
 Mon, 24 Feb 2020 13:51:16 +0100 (CET)
From: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] arm64: dts: imx8mp: add crypto node
Date: Mon, 24 Feb 2020 14:50:23 +0200
Message-Id: <20200224125023.29780-1-horia.geanta@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_045120_817541_D3383AB2 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Anson Huang <Anson.Huang@nxp.com>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIG5vZGUgZm9yIENBQU0gLSBDcnlwdG9ncmFwaGljIEFjY2VsZXJhdGlvbiBhbmQgQXNzdXJh
bmNlIE1vZHVsZS4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBu
eHAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwg
MzAgKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQppbmRleCA2MWNm
MzczYWQyNjguLmJlZTE3MGJkMjgyYSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvaW14OG1wLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1wLmR0c2kKQEAgLTQ0Myw2ICs0NDMsMzYgQEAKIAkJCQlzdGF0dXMgPSAiZGlzYWJsZWQi
OwogCQkJfTsKIAorCQkJY3J5cHRvOiBjcnlwdG9AMzA5MDAwMDAgeworCQkJCWNvbXBhdGlibGUg
PSAiZnNsLHNlYy12NC4wIjsKKwkJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKKwkJCQkjc2l6ZS1j
ZWxscyA9IDwxPjsKKwkJCQlyZWcgPSA8MHgzMDkwMDAwMCAweDQwMDAwPjsKKwkJCQlyYW5nZXMg
PSA8MCAweDMwOTAwMDAwIDB4NDAwMDA+OworCQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA5MSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQljbG9ja3MgPSA8JmNsayBJTVg4TVBfQ0xLX0FIQj4s
CisJCQkJCSA8JmNsayBJTVg4TVBfQ0xLX0lQR19ST09UPjsKKwkJCQljbG9jay1uYW1lcyA9ICJh
Y2xrIiwgImlwZyI7CisKKwkJCQlzZWNfanIwOiBqckAxMDAwIHsKKwkJCQkJY29tcGF0aWJsZSA9
ICJmc2wsc2VjLXY0LjAtam9iLXJpbmciOworCQkJCQlyZWcgPSA8MHgxMDAwIDB4MTAwMD47CisJ
CQkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMDUgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQkJ
fTsKKworCQkJCXNlY19qcjE6IGpyQDIwMDAgeworCQkJCQljb21wYXRpYmxlID0gImZzbCxzZWMt
djQuMC1qb2ItcmluZyI7CisJCQkJCXJlZyA9IDwweDIwMDAgMHgxMDAwPjsKKwkJCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDEwNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCQl9OworCisJCQkJ
c2VjX2pyMjoganJAMzAwMCB7CisJCQkJCWNvbXBhdGlibGUgPSAiZnNsLHNlYy12NC4wLWpvYi1y
aW5nIjsKKwkJCQkJcmVnID0gPDB4MzAwMCAweDEwMDA+OworCQkJCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTE0IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJCX07CisJCQl9OworCiAJCQlpMmMx
OiBpMmNAMzBhMjAwMDAgewogCQkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDhtcC1pMmMiLCAiZnNs
LGlteDIxLWkyYyI7CiAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Ci0tIAoyLjE3LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
