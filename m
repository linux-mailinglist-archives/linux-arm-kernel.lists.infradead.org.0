Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69EB134E3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YXAFbFNGyPEejYDGY+ZNRngJ0XPyWov+pTgH9AHQgyw=; b=GZqv3HCg2jiaz+ucx/thsDXP7d
	pFuZc6LDbGuE1wShN2gAlO44wOtMxMF8th+GFzmXwcP+zEHdoyIqQBJf5DgGTkVpSm+02aLNVKnFU
	UUahPWRV9lNSahq7buGme4WDDMNGtZWwuPtEHb2wN656p/aWdMjtov/rvmLXwV2xoME8GH1PQ/Omq
	EL6xcXBKmIIkpWgSOm51Dat+NPKOSER0aIHUqYT43m2esr5/ANRc+2Pi6Zedc7m4DtZghFMKKsbXc
	ckdljiGse242HHR7VaSvGUPj1oZVLe8gpIgG+C8jAEIQD0calaUQUtQ73tNLgTzJFO6iLM4Gz/wRG
	8BzmtZnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIQw-00044H-Qq; Wed, 08 Jan 2020 21:00:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIKt-0006M1-39; Wed, 08 Jan 2020 20:53:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so4944121wru.4;
 Wed, 08 Jan 2020 12:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uP6jsLQeGEfsCHafYKVV/ixb6eWXHIV7IstpyDkEbRE=;
 b=FUXW9eTMU8fw3svDRKtNNgFm8uNHbCgBwk3+eZjetoB6xQfx5oywF/Pj0Vdtfik0fV
 n7RAEl+3oVW8zi8JSb80De5so8e3kRb6iiucxZIYC+ODy13pBUtA/dnmNP/G+LwMpfDg
 rRSmPDWRsombjzWaH2TCIZFI7susBCpIKAsn8fpwPVuAPyQ2MvJ9PEG5pxd37hyW1/nj
 IdSw5j/5grWYW+UMM2GnDsY0/YjcK32Qz9ZHEaNX1vXw1w92z+g7+KHO0q5jJS1DnlGC
 nMFwhv0xUuu254xyMp7QaNtGE10vAfNLKeeuEhbOLsobPzIbI2vyS8yu+e2RX8kgJ/yB
 z04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uP6jsLQeGEfsCHafYKVV/ixb6eWXHIV7IstpyDkEbRE=;
 b=Z0uI4y0d25V81qMyzSjipd5EbbW6TSHw776FHujlm7Tjpmdrx6bLZWbVM5H3aak3Z+
 WdaIBdqwxOx3b1s12uWzv4jj5tlltmLUemMjWmnX48d68BqKVRc71IS3MoucvByelHzZ
 FsTaO2dIbaapc/xuBv7ccGZldX3HQkuNdkSEb89WukhSB/pbWQrmSm5LFa39EnIF5+H7
 H6LPMFacoWP6CAsWYuB2rt9bJ8/479jAv8xpNv6Zb/K0zuzhaWK14jaiLEx4w17NyNwH
 FBVDvX4BlvJpx/z9QsXE5DFcvMV2xcbvOE0PueTFHO8AwIz+IPzF2+KY7ephAppIkQDf
 2/SA==
X-Gm-Message-State: APjAAAXNBPISeNqUpOXQswYdtcU7soihDbo15+CSUCXQSqX9WQv9x0dq
 nV+xPX8a78Qzmz5RFBBWnUk=
X-Google-Smtp-Source: APXvYqxRZAXpE2E4HLHMF/IGFTkxXy/cDZmzH5qguQm9cHJ7oTjgVvjP3CDjFIrsNZpHYC5vZZrXQA==
X-Received: by 2002:adf:e5ca:: with SMTP id a10mr6685536wrn.347.1578516829016; 
 Wed, 08 Jan 2020 12:53:49 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:48 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 02/10] mtd: nand: raw: add rockchip nand controller
 driver
Date: Wed,  8 Jan 2020 21:53:30 +0100
Message-Id: <20200108205338.11369-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125351_220726_80340FA5 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yifeng Zhao <zyf@rock-chips.com>

Add basic Rockchip nand controller driver.

Compatible with hardware version 6 and 9.
V6:16, 24, 40, 60 per 1024B BCH/ECC.
V9:16, 40, 60, 70 per 1024B BCH/ECC.
8 bit asynchronous flash interface support.
Supports up to 2 identical nandc nodes.
Max 4 nand chips per controller.
Able to select a different hardware ecc setup
for the loader blocks.
No bad block support.

Signed-off-by: Yifeng Zhao <zyf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/mtd/nand/raw/Kconfig          |    8 +
 drivers/mtd/nand/raw/Makefile         |    1 +
 drivers/mtd/nand/raw/rockchip_nandc.c | 1224 +++++++++++++++++++++++++++++++++
 3 files changed, 1233 insertions(+)
 create mode 100644 drivers/mtd/nand/raw/rockchip_nandc.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 74fb91ade..68dc9a36d 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -457,6 +457,14 @@ config MTD_NAND_CADENCE
 	  Enable the driver for NAND flash on platforms using a Cadence NAND
 	  controller.
 
+config MTD_NAND_ROCKCHIP
+	tristate "Rockchip raw NAND controller driver"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  Enables support for the Rockchip raw NAND controller driver.
+	  This controller is found on rk3066, rk3188, rk3288 and more.
+
 comment "Misc"
 
 config MTD_SM_COMMON
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2d136b158..3063fe74a 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
 obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
 obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
 obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
+obj-$(CONFIG_MTD_NAND_ROCKCHIP)		+= rockchip_nandc.o
 
 nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
 nand-objs += nand_onfi.o
diff --git a/drivers/mtd/nand/raw/rockchip_nandc.c b/drivers/mtd/nand/raw/rockchip_nandc.c
new file mode 100644
index 000000000..018308e58
--- /dev/null
+++ b/drivers/mtd/nand/raw/rockchip_nandc.c
@@ -0,0 +1,1224 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on:
+ * https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/mtd/nand/
+ *         rockchip_nand_v6.c
+ * https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/mtd/nand/
+ *         rockchip_nand_v9.c
+ * Copyright (c) 2016-2019 Yifeng Zhao yifeng.zhao@rock-chips.com
+ *
+ * Update/restyle for linux-next.
+ * Add exec_op function.
+ * Combine driver for nandc version 6 and 9.
+ * Copyright (c) 2020 Johan Jonker jbx6244@gmail.com
+ */
+
+#include <linux/clk.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+
+#include <linux/mtd/rawnand.h>
+
+#define NANDC_ID_V600			0x56363030
+#define NANDC_ID_V622			0x56363232
+#define NANDC_ID_V701			0x701
+#define NANDC_ID_V800			0x56383030
+#define NANDC_ID_V801			0x801
+#define NANDC_ID_V900			0x56393030
+
+#define NANDC_IDBResBlkNum		16
+#define NANDC_IDBEccBits		24
+#define NANDC_IDBStartAddr		0
+
+#define NANDC_V6_ECC_16			0x00000000
+#define NANDC_V6_ECC_24			0x00000010
+#define NANDC_V6_ECC_40			0x00040000
+#define NANDC_V6_ECC_60			0x00040010
+
+#define NANDC_V9_ECC_16			0x02000001
+#define NANDC_V9_ECC_40			0x04000001
+#define NANDC_V9_ECC_60			0x06000001
+#define NANDC_V9_ECC_70			0x00000001
+
+#define NANDC_NUM_BANKS			4
+#define NANDC_DEF_TIMEOUT		10000
+
+#define NANDC_REG_DATA			0x00
+#define NANDC_REG_ADDR			0x04
+#define NANDC_REG_CMD			0x08
+
+/* register offset nandc version 6 */
+#define NANDC_REG_V6_FMCTL		0x00
+#define NANDC_REG_V6_FMWAIT		0x04
+#define NANDC_REG_V6_FLCTL		0x08
+#define NANDC_REG_V6_BCHCTL		0x0c
+#define NANDC_REG_V6_DMA_CFG		0x10
+#define NANDC_REG_V6_DMA_BUF0		0x14
+#define NANDC_REG_V6_DMA_BUF1		0x18
+#define NANDC_REG_V6_DMA_ST		0x1C
+#define NANDC_REG_V6_BCHST		0x20
+#define NANDC_REG_V6_RANDMZ		0x150
+#define NANDC_REG_V6_VER		0x160
+#define NANDC_REG_V6_INTEN		0x16C
+#define NANDC_REG_V6_INTCLR		0x170
+#define NANDC_REG_V6_INTST		0x174
+#define NANDC_REG_V6_SPARE0		0x200
+#define NANDC_REG_V6_SPARE1		0x230
+
+/* register offset nandc version 9 */
+#define NANDC_REG_V9_FMCTL		0x00
+#define NANDC_REG_V9_FMWAIT		0x04
+#define NANDC_REG_V9_FLCTL		0x10
+#define NANDC_REG_V9_BCHCTL		0x20
+#define NANDC_REG_V9_DMA_CFG		0x30
+#define NANDC_REG_V9_DMA_BUF0		0x34
+#define NANDC_REG_V9_DMA_BUF1		0x38
+#define NANDC_REG_V9_DMA_ST		0x40
+#define NANDC_REG_V9_VER		0x80
+#define NANDC_REG_V9_INTEN		0x120
+#define NANDC_REG_V9_INTCLR		0x124
+#define NANDC_REG_V9_INTST		0x128
+#define NANDC_REG_V9_BCHST		0x150
+#define NANDC_REG_V9_SPARE0		0x200
+#define NANDC_REG_V9_SPARE1		0x204
+#define NANDC_REG_V9_RANDMZ		0x208
+
+/* register offset nandc common */
+#define NANDC_REG_BANK0			0x800
+#define NANDC_REG_SRAM0			0x1000
+
+/* FMCTL */
+#define NANDC_V6_FM_WP			BIT(8)
+#define NANDC_V6_FM_CE_SEL_M		0xFF
+#define NANDC_V6_FM_CE_SEL(x)		(1 << (x))
+#define NANDC_V6_FM_FREADY		BIT(9)
+
+#define NANDC_V9_FM_WP			BIT(8)
+#define NANDC_V9_FM_CE_SEL_M		0xFF
+#define NANDC_V9_FM_CE_SEL(x)		(1 << (x))
+#define NANDC_V9_RDY			BIT(9)
+
+/* FLCTL */
+#define NANDC_V6_FL_RST			BIT(0)
+#define NANDC_V6_FL_DIR(x)		((x) ? BIT(1) : 0)
+#define NANDC_V6_FL_XFER_START		BIT(2)
+#define NANDC_V6_FL_XFER_EN		BIT(3)
+#define NANDC_V6_FL_ST_BUF_S		0x4
+#define NANDC_V6_FL_XFER_COUNT		BIT(5)
+#define NANDC_V6_FL_ACORRECT		BIT(10)
+#define NANDC_V6_FL_XFER_READY		BIT(20)
+#define NANDC_V6_FL_PAGE_NUM(x)		((x) << 22)
+#define NANDC_V6_FL_ASYNC_TOG_MIX	BIT(29)
+
+#define NANDC_V9_FL_RST			BIT(0)
+#define NANDC_V9_FL_DIR(x)		((x) ? BIT(1) : 0)
+#define NANDC_V9_FL_XFER_START		BIT(2)
+#define NANDC_V9_FL_XFER_EN		BIT(3)
+#define NANDC_V9_FL_ST_BUF_S		0x4
+#define NANDC_V9_FL_XFER_COUNT		BIT(5)
+#define NANDC_V9_FL_ACORRECT		BIT(10)
+#define NANDC_V9_FL_XFER_READY		BIT(20)
+#define NANDC_V9_FL_PAGE_NUM(x)		((x) << 22)
+#define NANDC_V9_FL_ASYNC_TOG_MIX	BIT(29)
+
+/* BCHCTL */
+#define NAND_V6_BCH_REGION_S		0x5
+#define NAND_V6_BCH_REGION_M		0x7
+
+#define NAND_V9_BCH_MODE_S		25
+#define NAND_V9_BCH_MODE_M		0x7
+
+/* BCHST */
+#define NANDC_V6_BCH0_ST_ERR		BIT(2)
+#define NANDC_V6_BCH1_ST_ERR		BIT(15)
+#define NANDC_V6_ECC_ERR_CNT0(x)	((((x & (0x1F << 3)) >> 3) \
+					| ((x & (1 << 27)) >> 22)) & 0x3F)
+#define NANDC_V6_ECC_ERR_CNT1(x)	((((x & (0x1F << 16)) >> 16) \
+					| ((x & (1 << 29)) >> 24)) & 0x3F)
+
+#define NANDC_V9_BCH0_ST_ERR		BIT(2)
+#define NANDC_V9_BCH1_ST_ERR		BIT(18)
+#define NANDC_V9_ECC_ERR_CNT0(x)	(((x) & (0x7F << 3)) >> 3)
+#define NANDC_V9_ECC_ERR_CNT1(x)	(((x) & (0x7F << 19)) >> 19)
+
+/* DMA_CFG */
+#define NANDC_V6_DMA_CFG_WR_ST		BIT(0)
+#define NANDC_V6_DMA_CFG_WR(x)		((!x) ? BIT(1) : 0)
+#define NANDC_V6_DMA_CFG_BUS_MODE	BIT(2)
+
+#define NANDC_V6_DMA_CFG_HSIZE_8	0
+#define NANDC_V6_DMA_CFG_HSIZE_16	(1 << 3)
+#define NANDC_V6_DMA_CFG_HSIZE_32	(2 << 3)
+
+#define NANDC_V6_DMA_CFG_BURST_1	0
+#define NANDC_V6_DMA_CFG_BURST_4	(3 << 6)
+#define NANDC_V6_DMA_CFG_BURST_8	(5 << 6)
+#define NANDC_V6_DMA_CFG_BURST_16	(7 << 6)
+
+#define NANDC_V6_DMA_CFG_INCR_NUM(x)	((x) << 9)
+
+#define NANDC_V9_DMA_CFG_WR_ST		BIT(0)
+#define NANDC_V9_DMA_CFG_WR(x)		((!x) ? BIT(1) : 0)
+#define NANDC_V9_DMA_CFG_BUS_MODE	BIT(2)
+
+#define NANDC_V9_DMA_CFG_HSIZE_8	0
+#define NANDC_V9_DMA_CFG_HSIZE_16	(1 << 3)
+#define NANDC_V9_DMA_CFG_HSIZE_32	(2 << 3)
+
+#define NANDC_V9_DMA_CFG_BURST_1	0
+#define NANDC_V9_DMA_CFG_BURST_4	(3 << 6)
+#define NANDC_V9_DMA_CFG_BURST_8	(5 << 6)
+#define NANDC_V9_DMA_CFG_BURST_16	(7 << 6)
+
+#define NANDC_V9_DMA_CFG_INCR_NUM(x)	((x) << 9)
+
+/* INTEN */
+#define NANDC_V6_INT_DMA		BIT(0)
+
+#define NANDC_V9_INT_DMA		BIT(0)
+
+enum rk_nandc_version {
+	VERSION_6 = 6,
+	VERSION_9 = 9,
+};
+
+struct rk_nandc_data {
+	enum rk_nandc_version version;
+};
+
+struct rk_nand_controller {
+	void __iomem *regs;
+	int irq;
+	struct clk *hclk;
+	struct clk *clk;
+	struct list_head chips;
+	struct completion complete;
+	struct nand_controller controller;
+	int banks[NANDC_NUM_BANKS];
+	bool bootromblocks;
+	int ecc_mode;
+	uint32_t ecc_strength;
+	int max_ecc_strength;
+	uint32_t *oob_buf;
+	uint32_t *page_buf;
+	int selected_bank;
+	enum rk_nandc_version version;
+};
+
+struct rk_nand_chip {
+	struct nand_chip nand;
+	struct list_head chip_list;
+};
+
+static struct rk_nand_controller g_nandc_info[2];
+static int g_id_counter;
+
+static void rk_nandc_init(struct rk_nand_controller *ctrl)
+{
+	if (ctrl->version == VERSION_9) {
+		writel(0, ctrl->regs + NANDC_REG_V9_RANDMZ);
+		writel(0, ctrl->regs + NANDC_REG_V9_DMA_CFG);
+		writel(NANDC_V9_FM_WP, ctrl->regs + NANDC_REG_V9_FMCTL);
+		writel(NANDC_V9_FL_RST, ctrl->regs + NANDC_REG_V9_FLCTL);
+		writel(0x1081, ctrl->regs + NANDC_REG_V9_FMWAIT);
+	} else {
+		writel(0, ctrl->regs + NANDC_REG_V6_RANDMZ);
+		writel(0, ctrl->regs + NANDC_REG_V6_DMA_CFG);
+		writel(NANDC_V6_FM_WP, ctrl->regs + NANDC_REG_V6_FMCTL);
+		writel(NANDC_V6_FL_RST, ctrl->regs + NANDC_REG_V6_FLCTL);
+		writel(0x1081, ctrl->regs + NANDC_REG_V6_FMWAIT);
+	}
+}
+
+static irqreturn_t rk_nandc_interrupt(int irq, void *dev_id)
+{
+	struct rk_nand_controller *ctrl = dev_id;
+
+	if (ctrl->version == VERSION_9) {
+		uint32_t st = readl(ctrl->regs + NANDC_REG_V9_INTST);
+		uint32_t ien = readl(ctrl->regs + NANDC_REG_V9_INTEN);
+
+		if (!(ien & st))
+			return IRQ_NONE;
+
+		if ((ien & st) == ien)
+			complete(&ctrl->complete);
+
+		writel(st, ctrl->regs + NANDC_REG_V9_INTCLR);
+		writel(~st & ien, ctrl->regs + NANDC_REG_V9_INTEN);
+	} else {
+		uint32_t st = readl(ctrl->regs + NANDC_REG_V6_INTST);
+		uint32_t ien = readl(ctrl->regs + NANDC_REG_V6_INTEN);
+
+		if (!(ien & st))
+			return IRQ_NONE;
+
+		if ((ien & st) == ien)
+			complete(&ctrl->complete);
+
+		writel(st, ctrl->regs + NANDC_REG_V6_INTCLR);
+		writel(~st & ien, ctrl->regs + NANDC_REG_V6_INTEN);
+	}
+
+	return IRQ_HANDLED;
+}
+
+static void rk_nandc_select_chip(struct nand_chip *nand, int chipnr)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	uint32_t reg;
+	int banknr;
+
+	/* The register offset and bit positions for
+	 * NANDC_REG_V6_FMCTL and NANDC_REG_V9_FMCTL
+	 * are identical.
+	 */
+	reg = readl(ctrl->regs + NANDC_REG_V6_FMCTL);
+	reg &= ~NANDC_V6_FM_CE_SEL_M;
+
+	if (chipnr == -1) {
+		banknr = -1;
+	} else {
+		banknr = ctrl->banks[chipnr];
+
+		reg |= NANDC_V6_FM_CE_SEL(banknr);
+	}
+	writel(reg, ctrl->regs + NANDC_REG_V6_FMCTL);
+
+	ctrl->selected_bank = banknr;
+}
+
+static int rk_nandc_hw_ecc_setup(struct nand_chip *nand,
+				 uint32_t strength)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	uint32_t reg;
+
+	nand->ecc.strength = strength;
+	nand->ecc.bytes = DIV_ROUND_UP(nand->ecc.strength * 14, 8);
+	/* HW ECC only works with an even number of ECC bytes */
+	nand->ecc.bytes = ALIGN(nand->ecc.bytes, 2);
+
+	if (ctrl->version == VERSION_9) {
+		switch (nand->ecc.strength) {
+		case 70:
+			reg = NANDC_V9_ECC_70;
+			break;
+		case 60:
+			reg = NANDC_V9_ECC_60;
+			break;
+		case 40:
+			reg = NANDC_V9_ECC_40;
+			break;
+		case 16:
+			reg = NANDC_V9_ECC_16;
+			break;
+		default:
+			return -EINVAL;
+		}
+		writel(reg, ctrl->regs + NANDC_REG_V9_BCHCTL);
+	} else {
+		switch (nand->ecc.strength) {
+		case 60:
+			reg = NANDC_V6_ECC_60;
+			break;
+		case 40:
+			reg = NANDC_V6_ECC_40;
+			break;
+		case 24:
+			reg = NANDC_V6_ECC_24;
+			break;
+		case 16:
+			reg = NANDC_V6_ECC_16;
+			break;
+		default:
+			return -EINVAL;
+		}
+		writel(reg, ctrl->regs + NANDC_REG_V6_BCHCTL);
+	}
+
+	return 0;
+}
+
+static void rk_nandc_xfer_start(struct rk_nand_controller *ctrl,
+				uint8_t dir, uint8_t n_KB,
+				dma_addr_t dma_data, dma_addr_t dma_oob)
+{
+	uint32_t reg;
+
+	if (ctrl->version == VERSION_9) {
+		reg = NANDC_V9_DMA_CFG_WR_ST |
+		      NANDC_V9_DMA_CFG_WR(dir) |
+		      NANDC_V9_DMA_CFG_BUS_MODE |
+		      NANDC_V9_DMA_CFG_HSIZE_32 |
+		      NANDC_V9_DMA_CFG_BURST_16 |
+		      NANDC_V9_DMA_CFG_INCR_NUM(16);
+		writel(reg, ctrl->regs + NANDC_REG_V9_DMA_CFG);
+		writel((uint32_t)dma_data, ctrl->regs + NANDC_REG_V9_DMA_BUF0);
+		writel((uint32_t)dma_oob, ctrl->regs + NANDC_REG_V9_DMA_BUF1);
+
+		reg = NANDC_V9_FL_DIR(dir) |
+		      NANDC_V9_FL_XFER_EN |
+		      NANDC_V9_FL_XFER_COUNT |
+		      NANDC_V9_FL_ACORRECT |
+		      NANDC_V9_FL_PAGE_NUM(n_KB) |
+		      NANDC_V9_FL_ASYNC_TOG_MIX;
+		writel(reg, ctrl->regs + NANDC_REG_V9_FLCTL);
+		reg |= NANDC_V9_FL_XFER_START;
+		writel(reg, ctrl->regs + NANDC_REG_V9_FLCTL);
+	} else {
+		reg = readl(ctrl->regs + NANDC_REG_V6_BCHCTL);
+		reg = (reg & (~(NAND_V6_BCH_REGION_M <<
+				NAND_V6_BCH_REGION_S))) |
+		      (ctrl->selected_bank << NAND_V6_BCH_REGION_S);
+		writel(reg, ctrl->regs + NANDC_REG_V6_BCHCTL);
+
+		reg = NANDC_V6_DMA_CFG_WR_ST |
+		      NANDC_V6_DMA_CFG_WR(dir) |
+		      NANDC_V6_DMA_CFG_BUS_MODE |
+		      NANDC_V6_DMA_CFG_HSIZE_32 |
+		      NANDC_V6_DMA_CFG_BURST_16 |
+		      NANDC_V6_DMA_CFG_INCR_NUM(16);
+		writel(reg, ctrl->regs + NANDC_REG_V6_DMA_CFG);
+		writel(dma_data, ctrl->regs + NANDC_REG_V6_DMA_BUF0);
+		writel(dma_oob, ctrl->regs + NANDC_REG_V6_DMA_BUF1);
+
+		reg = NANDC_V6_FL_DIR(dir) |
+		      NANDC_V6_FL_XFER_EN |
+		      NANDC_V6_FL_XFER_COUNT |
+		      NANDC_V6_FL_ACORRECT |
+		      NANDC_V6_FL_PAGE_NUM(n_KB) |
+		      NANDC_V6_FL_ASYNC_TOG_MIX;
+		writel(reg, ctrl->regs + NANDC_REG_V6_FLCTL);
+		reg |= NANDC_V6_FL_XFER_START;
+		writel(reg, ctrl->regs + NANDC_REG_V6_FLCTL);
+	}
+}
+
+static int rk_nandc_wait_for_xfer_done(struct rk_nand_controller *ctrl)
+{
+	uint32_t reg;
+	int ret;
+
+	if (ctrl->version == VERSION_9) {
+		void __iomem *ptr = ctrl->regs + NANDC_REG_V9_FLCTL;
+
+		ret = readl_poll_timeout_atomic(ptr, reg,
+						reg & NANDC_V9_FL_XFER_READY,
+						1, NANDC_DEF_TIMEOUT);
+	} else {
+		void __iomem *ptr = ctrl->regs + NANDC_REG_V6_FLCTL;
+
+		ret = readl_poll_timeout_atomic(ptr, reg,
+						reg & NANDC_V6_FL_XFER_READY,
+						1, NANDC_DEF_TIMEOUT);
+	}
+	if (ret)
+		pr_err("timeout reg=%x\n", reg);
+
+	return ret;
+}
+
+static unsigned long rk_nandc_dma_map_single(struct device *dev,
+		void *ptr, int size, int dir)
+{
+#ifdef CONFIG_ARM64
+	__dma_map_area((void *)ptr, size, dir);
+	return ((unsigned long)virt_to_phys((void *)ptr));
+#else
+	return dma_map_single(dev, (void *)ptr, size, dir);
+#endif
+}
+
+static void rk_nandc_dma_unmap_single(struct device *dev,
+				      unsigned long ptr, int size, int dir)
+{
+#ifdef CONFIG_ARM64
+	__dma_unmap_area(phys_to_virt(ptr), size, dir);
+#else
+	dma_unmap_single(dev, (dma_addr_t)ptr, size, dir);
+#endif
+}
+
+static int rk_nandc_hw_syndrome_ecc_read_page(struct nand_chip *nand,
+		uint8_t *buf,
+		int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	struct nand_ecc_ctrl *ecc = &nand->ecc;
+	int max_bitflips = 0;
+	dma_addr_t dma_data, dma_oob;
+	int ret, i;
+	int bch_st;
+	int dma_oob_size = ecc->steps * 128;
+	int pages_per_blk = mtd->erasesize / mtd->writesize;
+
+	rk_nandc_select_chip(nand, ctrl->selected_bank);
+
+	if ((page < pages_per_blk * NANDC_IDBResBlkNum) &&
+	    ctrl->bootromblocks)
+		rk_nandc_hw_ecc_setup(nand, NANDC_IDBEccBits);
+
+	nand_read_page_op(nand, page, 0, NULL, 0);
+
+	dma_data = rk_nandc_dma_map_single(mtd->dev.parent,
+					   ctrl->page_buf, mtd->writesize,
+					   DMA_FROM_DEVICE);
+	dma_oob = rk_nandc_dma_map_single(mtd->dev.parent,
+					  ctrl->oob_buf, dma_oob_size,
+					  DMA_FROM_DEVICE);
+
+	init_completion(&ctrl->complete);
+	if (ctrl->version == VERSION_9)
+		writel(NANDC_V9_INT_DMA, ctrl->regs + NANDC_REG_V9_INTEN);
+	else
+		writel(NANDC_V6_INT_DMA, ctrl->regs + NANDC_REG_V6_INTEN);
+	rk_nandc_xfer_start(ctrl, 0, ecc->steps, dma_data, dma_oob);
+	wait_for_completion_timeout(&ctrl->complete, msecs_to_jiffies(5));
+	rk_nandc_wait_for_xfer_done(ctrl);
+	rk_nandc_dma_unmap_single(mtd->dev.parent, dma_data, mtd->writesize,
+				  DMA_FROM_DEVICE);
+	rk_nandc_dma_unmap_single(mtd->dev.parent, dma_oob, dma_oob_size,
+				  DMA_FROM_DEVICE);
+
+	memcpy(buf, ctrl->page_buf, mtd->writesize);
+
+	if (oob_required) {
+		uint8_t *oob;
+		uint32_t tmp;
+
+		for (i = 0; i < ecc->steps; i++) {
+			oob = nand->oob_poi +
+			      i * (ecc->bytes + nand->ecc.prepad);
+			if (ctrl->version == VERSION_9) {
+				tmp = ctrl->oob_buf[i];
+			} else {
+				uint8_t oob_step = (ctrl->ecc_mode <= 24) ?
+						   64 : 128;
+				tmp = ctrl->oob_buf[i * oob_step / 4];
+			}
+			*oob++ = (uint8_t)tmp;
+			*oob++ = (uint8_t)(tmp >> 8);
+			*oob++ = (uint8_t)(tmp >> 16);
+			*oob++ = (uint8_t)(tmp >> 24);
+		}
+	}
+
+	if (ctrl->version == VERSION_9) {
+		for (i = 0; i < ecc->steps / 2; i++) {
+			bch_st = readl(ctrl->regs + NANDC_REG_V9_BCHST + i * 4);
+			if (bch_st & NANDC_V9_BCH0_ST_ERR ||
+			    bch_st & NANDC_V9_BCH1_ST_ERR) {
+				mtd->ecc_stats.failed++;
+				max_bitflips = -1;
+			} else {
+				ret = NANDC_V9_ECC_ERR_CNT0(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+
+				ret = NANDC_V9_ECC_ERR_CNT1(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+			}
+		}
+	} else {
+		for (i = 0; i < ecc->steps / 2; i++) {
+			bch_st = readl(ctrl->regs + NANDC_REG_V6_BCHST + i * 4);
+			if (bch_st & NANDC_V6_BCH0_ST_ERR ||
+			    bch_st & NANDC_V6_BCH1_ST_ERR) {
+				mtd->ecc_stats.failed++;
+				max_bitflips = -1;
+			} else {
+				ret = NANDC_V6_ECC_ERR_CNT0(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+
+				ret = NANDC_V6_ECC_ERR_CNT1(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+			}
+		}
+	}
+
+	if (max_bitflips == -1) {
+		dev_err(mtd->dev.parent,
+			"read_page %x %x %x %x %x %p %x\n",
+			page,
+			max_bitflips,
+			bch_st,
+			((uint32_t *)buf)[0],
+			((uint32_t *)buf)[1],
+			buf,
+			(uint32_t)dma_data);
+	}
+
+	if (ctrl->bootromblocks)
+		rk_nandc_hw_ecc_setup(nand, ctrl->ecc_mode);
+
+	return max_bitflips;
+}
+
+static int rk_nandc_hw_syndrome_ecc_write_page(struct nand_chip *nand,
+		const uint8_t *buf,
+		int oob_required,
+		int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	struct nand_ecc_ctrl *ecc = &nand->ecc;
+	dma_addr_t dma_data, dma_oob;
+	int i;
+	int dma_oob_size = ecc->steps * 128;
+	int pages_per_blk = mtd->erasesize / mtd->writesize;
+
+	rk_nandc_select_chip(nand, ctrl->selected_bank);
+
+	if ((page < pages_per_blk * NANDC_IDBResBlkNum) &&
+	    ctrl->bootromblocks)
+		rk_nandc_hw_ecc_setup(nand, NANDC_IDBEccBits);
+
+	nand_prog_page_begin_op(nand, page, 0, NULL, 0);
+
+	for (i = 0; i < ecc->steps; i++) {
+		uint32_t tmp;
+
+		if (oob_required) {
+			uint8_t *oob;
+
+			oob = nand->oob_poi +
+			      i * (ecc->bytes + nand->ecc.prepad);
+			tmp = oob[0] |
+			      (oob[1] << 8) |
+			      (oob[2] << 16) |
+			      (oob[3] << 24);
+		} else {
+			/* The first NANDC_IDBResBlkNum blocks are
+			 * for the stored loader. The first 32 bits
+			 * of oob must contain a sort of link to
+			 * the next page address in that same block
+			 * for the Bootrom.
+			 * Depending on what FTL from Rockchip is used,
+			 * the first 2 pages in the NANDC_IDBResBlkNum blocks
+			 * are reserved for FlashPhyInfo.
+			 * Raw IDB data then starts at page 2 or higher.
+			 */
+			if (!i &&
+			    page < pages_per_blk * NANDC_IDBResBlkNum &&
+			    page >= NANDC_IDBStartAddr)
+				tmp = (page & (pages_per_blk - 1)) * 4;
+			else
+				tmp = 0xFFFFFFFF;
+		}
+		if (ctrl->version == VERSION_9) {
+			ctrl->oob_buf[i] = tmp;
+		} else {
+			uint8_t oob_step = (ctrl->ecc_mode <= 24) ?
+					   64 : 128;
+			ctrl->oob_buf[i * oob_step / 4] = tmp;
+		}
+	}
+
+	memcpy(ctrl->page_buf, buf, mtd->writesize);
+	dma_data = rk_nandc_dma_map_single(mtd->dev.parent,
+					   ctrl->page_buf, mtd->writesize,
+					   DMA_TO_DEVICE);
+	dma_oob = rk_nandc_dma_map_single(mtd->dev.parent,
+					  ctrl->oob_buf, dma_oob_size,
+					  DMA_TO_DEVICE);
+	init_completion(&ctrl->complete);
+	if (ctrl->version == VERSION_9)
+		writel(NANDC_V9_INT_DMA, ctrl->regs + NANDC_REG_V9_INTEN);
+	else
+		writel(NANDC_V6_INT_DMA, ctrl->regs + NANDC_REG_V6_INTEN);
+	rk_nandc_xfer_start(ctrl, 1, ecc->steps, dma_data, dma_oob);
+	wait_for_completion_timeout(&ctrl->complete, msecs_to_jiffies(10));
+	rk_nandc_wait_for_xfer_done(ctrl);
+	rk_nandc_dma_unmap_single(mtd->dev.parent, dma_data, mtd->writesize,
+				  DMA_TO_DEVICE);
+	rk_nandc_dma_unmap_single(mtd->dev.parent, dma_oob, dma_oob_size,
+				  DMA_TO_DEVICE);
+
+	if (ctrl->bootromblocks)
+		rk_nandc_hw_ecc_setup(nand, ctrl->ecc_mode);
+
+	return nand_prog_page_end_op(nand);
+}
+
+static int rk_nandc_hw_ecc_read_oob(struct nand_chip *nand, int page)
+{
+	uint8_t *buf = nand_get_data_buf(nand);
+
+	return nand->ecc.read_page(nand, buf, true, page);
+}
+
+static int rk_nandc_hw_ecc_write_oob(struct nand_chip *nand, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	int ret;
+	uint8_t *buf = nand_get_data_buf(nand);
+
+	memset(buf, 0xFF, mtd->writesize);
+	ret = nand->ecc.write_page(nand, buf, true, page);
+	if (ret)
+		return ret;
+
+	return nand_prog_page_end_op(nand);
+}
+
+static void rk_nandc_read_buf(struct nand_chip *nand, uint8_t *buf, int len)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	int offs = 0;
+	void __iomem *bank_base = ctrl->regs + NANDC_REG_BANK0 +
+				  ctrl->selected_bank * 0x100;
+
+	for (offs = 0; offs < len; offs++)
+		buf[offs] = readb(bank_base);
+}
+
+static void rk_nandc_write_buf(struct nand_chip *nand,
+			       const uint8_t *buf, int len)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	int offs = 0;
+	void __iomem *bank_base = ctrl->regs + NANDC_REG_BANK0 +
+				  ctrl->selected_bank * 0x100;
+
+	for (offs = 0; offs < len; offs++)
+		writeb(buf[offs], bank_base);
+}
+
+static void rk_nandc_write_cmd(struct nand_chip *nand, uint8_t cmd)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+
+	void __iomem *bank_base = ctrl->regs + NANDC_REG_BANK0 +
+				  ctrl->selected_bank * 0x100 +
+				  NANDC_REG_CMD;
+
+	writeb(cmd, bank_base);
+}
+
+static void rk_nandc_write_addr(struct nand_chip *nand, uint8_t addr)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+
+	void __iomem *bank_base = ctrl->regs + NANDC_REG_BANK0 +
+				  ctrl->selected_bank * 0x100 +
+				  NANDC_REG_ADDR;
+
+	writeb(addr, bank_base);
+}
+
+static int rk_nandc_dev_ready(struct nand_chip *nand)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+
+	if (readl(ctrl->regs + NANDC_REG_V6_FMCTL) & NANDC_V6_FM_FREADY)
+		return 1;
+
+	return 0;
+}
+
+static int rk_nandc_ooblayout_ecc(struct mtd_info *mtd, int section,
+				  struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand = mtd_to_nand(mtd);
+
+	if (section >= nand->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (nand->ecc.bytes + nand->ecc.prepad) * section +
+			    nand->ecc.prepad;
+	oobregion->length = nand->ecc.steps * nand->ecc.bytes;
+
+	return 0;
+}
+
+static int rk_nandc_ooblayout_free(struct mtd_info *mtd, int section,
+				   struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *nand = mtd_to_nand(mtd);
+
+	if (section >= nand->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (nand->ecc.bytes + nand->ecc.prepad) * section;
+	oobregion->length = nand->ecc.steps * nand->ecc.prepad;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops rk_nandc_oob_ops = {
+	.ecc = rk_nandc_ooblayout_ecc,
+	.free = rk_nandc_ooblayout_free,
+};
+
+static void rk_nandc_free_buffer(struct nand_chip *nand)
+{
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+
+	kfree(ctrl->page_buf);
+	kfree(ctrl->oob_buf);
+}
+
+static int rk_nandc_buffer_init(struct nand_chip *nand)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+
+	ctrl->page_buf = kmalloc(mtd->writesize, GFP_KERNEL | GFP_DMA);
+	if (!ctrl->page_buf)
+		return -ENOMEM;
+
+	ctrl->oob_buf = kmalloc(nand->ecc.steps * 128, GFP_KERNEL | GFP_DMA);
+	if (!ctrl->oob_buf) {
+		kfree(ctrl->page_buf);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static int rk_nandc_hw_ecc_ctrl_init(struct nand_chip *nand)
+{
+	uint8_t strengths_v6[] = {60, 40, 24, 16};
+	uint8_t strengths_v9[] = {70, 60, 40, 16};
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_controller *ctrl = nand_get_controller_data(nand);
+	int max_strength;
+	uint32_t i, ver;
+
+	if (nand->options & NAND_IS_BOOT_MEDIUM)
+		ctrl->bootromblocks = true;
+	else
+		ctrl->bootromblocks = false;
+
+	nand->ecc.prepad = 4;
+	nand->ecc.steps = mtd->writesize / nand->ecc.size;
+
+	max_strength = ((mtd->oobsize / nand->ecc.steps) - 4) * 8 / 14;
+	if (ctrl->version == VERSION_9) {
+		ctrl->max_ecc_strength = 70;
+		ver = readl(ctrl->regs + NANDC_REG_V9_VER);
+		if (ver != NANDC_ID_V900)
+			dev_err(mtd->dev.parent,
+				"unsupported nandc version %x\n", ver);
+
+		if (max_strength > ctrl->max_ecc_strength)
+			max_strength = ctrl->max_ecc_strength;
+
+		for (i = 0; i < ARRAY_SIZE(strengths_v9); i++) {
+			if (max_strength >= strengths_v9[i])
+				break;
+		}
+
+		if (i >= ARRAY_SIZE(strengths_v9)) {
+			dev_err(mtd->dev.parent,
+				"unsupported strength\n");
+			return -ENOTSUPP;
+		}
+
+		ctrl->ecc_mode = strengths_v9[i];
+	} else {
+		ctrl->max_ecc_strength = 60;
+
+		ver = readl(ctrl->regs + NANDC_REG_V6_VER);
+		if (ver == NANDC_ID_V801)
+			ctrl->max_ecc_strength = 16;
+		else if (ver == NANDC_ID_V600 ||
+			 ver == NANDC_ID_V622 ||
+			 ver == NANDC_ID_V701 ||
+			 ver == NANDC_ID_V800)
+			ctrl->max_ecc_strength = 60;
+		else
+			dev_err(mtd->dev.parent,
+				"unsupported nandc version %x\n", ver);
+
+		if (max_strength > ctrl->max_ecc_strength)
+			max_strength = ctrl->max_ecc_strength;
+
+		for (i = 0; i < ARRAY_SIZE(strengths_v6); i++) {
+			if (max_strength >= strengths_v6[i])
+				break;
+		}
+
+		if (i >= ARRAY_SIZE(strengths_v6)) {
+			dev_err(mtd->dev.parent,
+				"unsupported strength\n");
+			return -ENOTSUPP;
+		}
+
+		ctrl->ecc_mode = strengths_v6[i];
+	}
+	rk_nandc_hw_ecc_setup(nand, ctrl->ecc_mode);
+
+	mtd_set_ooblayout(mtd, &rk_nandc_oob_ops);
+
+	if (mtd->oobsize < ((nand->ecc.bytes + nand->ecc.prepad) *
+			    nand->ecc.steps)) {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static void rk_nandc_detach_chip(struct nand_chip *nand)
+{
+	switch (nand->ecc.mode) {
+	case NAND_ECC_HW_SYNDROME:
+		rk_nandc_free_buffer(nand);
+		break;
+	default:
+		break;
+	}
+}
+
+static int rk_nandc_attach_chip(struct nand_chip *nand)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	int ret;
+
+	switch (nand->ecc.mode) {
+	case NAND_ECC_HW_SYNDROME:
+		ret = rk_nandc_hw_ecc_ctrl_init(nand);
+		if (ret)
+			return ret;
+		ret = rk_nandc_buffer_init(nand);
+		if (ret)
+			return -ENOMEM;
+		nand->ecc.read_page = rk_nandc_hw_syndrome_ecc_read_page;
+		nand->ecc.write_page = rk_nandc_hw_syndrome_ecc_write_page;
+		nand->ecc.read_oob = rk_nandc_hw_ecc_read_oob;
+		nand->ecc.write_oob = rk_nandc_hw_ecc_write_oob;
+		break;
+	case NAND_ECC_HW:
+	case NAND_ECC_NONE:
+	case NAND_ECC_SOFT:
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int rk_nandc_exec_op(struct nand_chip *nand,
+			    const struct nand_operation *op,
+			    bool check_only)
+{
+	int i;
+	unsigned int op_id;
+	const struct nand_op_instr *instr = NULL;
+
+	rk_nandc_select_chip(nand, op->cs);
+
+	if (check_only)
+		return 0;
+
+	for (op_id = 0; op_id < op->ninstrs; op_id++) {
+		instr = &op->instrs[op_id];
+
+		switch (instr->type) {
+		case NAND_OP_CMD_INSTR:
+			rk_nandc_write_cmd(nand, instr->ctx.cmd.opcode);
+			break;
+		case NAND_OP_ADDR_INSTR:
+			for (i = 0; i < instr->ctx.addr.naddrs; i++)
+				rk_nandc_write_addr(nand,
+						    instr->ctx.addr.addrs[i]);
+			break;
+		case NAND_OP_DATA_IN_INSTR:
+			rk_nandc_read_buf(nand, instr->ctx.data.buf.in,
+					  instr->ctx.data.len);
+			break;
+		case NAND_OP_DATA_OUT_INSTR:
+			rk_nandc_write_buf(nand, instr->ctx.data.buf.out,
+					   instr->ctx.data.len);
+			break;
+		case NAND_OP_WAITRDY_INSTR:
+			rk_nandc_dev_ready(nand);
+			break;
+		}
+	}
+
+	return 0;
+}
+
+static const struct nand_controller_ops rk_nand_controller_ops = {
+	.attach_chip = rk_nandc_attach_chip,
+	.detach_chip = rk_nandc_detach_chip,
+	.exec_op = rk_nandc_exec_op,
+};
+
+static int rk_nandc_chip_init(struct device *dev,
+			      struct rk_nand_controller *ctrl,
+			      struct device_node *np, unsigned int chipnr)
+{
+	struct rk_nand_chip *node;
+	struct nand_chip *nand;
+	struct mtd_info *mtd;
+	const __be32 *reg;
+	int ret;
+
+	reg = of_get_property(np, "reg", NULL);
+	if (!reg)
+		return -EINVAL;
+
+	ctrl->banks[chipnr] = be32_to_cpu(*reg);
+
+	if (ctrl->banks[chipnr] < 0)
+		return -EINVAL;
+
+	node = devm_kzalloc(dev, sizeof(*node), GFP_KERNEL);
+	if (!node)
+		return -ENOMEM;
+
+	nand = &node->nand;
+
+	nand_set_flash_node(nand, np);
+	nand_set_controller_data(nand, ctrl);
+
+	nand->controller = &ctrl->controller;
+	nand->controller->ops = &rk_nand_controller_ops;
+
+	nand->ecc.mode = NAND_ECC_HW_SYNDROME;
+	nand->ecc.size = 1024;
+	nand->ecc.strength = 40;
+
+	nand->options = NAND_SKIP_BBTSCAN | NAND_NO_SUBPAGE_WRITE;
+
+	mtd = nand_to_mtd(nand);
+	mtd->dev.parent = dev;
+	mtd->name = devm_kasprintf(dev, GFP_KERNEL, "%s.%d", dev_name(dev),
+				   ctrl->banks[chipnr]);
+
+	ret = nand_scan(nand, 1);
+	if (ret)
+		return ret;
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		dev_err(dev, "mtd device register failed: %d\n", ret);
+		nand_release(nand);
+		return ret;
+	}
+
+	list_add_tail(&node->chip_list, &ctrl->chips);
+
+	return 0;
+}
+
+static int rk_nandc_cleanup_chips(struct rk_nand_controller *ctrl)
+{
+	struct rk_nand_chip *node;
+	struct mtd_info *mtd;
+	int ret;
+
+	while (!list_empty(&ctrl->chips)) {
+		node = list_first_entry(&ctrl->chips, struct rk_nand_chip,
+					chip_list);
+		mtd = nand_to_mtd(&node->nand);
+		ret = mtd_device_unregister(mtd);
+		if (ret)
+			return ret;
+
+		rk_nandc_free_buffer(&node->nand);
+		nand_cleanup(&node->nand);
+		list_del(&node->chip_list);
+	}
+
+	return 0;
+}
+
+static int rk_nandc_chips_init(struct device *dev,
+			       struct rk_nand_controller *ctrl)
+{
+	struct device_node *np = dev->of_node;
+	struct device_node *nand_np;
+	int nchips = of_get_child_count(np);
+	int i = 0;
+	int ret;
+
+	if (nchips > NANDC_NUM_BANKS) {
+		dev_err(dev, "too many NAND chips: %d (max = 4)\n", nchips);
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(np, nand_np) {
+		ret = rk_nandc_chip_init(dev, ctrl, nand_np, i);
+		if (ret) {
+			rk_nandc_cleanup_chips(ctrl);
+			of_node_put(nand_np);
+			return ret;
+		}
+		i++;
+	}
+
+	return 0;
+}
+
+static int rk_nandc_probe(struct platform_device *pdev)
+{
+	const struct rk_nandc_data *data;
+	struct device *dev = &pdev->dev;
+	struct device_node *node;
+	int id;
+	int ret;
+
+	data = of_device_get_match_data(&pdev->dev);
+	if (!data)
+		return -ENODEV;
+
+	node = pdev->dev.of_node;
+
+	id = of_alias_get_id(node, "nandc");
+	if (id < 0)
+		id = g_id_counter;
+	if ((id >= ARRAY_SIZE(g_nandc_info) || g_nandc_info[id].regs)) {
+		dev_err(
+			&pdev->dev,
+			"failed to get id for nandc node '%pOFn'\n",
+			node);
+		of_node_put(node);
+		return -ENODEV;
+	}
+	++g_id_counter;
+
+	g_nandc_info[id].version = data->version;
+
+	g_nandc_info[id].regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(g_nandc_info[id].regs)) {
+		dev_err(dev, "ioremap failed\n");
+		return PTR_ERR(g_nandc_info[id].regs);
+	}
+
+	g_nandc_info[id].irq = platform_get_irq(pdev, 0);
+	if (g_nandc_info[id].irq < 0) {
+		dev_err(dev, "get irq failed\n");
+		return g_nandc_info[id].irq;
+	}
+
+	g_nandc_info[id].hclk = devm_clk_get(dev, "hclk_nandc");
+	if (IS_ERR(g_nandc_info[id].hclk)) {
+		dev_err(dev, "get hclk_nandc failed\n");
+		return PTR_ERR(g_nandc_info[id].hclk);
+	}
+
+	ret = clk_prepare_enable(g_nandc_info[id].hclk);
+	if (ret)
+		return ret;
+
+	g_nandc_info[id].clk = devm_clk_get(dev, "clk_nandc");
+	if (!(IS_ERR(g_nandc_info[id].clk))) {
+		clk_set_rate(g_nandc_info[id].clk, 150 * 1000 * 1000);
+
+		ret = clk_prepare_enable(g_nandc_info[id].clk);
+		if (ret)
+			goto err_disable_hclk;
+	} else
+		dev_err(dev, "get clk_nandc failed\n");
+
+	if (g_nandc_info[id].version == VERSION_9)
+		writel(0, g_nandc_info[id].regs + NANDC_REG_V9_INTEN);
+	else
+		writel(0, g_nandc_info[id].regs + NANDC_REG_V6_INTEN);
+	ret = devm_request_irq(dev, g_nandc_info[id].irq, rk_nandc_interrupt,
+			       0, "nandc", &g_nandc_info[id]);
+	if (ret)
+		goto err_disable_clk;
+
+	nand_controller_init(&g_nandc_info[id].controller);
+	INIT_LIST_HEAD(&g_nandc_info[id].chips);
+
+	rk_nandc_init(&g_nandc_info[id]);
+
+	ret = rk_nandc_chips_init(dev, &g_nandc_info[id]);
+	if (ret) {
+		dev_err(dev, "init nand chips failed\n");
+		goto err_disable_clk;
+	}
+
+	platform_set_drvdata(pdev, &g_nandc_info[id]);
+
+	return 0;
+
+err_disable_clk:
+	clk_disable_unprepare(g_nandc_info[id].clk);
+err_disable_hclk:
+	clk_disable_unprepare(g_nandc_info[id].hclk);
+
+	return ret;
+}
+
+static int rk_nandc_remove(struct platform_device *pdev)
+{
+	struct rk_nand_controller *ctrl = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = rk_nandc_cleanup_chips(ctrl);
+	if (ret)
+		return ret;
+
+	clk_disable_unprepare(ctrl->clk);
+	clk_disable_unprepare(ctrl->hclk);
+	platform_set_drvdata(pdev, NULL);
+
+	return 0;
+}
+
+static void rk_nandc_shutdown(struct platform_device *pdev)
+{
+	struct rk_nand_controller *ctrl = platform_get_drvdata(pdev);
+	int ret;
+
+	ret = rk_nandc_cleanup_chips(ctrl);
+	if (ret)
+		return;
+
+	clk_disable_unprepare(ctrl->clk);
+	clk_disable_unprepare(ctrl->hclk);
+	platform_set_drvdata(pdev, NULL);
+}
+
+static const struct rk_nandc_data rk_nandc_v6_data = {
+	.version = VERSION_6,
+};
+
+static const struct rk_nandc_data rk_nandc_v9_data = {
+	.version = VERSION_9,
+};
+
+static const struct of_device_id of_rk_nandc_match[] = {
+	{
+		.compatible = "rockchip,nandc-v6",
+		.data = &rk_nandc_v6_data,
+	},
+	{
+		.compatible = "rockchip,nandc-v9",
+		.data = &rk_nandc_v9_data,
+	},
+	{ /* sentinel */ },
+};
+
+static struct platform_driver rk_nandc_driver = {
+	.probe  = rk_nandc_probe,
+	.remove = rk_nandc_remove,
+	.shutdown = rk_nandc_shutdown,
+	.driver = {
+		.name = "rockchip-nandc",
+		.of_match_table = of_rk_nandc_match,
+	},
+};
+
+module_platform_driver(rk_nandc_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
