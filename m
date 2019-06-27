Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A2558066
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5pYwfLpQhzaavd9iwDJd/dCB/3Nn/F6gqjoVGbzQuQQ=; b=OZr
	GsfFZQ76L4BuPDJAkys0znY4h+LiOENPs1w/nBw/a8FCSMZoQcWGS11Dnhnmh5m+PhWTpAd3cBy/h
	fExn52D3FTCI6viZ+53egEvMG0qMN/d579vp6YfkyAd5kmPgoKBerIO/d3jocGq1yEGmORvbOyA8j
	By/gYFLqlG6sIYtztFqIf2SaizUt/57oi/VUUBq5rdO+Pn7zR/LQEAdGq9yRMHbOaqwmkzJgum5z5
	z8BhVzE2jFOvsUtNQIyuD1nJTq1nup5A5MATAk9221kOQo2j2ELfRi4EaXW2ZxHWW9aewUPGS/sBe
	mHoTaTyyyATugreqSGG6IS6mzgHkZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRes-000541-Jm; Thu, 27 Jun 2019 10:29:38 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRdb-0004Cx-RJ; Thu, 27 Jun 2019 10:28:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 86600200BAD;
 Thu, 27 Jun 2019 12:28:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C497200BA3;
 Thu, 27 Jun 2019 12:28:12 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D5D34030D;
 Thu, 27 Jun 2019 18:28:07 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org
Subject: [Patch v2] drivers: mtd: spi-nor: Add flash property for mt25qu512a
 and mt35xu02g
Date: Thu, 27 Jun 2019 15:58:03 +0530
Message-Id: <1561631283-30937-1-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_032820_054462_319A7FBE 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
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
Cc: bbrezillon@kernel.org, Kuldeep Singh <kuldeep.singh@nxp.com>,
 Ashish Kumar <ashish.kumar@nxp.com>, broonie@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ashish Kumar <ashish.kumar@nxp.com>

mt25qu512a is rebranded after its spinoff from STM, so it is
different only in term of extended jedec ID, initial JEDEC id
is same as that of n25q512a.In order to avoid any confussion 
with respect to name new entry is added.
This flash is tested for Single I/O mode on LS1046FRWY although
it does support QUAD I/O.

mt35xu02g is Octal flash supporting Single I/O and QCTAL I/O
and has been tested on LS1028ARDB

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
---
V2:
Re-work based on review comments from Vignesh R

 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7..34e33a7 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1880,6 +1880,7 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
+	{ "mt25qu512a", INFO6(0x20bb20, 0x104400, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_4B_OPCODES) },
 	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 
 	/* Micron */
@@ -1888,6 +1889,7 @@ static const struct flash_info spi_nor_ids[] = {
 			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			SPI_NOR_4B_OPCODES)
 	},
+	{ "mt35xu02g",   INFO(0x2c5b1c, 0, 128 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ | SPI_NOR_4B_OPCODES) },
 
 	/* PMC */
 	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
