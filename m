Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E626172FFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 05:41:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PibxwOk/IzI5cUMbp5MXKCsPFldx+7fBtXWAysxgTEk=; b=LJrJWLzu24RsZK
	Y0zYW2ALk0DpvBxUA/y7B3l6+NylHReYlQ97cRxSrEqinuWlKb8UAthBQhhqd9DipTXKu4+8h+CqR
	TOGvVHHV12ivG5zCzP3wLRhOahKtTf/DPzEhUf8VX1+7aV2b2/VkklLtjPX4Vv4x2XrcChC3+eJRl
	9+udeq1McaDxsoSuhSCIyXWlt6ITwttPsKcCiybmmQv6qmmGn0SWoph99dvWKyke9t+RZjZzvf+Xn
	MCWGPm5RdBDQD+VYnVAK0KClr0HlpiVHR6jSqmPjavA7R7YKV7u+Ywm90XorQzJuv9x25YSkMEhpq
	/v3k4d1FQHnBmsVSqE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XT0-0003wo-V9; Fri, 28 Feb 2020 04:41:39 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7XQw-0000u4-5P; Fri, 28 Feb 2020 04:39:32 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m13so755286pjb.2;
 Thu, 27 Feb 2020 20:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ma09tkFkj27OqfLt4R7Gcmofb1OCRjcq0sv9nLBPV90=;
 b=NySOPS0wW2x+VSCIJ6uLe42x7Ik8OwVUzB9ve7oER4pw1hGBR5uhvOSbiPm7LiHCb8
 biIdWIOp3e4cwgQrHEFQm5YK2Ihvvo2YSvlAwwd8QqEijC1JQW8+GYK80aLh8oYVoRUI
 gCm4QkA0ngoIiTG0XBRePnXhZUXna1O9sEi4VKPttfLyPV44sADoDXcxrZdlQpasLYly
 f2hzj/6w9ia2B1DU8OEZPYOi2xuioizi3dR6HqZwfW/OcyaqPJriXr3Ng2liqaikun7W
 rltg0AlqweXQEZYo1fND82bdY7MgIDgG0BiUN/ovEpaZgt5yKJezLKuK1b7oCqogxJES
 PFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ma09tkFkj27OqfLt4R7Gcmofb1OCRjcq0sv9nLBPV90=;
 b=NWVl96yWCyeUq93Ak6hmg4OuUIqyYBXrU26KjUN8rL2KhOFrCvVsGO9YYoACnc7ynf
 41S0xhzHv8g/BTDrKFeSegigChI1/n2Wcpf7XPlfWFoCB44PZgh/gW19PZVD9hgzTEEq
 LOWzXv34zPKOGl6nRCe+mLUxdiQGqgY1YOWoyRgo43J2cumfJOAQvzWhyxr1tsEl9RyU
 ggk0oiY6+CMe5eySkoVbQ2LVj1GfYsWQMDzOWgskCVVCeE2NPNUkTUbvc9EddQzk5AzM
 Khki//K29yJORlm/McJG6oVp21DlRS8/Xm5PaU+tVLFeOpQg/jptP3++5E4RcA6IKDsK
 Wimg==
X-Gm-Message-State: APjAAAWKAV1vbzosnS21WjxY2di4saHN+0lc0nt5oHjwZKM8yr8qr1kk
 qMf+LIaPDwjgBJyxtUWKa6cgA+5AkoHq1vVd
X-Google-Smtp-Source: APXvYqxvB7pyQ7MhmIQU8wWyHHpVU0M4HIJLNgyg0vbMeSWwANTU7b1sk20hnkyOgYyAybdsfAIrDw==
X-Received: by 2002:a17:90a:7187:: with SMTP id i7mr2548081pjk.6.1582864767422; 
 Thu, 27 Feb 2020 20:39:27 -0800 (PST)
Received: from localhost.localdomain ([240e:379:962:6595:7b84:9990:1a82:371c])
 by smtp.gmail.com with ESMTPSA id
 196sm9069047pfy.86.2020.02.27.20.39.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 20:39:26 -0800 (PST)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-mediatek@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] mtd: spi-nor: remove mtk-quadspi driver
Date: Fri, 28 Feb 2020 12:36:36 +0800
Message-Id: <20200228043636.559915-5-gch981213@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200228043636.559915-1-gch981213@gmail.com>
References: <20200228043636.559915-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_203930_253499_0BAC015B 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Mark Brown <broonie@kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver is superseded by the new spi-mtk-nor driver.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
Change since v1:
 new commit

 drivers/mtd/spi-nor/Kconfig       |   8 -
 drivers/mtd/spi-nor/Makefile      |   1 -
 drivers/mtd/spi-nor/mtk-quadspi.c | 565 ------------------------------
 3 files changed, 574 deletions(-)
 delete mode 100644 drivers/mtd/spi-nor/mtk-quadspi.c

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index c1eda67d1ad2..267b9000782e 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -52,14 +52,6 @@ config SPI_HISI_SFC
 	help
 	  This enables support for HiSilicon FMC SPI-NOR flash controller.
 
-config SPI_MTK_QUADSPI
-	tristate "MediaTek Quad SPI controller"
-	depends on HAS_IOMEM
-	help
-	  This enables support for the Quad SPI controller in master mode.
-	  This controller does not support generic SPI. It only supports
-	  SPI NOR.
-
 config SPI_NXP_SPIFI
 	tristate "NXP SPI Flash Interface (SPIFI)"
 	depends on OF && (ARCH_LPC18XX || COMPILE_TEST)
diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 9c5ed03cdc19..738dfd74cf76 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -3,7 +3,6 @@ obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
 obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
 obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
 obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
-obj-$(CONFIG_SPI_MTK_QUADSPI)    += mtk-quadspi.o
 obj-$(CONFIG_SPI_NXP_SPIFI)	+= nxp-spifi.o
 obj-$(CONFIG_SPI_INTEL_SPI)	+= intel-spi.o
 obj-$(CONFIG_SPI_INTEL_SPI_PCI)	+= intel-spi-pci.o
diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
deleted file mode 100644
index b1691680d174..000000000000
--- a/drivers/mtd/spi-nor/mtk-quadspi.c
+++ /dev/null
@@ -1,565 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2015 MediaTek Inc.
- * Author: Bayi Cheng <bayi.cheng@mediatek.com>
- */
-
-#include <linux/clk.h>
-#include <linux/delay.h>
-#include <linux/device.h>
-#include <linux/init.h>
-#include <linux/io.h>
-#include <linux/iopoll.h>
-#include <linux/ioport.h>
-#include <linux/math64.h>
-#include <linux/module.h>
-#include <linux/mutex.h>
-#include <linux/of.h>
-#include <linux/of_device.h>
-#include <linux/platform_device.h>
-#include <linux/slab.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/partitions.h>
-#include <linux/mtd/spi-nor.h>
-
-#define MTK_NOR_CMD_REG			0x00
-#define MTK_NOR_CNT_REG			0x04
-#define MTK_NOR_RDSR_REG		0x08
-#define MTK_NOR_RDATA_REG		0x0c
-#define MTK_NOR_RADR0_REG		0x10
-#define MTK_NOR_RADR1_REG		0x14
-#define MTK_NOR_RADR2_REG		0x18
-#define MTK_NOR_WDATA_REG		0x1c
-#define MTK_NOR_PRGDATA0_REG		0x20
-#define MTK_NOR_PRGDATA1_REG		0x24
-#define MTK_NOR_PRGDATA2_REG		0x28
-#define MTK_NOR_PRGDATA3_REG		0x2c
-#define MTK_NOR_PRGDATA4_REG		0x30
-#define MTK_NOR_PRGDATA5_REG		0x34
-#define MTK_NOR_SHREG0_REG		0x38
-#define MTK_NOR_SHREG1_REG		0x3c
-#define MTK_NOR_SHREG2_REG		0x40
-#define MTK_NOR_SHREG3_REG		0x44
-#define MTK_NOR_SHREG4_REG		0x48
-#define MTK_NOR_SHREG5_REG		0x4c
-#define MTK_NOR_SHREG6_REG		0x50
-#define MTK_NOR_SHREG7_REG		0x54
-#define MTK_NOR_SHREG8_REG		0x58
-#define MTK_NOR_SHREG9_REG		0x5c
-#define MTK_NOR_CFG1_REG		0x60
-#define MTK_NOR_CFG2_REG		0x64
-#define MTK_NOR_CFG3_REG		0x68
-#define MTK_NOR_STATUS0_REG		0x70
-#define MTK_NOR_STATUS1_REG		0x74
-#define MTK_NOR_STATUS2_REG		0x78
-#define MTK_NOR_STATUS3_REG		0x7c
-#define MTK_NOR_FLHCFG_REG		0x84
-#define MTK_NOR_TIME_REG		0x94
-#define MTK_NOR_PP_DATA_REG		0x98
-#define MTK_NOR_PREBUF_STUS_REG		0x9c
-#define MTK_NOR_DELSEL0_REG		0xa0
-#define MTK_NOR_DELSEL1_REG		0xa4
-#define MTK_NOR_INTRSTUS_REG		0xa8
-#define MTK_NOR_INTREN_REG		0xac
-#define MTK_NOR_CHKSUM_CTL_REG		0xb8
-#define MTK_NOR_CHKSUM_REG		0xbc
-#define MTK_NOR_CMD2_REG		0xc0
-#define MTK_NOR_WRPROT_REG		0xc4
-#define MTK_NOR_RADR3_REG		0xc8
-#define MTK_NOR_DUAL_REG		0xcc
-#define MTK_NOR_DELSEL2_REG		0xd0
-#define MTK_NOR_DELSEL3_REG		0xd4
-#define MTK_NOR_DELSEL4_REG		0xd8
-
-/* commands for mtk nor controller */
-#define MTK_NOR_READ_CMD		0x0
-#define MTK_NOR_RDSR_CMD		0x2
-#define MTK_NOR_PRG_CMD			0x4
-#define MTK_NOR_WR_CMD			0x10
-#define MTK_NOR_PIO_WR_CMD		0x90
-#define MTK_NOR_WRSR_CMD		0x20
-#define MTK_NOR_PIO_READ_CMD		0x81
-#define MTK_NOR_WR_BUF_ENABLE		0x1
-#define MTK_NOR_WR_BUF_DISABLE		0x0
-#define MTK_NOR_ENABLE_SF_CMD		0x30
-#define MTK_NOR_DUAD_ADDR_EN		0x8
-#define MTK_NOR_QUAD_READ_EN		0x4
-#define MTK_NOR_DUAL_ADDR_EN		0x2
-#define MTK_NOR_DUAL_READ_EN		0x1
-#define MTK_NOR_DUAL_DISABLE		0x0
-#define MTK_NOR_FAST_READ		0x1
-
-#define SFLASH_WRBUF_SIZE		128
-
-/* Can shift up to 48 bits (6 bytes) of TX/RX */
-#define MTK_NOR_MAX_RX_TX_SHIFT		6
-/* can shift up to 56 bits (7 bytes) transfer by MTK_NOR_PRG_CMD */
-#define MTK_NOR_MAX_SHIFT		7
-/* nor controller 4-byte address mode enable bit */
-#define MTK_NOR_4B_ADDR_EN		BIT(4)
-
-/* Helpers for accessing the program data / shift data registers */
-#define MTK_NOR_PRG_REG(n)		(MTK_NOR_PRGDATA0_REG + 4 * (n))
-#define MTK_NOR_SHREG(n)		(MTK_NOR_SHREG0_REG + 4 * (n))
-
-struct mtk_nor {
-	struct spi_nor nor;
-	struct device *dev;
-	void __iomem *base;	/* nor flash base address */
-	struct clk *spi_clk;
-	struct clk *nor_clk;
-};
-
-static void mtk_nor_set_read_mode(struct mtk_nor *mtk_nor)
-{
-	struct spi_nor *nor = &mtk_nor->nor;
-
-	switch (nor->read_proto) {
-	case SNOR_PROTO_1_1_1:
-		writeb(nor->read_opcode, mtk_nor->base +
-		       MTK_NOR_PRGDATA3_REG);
-		writeb(MTK_NOR_FAST_READ, mtk_nor->base +
-		       MTK_NOR_CFG1_REG);
-		break;
-	case SNOR_PROTO_1_1_2:
-		writeb(nor->read_opcode, mtk_nor->base +
-		       MTK_NOR_PRGDATA3_REG);
-		writeb(MTK_NOR_DUAL_READ_EN, mtk_nor->base +
-		       MTK_NOR_DUAL_REG);
-		break;
-	case SNOR_PROTO_1_1_4:
-		writeb(nor->read_opcode, mtk_nor->base +
-		       MTK_NOR_PRGDATA4_REG);
-		writeb(MTK_NOR_QUAD_READ_EN, mtk_nor->base +
-		       MTK_NOR_DUAL_REG);
-		break;
-	default:
-		writeb(MTK_NOR_DUAL_DISABLE, mtk_nor->base +
-		       MTK_NOR_DUAL_REG);
-		break;
-	}
-}
-
-static int mtk_nor_execute_cmd(struct mtk_nor *mtk_nor, u8 cmdval)
-{
-	int reg;
-	u8 val = cmdval & 0x1f;
-
-	writeb(cmdval, mtk_nor->base + MTK_NOR_CMD_REG);
-	return readl_poll_timeout(mtk_nor->base + MTK_NOR_CMD_REG, reg,
-				  !(reg & val), 100, 10000);
-}
-
-static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
-			    const u8 *tx, size_t txlen, u8 *rx, size_t rxlen)
-{
-	size_t len = 1 + txlen + rxlen;
-	int i, ret, idx;
-
-	if (len > MTK_NOR_MAX_SHIFT)
-		return -EINVAL;
-
-	writeb(len * 8, mtk_nor->base + MTK_NOR_CNT_REG);
-
-	/* start at PRGDATA5, go down to PRGDATA0 */
-	idx = MTK_NOR_MAX_RX_TX_SHIFT - 1;
-
-	/* opcode */
-	writeb(op, mtk_nor->base + MTK_NOR_PRG_REG(idx));
-	idx--;
-
-	/* program TX data */
-	for (i = 0; i < txlen; i++, idx--)
-		writeb(tx[i], mtk_nor->base + MTK_NOR_PRG_REG(idx));
-
-	/* clear out rest of TX registers */
-	while (idx >= 0) {
-		writeb(0, mtk_nor->base + MTK_NOR_PRG_REG(idx));
-		idx--;
-	}
-
-	ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PRG_CMD);
-	if (ret)
-		return ret;
-
-	/* restart at first RX byte */
-	idx = rxlen - 1;
-
-	/* read out RX data */
-	for (i = 0; i < rxlen; i++, idx--)
-		rx[i] = readb(mtk_nor->base + MTK_NOR_SHREG(idx));
-
-	return 0;
-}
-
-/* Do a WRSR (Write Status Register) command */
-static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, const u8 sr)
-{
-	writeb(sr, mtk_nor->base + MTK_NOR_PRGDATA5_REG);
-	writeb(8, mtk_nor->base + MTK_NOR_CNT_REG);
-	return mtk_nor_execute_cmd(mtk_nor, MTK_NOR_WRSR_CMD);
-}
-
-static int mtk_nor_write_buffer_enable(struct mtk_nor *mtk_nor)
-{
-	u8 reg;
-
-	/* the bit0 of MTK_NOR_CFG2_REG is pre-fetch buffer
-	 * 0: pre-fetch buffer use for read
-	 * 1: pre-fetch buffer use for page program
-	 */
-	writel(MTK_NOR_WR_BUF_ENABLE, mtk_nor->base + MTK_NOR_CFG2_REG);
-	return readb_poll_timeout(mtk_nor->base + MTK_NOR_CFG2_REG, reg,
-				  0x01 == (reg & 0x01), 100, 10000);
-}
-
-static int mtk_nor_write_buffer_disable(struct mtk_nor *mtk_nor)
-{
-	u8 reg;
-
-	writel(MTK_NOR_WR_BUF_DISABLE, mtk_nor->base + MTK_NOR_CFG2_REG);
-	return readb_poll_timeout(mtk_nor->base + MTK_NOR_CFG2_REG, reg,
-				  MTK_NOR_WR_BUF_DISABLE == (reg & 0x1), 100,
-				  10000);
-}
-
-static void mtk_nor_set_addr_width(struct mtk_nor *mtk_nor)
-{
-	u8 val;
-	struct spi_nor *nor = &mtk_nor->nor;
-
-	val = readb(mtk_nor->base + MTK_NOR_DUAL_REG);
-
-	switch (nor->addr_width) {
-	case 3:
-		val &= ~MTK_NOR_4B_ADDR_EN;
-		break;
-	case 4:
-		val |= MTK_NOR_4B_ADDR_EN;
-		break;
-	default:
-		dev_warn(mtk_nor->dev, "Unexpected address width %u.\n",
-			 nor->addr_width);
-		break;
-	}
-
-	writeb(val, mtk_nor->base + MTK_NOR_DUAL_REG);
-}
-
-static void mtk_nor_set_addr(struct mtk_nor *mtk_nor, u32 addr)
-{
-	int i;
-
-	mtk_nor_set_addr_width(mtk_nor);
-
-	for (i = 0; i < 3; i++) {
-		writeb(addr & 0xff, mtk_nor->base + MTK_NOR_RADR0_REG + i * 4);
-		addr >>= 8;
-	}
-	/* Last register is non-contiguous */
-	writeb(addr & 0xff, mtk_nor->base + MTK_NOR_RADR3_REG);
-}
-
-static ssize_t mtk_nor_read(struct spi_nor *nor, loff_t from, size_t length,
-			    u_char *buffer)
-{
-	int i, ret;
-	int addr = (int)from;
-	u8 *buf = (u8 *)buffer;
-	struct mtk_nor *mtk_nor = nor->priv;
-
-	/* set mode for fast read mode ,dual mode or quad mode */
-	mtk_nor_set_read_mode(mtk_nor);
-	mtk_nor_set_addr(mtk_nor, addr);
-
-	for (i = 0; i < length; i++) {
-		ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_READ_CMD);
-		if (ret < 0)
-			return ret;
-		buf[i] = readb(mtk_nor->base + MTK_NOR_RDATA_REG);
-	}
-	return length;
-}
-
-static int mtk_nor_write_single_byte(struct mtk_nor *mtk_nor,
-				     int addr, int length, u8 *data)
-{
-	int i, ret;
-
-	mtk_nor_set_addr(mtk_nor, addr);
-
-	for (i = 0; i < length; i++) {
-		writeb(*data++, mtk_nor->base + MTK_NOR_WDATA_REG);
-		ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_PIO_WR_CMD);
-		if (ret < 0)
-			return ret;
-	}
-	return 0;
-}
-
-static int mtk_nor_write_buffer(struct mtk_nor *mtk_nor, int addr,
-				const u8 *buf)
-{
-	int i, bufidx, data;
-
-	mtk_nor_set_addr(mtk_nor, addr);
-
-	bufidx = 0;
-	for (i = 0; i < SFLASH_WRBUF_SIZE; i += 4) {
-		data = buf[bufidx + 3]<<24 | buf[bufidx + 2]<<16 |
-		       buf[bufidx + 1]<<8 | buf[bufidx];
-		bufidx += 4;
-		writel(data, mtk_nor->base + MTK_NOR_PP_DATA_REG);
-	}
-	return mtk_nor_execute_cmd(mtk_nor, MTK_NOR_WR_CMD);
-}
-
-static ssize_t mtk_nor_write(struct spi_nor *nor, loff_t to, size_t len,
-			     const u_char *buf)
-{
-	int ret;
-	struct mtk_nor *mtk_nor = nor->priv;
-	size_t i;
-
-	ret = mtk_nor_write_buffer_enable(mtk_nor);
-	if (ret < 0) {
-		dev_warn(mtk_nor->dev, "write buffer enable failed!\n");
-		return ret;
-	}
-
-	for (i = 0; i + SFLASH_WRBUF_SIZE <= len; i += SFLASH_WRBUF_SIZE) {
-		ret = mtk_nor_write_buffer(mtk_nor, to, buf);
-		if (ret < 0) {
-			dev_err(mtk_nor->dev, "write buffer failed!\n");
-			return ret;
-		}
-		to += SFLASH_WRBUF_SIZE;
-		buf += SFLASH_WRBUF_SIZE;
-	}
-	ret = mtk_nor_write_buffer_disable(mtk_nor);
-	if (ret < 0) {
-		dev_warn(mtk_nor->dev, "write buffer disable failed!\n");
-		return ret;
-	}
-
-	if (i < len) {
-		ret = mtk_nor_write_single_byte(mtk_nor, to,
-						(int)(len - i), (u8 *)buf);
-		if (ret < 0) {
-			dev_err(mtk_nor->dev, "write single byte failed!\n");
-			return ret;
-		}
-	}
-
-	return len;
-}
-
-static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
-{
-	int ret;
-	struct mtk_nor *mtk_nor = nor->priv;
-
-	switch (opcode) {
-	case SPINOR_OP_RDSR:
-		ret = mtk_nor_execute_cmd(mtk_nor, MTK_NOR_RDSR_CMD);
-		if (ret < 0)
-			return ret;
-		if (len == 1)
-			*buf = readb(mtk_nor->base + MTK_NOR_RDSR_REG);
-		else
-			dev_err(mtk_nor->dev, "len should be 1 for read status!\n");
-		break;
-	default:
-		ret = mtk_nor_do_tx_rx(mtk_nor, opcode, NULL, 0, buf, len);
-		break;
-	}
-	return ret;
-}
-
-static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
-			     size_t len)
-{
-	int ret;
-	struct mtk_nor *mtk_nor = nor->priv;
-
-	switch (opcode) {
-	case SPINOR_OP_WRSR:
-		/* We only handle 1 byte */
-		ret = mtk_nor_wr_sr(mtk_nor, *buf);
-		break;
-	default:
-		ret = mtk_nor_do_tx_rx(mtk_nor, opcode, buf, len, NULL, 0);
-		if (ret)
-			dev_warn(mtk_nor->dev, "write reg failure!\n");
-		break;
-	}
-	return ret;
-}
-
-static void mtk_nor_disable_clk(struct mtk_nor *mtk_nor)
-{
-	clk_disable_unprepare(mtk_nor->spi_clk);
-	clk_disable_unprepare(mtk_nor->nor_clk);
-}
-
-static int mtk_nor_enable_clk(struct mtk_nor *mtk_nor)
-{
-	int ret;
-
-	ret = clk_prepare_enable(mtk_nor->spi_clk);
-	if (ret)
-		return ret;
-
-	ret = clk_prepare_enable(mtk_nor->nor_clk);
-	if (ret) {
-		clk_disable_unprepare(mtk_nor->spi_clk);
-		return ret;
-	}
-
-	return 0;
-}
-
-static const struct spi_nor_controller_ops mtk_controller_ops = {
-	.read_reg = mtk_nor_read_reg,
-	.write_reg = mtk_nor_write_reg,
-	.read = mtk_nor_read,
-	.write = mtk_nor_write,
-};
-
-static int mtk_nor_init(struct mtk_nor *mtk_nor,
-			struct device_node *flash_node)
-{
-	const struct spi_nor_hwcaps hwcaps = {
-		.mask = SNOR_HWCAPS_READ |
-			SNOR_HWCAPS_READ_FAST |
-			SNOR_HWCAPS_READ_1_1_2 |
-			SNOR_HWCAPS_PP,
-	};
-	int ret;
-	struct spi_nor *nor;
-
-	/* initialize controller to accept commands */
-	writel(MTK_NOR_ENABLE_SF_CMD, mtk_nor->base + MTK_NOR_WRPROT_REG);
-
-	nor = &mtk_nor->nor;
-	nor->dev = mtk_nor->dev;
-	nor->priv = mtk_nor;
-	spi_nor_set_flash_node(nor, flash_node);
-	nor->controller_ops = &mtk_controller_ops;
-
-	nor->mtd.name = "mtk_nor";
-	/* initialized with NULL */
-	ret = spi_nor_scan(nor, NULL, &hwcaps);
-	if (ret)
-		return ret;
-
-	return mtd_device_register(&nor->mtd, NULL, 0);
-}
-
-static int mtk_nor_drv_probe(struct platform_device *pdev)
-{
-	struct device_node *flash_np;
-	struct resource *res;
-	int ret;
-	struct mtk_nor *mtk_nor;
-
-	if (!pdev->dev.of_node) {
-		dev_err(&pdev->dev, "No DT found\n");
-		return -EINVAL;
-	}
-
-	mtk_nor = devm_kzalloc(&pdev->dev, sizeof(*mtk_nor), GFP_KERNEL);
-	if (!mtk_nor)
-		return -ENOMEM;
-	platform_set_drvdata(pdev, mtk_nor);
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mtk_nor->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(mtk_nor->base))
-		return PTR_ERR(mtk_nor->base);
-
-	mtk_nor->spi_clk = devm_clk_get(&pdev->dev, "spi");
-	if (IS_ERR(mtk_nor->spi_clk))
-		return PTR_ERR(mtk_nor->spi_clk);
-
-	mtk_nor->nor_clk = devm_clk_get(&pdev->dev, "sf");
-	if (IS_ERR(mtk_nor->nor_clk))
-		return PTR_ERR(mtk_nor->nor_clk);
-
-	mtk_nor->dev = &pdev->dev;
-
-	ret = mtk_nor_enable_clk(mtk_nor);
-	if (ret)
-		return ret;
-
-	/* only support one attached flash */
-	flash_np = of_get_next_available_child(pdev->dev.of_node, NULL);
-	if (!flash_np) {
-		dev_err(&pdev->dev, "no SPI flash device to configure\n");
-		ret = -ENODEV;
-		goto nor_free;
-	}
-	ret = mtk_nor_init(mtk_nor, flash_np);
-
-nor_free:
-	if (ret)
-		mtk_nor_disable_clk(mtk_nor);
-
-	return ret;
-}
-
-static int mtk_nor_drv_remove(struct platform_device *pdev)
-{
-	struct mtk_nor *mtk_nor = platform_get_drvdata(pdev);
-
-	mtk_nor_disable_clk(mtk_nor);
-
-	return 0;
-}
-
-#ifdef CONFIG_PM_SLEEP
-static int mtk_nor_suspend(struct device *dev)
-{
-	struct mtk_nor *mtk_nor = dev_get_drvdata(dev);
-
-	mtk_nor_disable_clk(mtk_nor);
-
-	return 0;
-}
-
-static int mtk_nor_resume(struct device *dev)
-{
-	struct mtk_nor *mtk_nor = dev_get_drvdata(dev);
-
-	return mtk_nor_enable_clk(mtk_nor);
-}
-
-static const struct dev_pm_ops mtk_nor_dev_pm_ops = {
-	.suspend = mtk_nor_suspend,
-	.resume = mtk_nor_resume,
-};
-
-#define MTK_NOR_DEV_PM_OPS	(&mtk_nor_dev_pm_ops)
-#else
-#define MTK_NOR_DEV_PM_OPS	NULL
-#endif
-
-static const struct of_device_id mtk_nor_of_ids[] = {
-	{ .compatible = "mediatek,mt8173-nor"},
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, mtk_nor_of_ids);
-
-static struct platform_driver mtk_nor_driver = {
-	.probe = mtk_nor_drv_probe,
-	.remove = mtk_nor_drv_remove,
-	.driver = {
-		.name = "mtk-nor",
-		.pm = MTK_NOR_DEV_PM_OPS,
-		.of_match_table = mtk_nor_of_ids,
-	},
-};
-
-module_platform_driver(mtk_nor_driver);
-MODULE_LICENSE("GPL v2");
-MODULE_DESCRIPTION("MediaTek SPI NOR Flash Driver");
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
