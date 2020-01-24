Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2899A148C3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KYEwRVT9A/W5SnjRsxtMqrQ3rqfeOVapyBcGXjtZ9pI=; b=rO+8bqKNiu86PlN5Zc0wWsQ8hk
	Y9H6zYUcC7W4pgaWA+KbZD7aqmp33nYTsng7Z0359xyZMBHGsuLoWNWtTFLK0LDDtTzU4iGYJIJ91
	b6kNzCtjs8s3Q/VdDnQKFAHzQQRuFUwvMVOa6MYF7vegWos6v3JrP+rRXAVKeRkYPoza2ltL6mUK0
	tKhY+5MNT+rSkfLbkZasISOjJciW19mHnnW2xd4qIfQgnZz75tPgY+Ay3gCcXvNLKSWCOCzUAkyg5
	X/Pa1OsjOWrNaZzVSZRDC8Ah4DadJsR0C2B75rZdLfdtW98ZLU/9paIha09Q8UEmZdT6PBWtae6Vl
	3ZZxLVjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1uq-0006Ah-Ry; Fri, 24 Jan 2020 16:34:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qZ-0002TN-HN; Fri, 24 Jan 2020 16:30:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so2694479wrm.11;
 Fri, 24 Jan 2020 08:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bnRE2rSfNUUW5GhM+cf/GRW4WgHojMhFimcnO44kpBU=;
 b=R61vXWjXU/So7u8mZ56DLEo2tBXxL3on3YYwChBMmzB0zlbOkUIUMPBan56Fsr6FCh
 32Y62FFjWk8gO88j5qDujrgnGp/Lo/0ycGdsLZzow9PfgmMAxM6i0rj8J0EHNV8LsT5y
 FbnhJCDDWaPCp0np92HURVW/Jr8AE68VaZt+FjodlGc0evnCx7qX6o2Ea939G6X78yQn
 ZP5pTIjq3yUJvvS9juX0pSRL3G6T2qIqrGJSzRqhVOf/vQMFfRDFyc9ct2h53FsA1kWl
 RLiTNrtiGzAV7iup3zgsUt50xpO/c5Ag/ZN4lOBg/hvGluqHOjJSLEzPgHsxQIL8ZN+r
 1J2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bnRE2rSfNUUW5GhM+cf/GRW4WgHojMhFimcnO44kpBU=;
 b=hNs1GmfdGbTooyGjMtkUFs85MfWXi+Ts14MySU5zKxjQLpSwL5TsV0200JwogzBzmk
 Ez1QqptXsAMhXMAy9H7ATostyaZg6chNgQGb5nt8dpkTIET1Wzk6i51qLGy5Cze5ifHz
 sF0xRuVd9pGDhnDRGjRaLqKnuynz75Rl67rUDDq7GeQ473NKucEm+PGC8bb9/DmWvBiX
 etN9SO6i3Ln3qp0I6jmmtGvh3C/lv6fikdC22XbubVieLbRjigBNlIW8t96c5rMI+Pt5
 w0iIwb9HTGCeZdJAqvNX7/0SMVu4OICg6vvurb/B+JSj+0s0oqlklBli9rtEmhT0fe3L
 z7+A==
X-Gm-Message-State: APjAAAW0Ga4vR/25jzbyqxKohH2INkMfvhK6l9+HGW2C6j9yxqHgvIhV
 1Zu0epgdYdtCocGPqTuCWvs=
X-Google-Smtp-Source: APXvYqzl86QF0mDLDXLizmUpySSaG8u4fkL445zSJ+Zgh1w/RlwAYKerIXZ3XjGYp2ISG4zEz2Pl5A==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr5155700wru.173.1579883413220; 
 Fri, 24 Jan 2020 08:30:13 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:12 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 02/10] mtd: rawnand: rockchip: Add NAND controller
 driver
Date: Fri, 24 Jan 2020 17:29:53 +0100
Message-Id: <20200124163001.28910-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083015_599033_6CC535DA 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yifeng Zhao <zyf@rock-chips.com>

Add basic Rockchip NAND controller driver.

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
 drivers/mtd/nand/raw/Kconfig                    |    9 +
 drivers/mtd/nand/raw/Makefile                   |    1 +
 drivers/mtd/nand/raw/rockchip-nand-controller.c | 1307 +++++++++++++++++++++++
 3 files changed, 1317 insertions(+)
 create mode 100644 drivers/mtd/nand/raw/rockchip-nand-controller.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 74fb91ade..acee3d6ee 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -457,6 +457,15 @@ config MTD_NAND_CADENCE
 	  Enable the driver for NAND flash on platforms using a Cadence NAND
 	  controller.
 
+config MTD_NAND_ROCKCHIP
+	tristate "Rockchip raw NAND controller driver"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  Enables support for the Rockchip raw NAND controller driver.
+	  This controller is found on:
+	  px30, rk3066, rk3188, rk3228, rk3288, rk3308, rk3368, rv1108 SoCs.
+
 comment "Misc"
 
 config MTD_SM_COMMON
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index 2d136b158..a54aa85f4 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
 obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
 obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
 obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
+obj-$(CONFIG_MTD_NAND_ROCKCHIP)		+= rockchip-nand-controller.o
 
 nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
 nand-objs += nand_onfi.o
diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
new file mode 100644
index 000000000..76ed1c08d
--- /dev/null
+++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
@@ -0,0 +1,1307 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on:
+ * https://github.com/rockchip-linux/kernel
+ *
+ * Copyright (c) 2016-2019 Yifeng Zhao yifeng.zhao@rock-chips.com
+ *
+ * Support NAND controller versions 6 and 9 found on SoCs:
+ * px30, rk3066, rk3188, rk3228, rk3288, rk3308, rk3368, rv1108
+ *
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
+#define RK_NANDC_ID_V600		0x56363030
+#define RK_NANDC_ID_V622		0x56363232
+#define RK_NANDC_ID_V701		0x701
+#define RK_NANDC_ID_V800		0x56383030
+#define RK_NANDC_ID_V801		0x801
+#define RK_NANDC_ID_V900		0x56393030
+
+#define RK_NANDC_IDB_Res_Blk_Num	16
+#define RK_NANDC_IDB_Ecc_Bits		24
+
+#define RK_NANDC_V6_ECC_16		0x00000000
+#define RK_NANDC_V6_ECC_24		0x00000010
+#define RK_NANDC_V6_ECC_40		0x00040000
+#define RK_NANDC_V6_ECC_60		0x00040010
+
+#define RK_NANDC_V9_ECC_16		0x02000001
+#define RK_NANDC_V9_ECC_40		0x04000001
+#define RK_NANDC_V9_ECC_60		0x06000001
+#define RK_NANDC_V9_ECC_70		0x00000001
+
+#define RK_NANDC_NUM_BANKS		8
+#define RK_NANDC_DEF_TIMEOUT		10000
+
+#define RK_NANDC_REG_DATA		0x00
+#define RK_NANDC_REG_ADDR		0x04
+#define RK_NANDC_REG_CMD		0x08
+
+/* register offset nandc version 6 */
+#define RK_NANDC_REG_V6_FMCTL		0x00
+#define RK_NANDC_REG_V6_FMWAIT		0x04
+#define RK_NANDC_REG_V6_FLCTL		0x08
+#define RK_NANDC_REG_V6_BCHCTL		0x0c
+#define RK_NANDC_REG_V6_DMA_CFG		0x10
+#define RK_NANDC_REG_V6_DMA_BUF0	0x14
+#define RK_NANDC_REG_V6_DMA_BUF1	0x18
+#define RK_NANDC_REG_V6_DMA_ST		0x1C
+#define RK_NANDC_REG_V6_BCHST		0x20
+#define RK_NANDC_REG_V6_RANDMZ		0x150
+#define RK_NANDC_REG_V6_VER		0x160
+#define RK_NANDC_REG_V6_INTEN		0x16C
+#define RK_NANDC_REG_V6_INTCLR		0x170
+#define RK_NANDC_REG_V6_INTST		0x174
+#define RK_NANDC_REG_V6_SPARE0		0x200
+#define RK_NANDC_REG_V6_SPARE1		0x230
+
+/* register offset nandc version 9 */
+#define RK_NANDC_REG_V9_FMCTL		0x00
+#define RK_NANDC_REG_V9_FMWAIT		0x04
+#define RK_NANDC_REG_V9_FLCTL		0x10
+#define RK_NANDC_REG_V9_BCHCTL		0x20
+#define RK_NANDC_REG_V9_DMA_CFG		0x30
+#define RK_NANDC_REG_V9_DMA_BUF0	0x34
+#define RK_NANDC_REG_V9_DMA_BUF1	0x38
+#define RK_NANDC_REG_V9_DMA_ST		0x40
+#define RK_NANDC_REG_V9_VER		0x80
+#define RK_NANDC_REG_V9_INTEN		0x120
+#define RK_NANDC_REG_V9_INTCLR		0x124
+#define RK_NANDC_REG_V9_INTST		0x128
+#define RK_NANDC_REG_V9_BCHST		0x150
+#define RK_NANDC_REG_V9_SPARE0		0x200
+#define RK_NANDC_REG_V9_SPARE1		0x204
+#define RK_NANDC_REG_V9_RANDMZ		0x208
+
+/* register offset nandc common */
+#define RK_NANDC_REG_BANK0		0x800
+#define RK_NANDC_REG_SRAM0		0x1000
+
+/* calculate bank_base */
+#define RK_NANDC_BANK_SIZE		0x100
+
+#define RK_REG(ctrl, off) \
+	((ctrl)->regs + \
+	RK_NANDC_REG_BANK0 + \
+	(ctrl)->selected_bank * RK_NANDC_BANK_SIZE + \
+	(off))
+
+#define RK_REG_DATA(ctrl) RK_REG(ctrl, RK_NANDC_REG_DATA)
+#define RK_REG_ADDR(ctrl) RK_REG(ctrl, RK_NANDC_REG_ADDR)
+#define RK_REG_CMD(ctrl)  RK_REG(ctrl, RK_NANDC_REG_CMD)
+
+/* FMCTL */
+#define RK_NANDC_V6_FM_WP		BIT(8)
+#define RK_NANDC_V6_FM_CE_SEL_M		0xFF
+#define RK_NANDC_V6_FM_CE_SEL(x)	(1 << (x))
+#define RK_NANDC_V6_FM_FREADY		BIT(9)
+
+#define RK_NANDC_V9_FM_WP		BIT(8)
+#define RK_NANDC_V9_FM_CE_SEL_M		0xFF
+#define RK_NANDC_V9_FM_CE_SEL(x)	(1 << (x))
+#define RK_NANDC_V9_RDY			BIT(9)
+
+/* FLCTL */
+#define RK_NANDC_V6_FL_RST		BIT(0)
+#define RK_NANDC_V6_FL_DIR(x)		((x) ? BIT(1) : 0)
+#define RK_NANDC_V6_FL_XFER_START	BIT(2)
+#define RK_NANDC_V6_FL_XFER_EN		BIT(3)
+#define RK_NANDC_V6_FL_ST_BUF_S		0x4
+#define RK_NANDC_V6_FL_XFER_COUNT	BIT(5)
+#define RK_NANDC_V6_FL_ACORRECT		BIT(10)
+#define RK_NANDC_V6_FL_XFER_READY	BIT(20)
+#define RK_NANDC_V6_FL_PAGE_NUM(x)	((x) << 22)
+#define RK_NANDC_V6_FL_ASYNC_TOG_MIX	BIT(29)
+
+#define RK_NANDC_V9_FL_RST		BIT(0)
+#define RK_NANDC_V9_FL_DIR(x)		((x) ? BIT(1) : 0)
+#define RK_NANDC_V9_FL_XFER_START	BIT(2)
+#define RK_NANDC_V9_FL_XFER_EN		BIT(3)
+#define RK_NANDC_V9_FL_ST_BUF_S		0x4
+#define RK_NANDC_V9_FL_XFER_COUNT	BIT(5)
+#define RK_NANDC_V9_FL_ACORRECT		BIT(10)
+#define RK_NANDC_V9_FL_XFER_READY	BIT(20)
+#define RK_NANDC_V9_FL_PAGE_NUM(x)	((x) << 22)
+#define RK_NANDC_V9_FL_ASYNC_TOG_MIX	BIT(29)
+
+/* BCHCTL */
+#define RK_NANDC_V6_BCH_REGION_S	0x5
+#define RK_NANDC_V6_BCH_REGION_M	0x7
+
+#define RK_NANDC_V9_BCH_MODE_S		25
+#define RK_NANDC_V9_BCH_MODE_M		0x7
+
+/* BCHST */
+#define RK_NANDC_V6_BCH0_ST_ERR		BIT(2)
+#define RK_NANDC_V6_BCH1_ST_ERR		BIT(15)
+#define RK_NANDC_V6_ECC_ERR_CNT0(x)	(((((x) & (0x1F << 3)) >> 3) \
+					| (((x) & (1 << 27)) >> 22)) & 0x3F)
+#define RK_NANDC_V6_ECC_ERR_CNT1(x)	(((((x) & (0x1F << 16)) >> 16) \
+					| (((x) & (1 << 29)) >> 24)) & 0x3F)
+
+#define RK_NANDC_V9_BCH0_ST_ERR		BIT(2)
+#define RK_NANDC_V9_BCH1_ST_ERR		BIT(18)
+#define RK_NANDC_V9_ECC_ERR_CNT0(x)	(((x) & (0x7F << 3)) >> 3)
+#define RK_NANDC_V9_ECC_ERR_CNT1(x)	(((x) & (0x7F << 19)) >> 19)
+
+/* DMA_CFG */
+#define RK_NANDC_V6_DMA_CFG_WR_ST	BIT(0)
+#define RK_NANDC_V6_DMA_CFG_WR(x)	(!(x) ? BIT(1) : 0)
+#define RK_NANDC_V6_DMA_CFG_BUS_MODE	BIT(2)
+
+#define RK_NANDC_V6_DMA_CFG_HSIZE_8	0
+#define RK_NANDC_V6_DMA_CFG_HSIZE_16	BIT(3)
+#define RK_NANDC_V6_DMA_CFG_HSIZE_32	(2 << 3)
+
+#define RK_NANDC_V6_DMA_CFG_BURST_1	0
+#define RK_NANDC_V6_DMA_CFG_BURST_4	(3 << 6)
+#define RK_NANDC_V6_DMA_CFG_BURST_8	(5 << 6)
+#define RK_NANDC_V6_DMA_CFG_BURST_16	(7 << 6)
+
+#define RK_NANDC_V6_DMA_CFG_INCR_NUM(x)	((x) << 9)
+
+#define RK_NANDC_V9_DMA_CFG_WR_ST	BIT(0)
+#define RK_NANDC_V9_DMA_CFG_WR(x)	(!(x) ? BIT(1) : 0)
+#define RK_NANDC_V9_DMA_CFG_BUS_MODE	BIT(2)
+
+#define RK_NANDC_V9_DMA_CFG_HSIZE_8	0
+#define RK_NANDC_V9_DMA_CFG_HSIZE_16	BIT(3)
+#define RK_NANDC_V9_DMA_CFG_HSIZE_32	(2 << 3)
+
+#define RK_NANDC_V9_DMA_CFG_BURST_1	0
+#define RK_NANDC_V9_DMA_CFG_BURST_4	(3 << 6)
+#define RK_NANDC_V9_DMA_CFG_BURST_8	(5 << 6)
+#define RK_NANDC_V9_DMA_CFG_BURST_16	(7 << 6)
+
+#define RK_NANDC_V9_DMA_CFG_INCR_NUM(x)	((x) << 9)
+
+/* INTEN */
+#define RK_NANDC_V6_INT_DMA		BIT(0)
+
+#define RK_NANDC_V9_INT_DMA		BIT(0)
+
+/*
+ * The bit positions for
+ * RK_NANDC_REG_V6_FMCTL and RK_NANDC_REG_V9_FMCTL,
+ * RK_NANDC_REG_V6_FLCTL and RK_NANDC_REG_V9_FLCTL,
+ * RK_NANDC_REG_V6_DMA_CFG and RK_NANDC_REG_V9_DMA_CFG
+ * are identical.
+ */
+
+enum rk_nandc_version {
+	VERSION_6 = 6,
+	VERSION_9 = 9,
+};
+
+struct rk_nandc_reg_offset {
+	u32 fmctl;
+	u32 fmwait;
+	u32 flctl;
+	u32 bchctl;
+	u32 dma_cfg;
+	u32 dma_buf0;
+	u32 dma_buf1;
+	u32 dma_st;
+	u32 bchst;
+	u32 randmz;
+	u32 ver;
+	u32 inten;
+	u32 intclr;
+	u32 intst;
+	u32 spare0;
+	u32 spare1;
+};
+
+static const struct rk_nandc_reg_offset rk_nandc_V6_reg_offset = {
+	.fmctl =    RK_NANDC_REG_V6_FMCTL,
+	.fmwait =   RK_NANDC_REG_V6_FMWAIT,
+	.flctl =    RK_NANDC_REG_V6_FLCTL,
+	.bchctl =   RK_NANDC_REG_V6_BCHCTL,
+	.dma_cfg =  RK_NANDC_REG_V6_DMA_CFG,
+	.dma_buf0 = RK_NANDC_REG_V6_DMA_BUF0,
+	.dma_buf1 = RK_NANDC_REG_V6_DMA_BUF1,
+	.dma_st =   RK_NANDC_REG_V6_DMA_ST,
+	.bchst =    RK_NANDC_REG_V6_BCHST,
+	.randmz =   RK_NANDC_REG_V6_RANDMZ,
+	.ver =      RK_NANDC_REG_V6_VER,
+	.inten =    RK_NANDC_REG_V6_INTEN,
+	.intclr =   RK_NANDC_REG_V6_INTCLR,
+	.intst =    RK_NANDC_REG_V6_INTST,
+	.spare0 =   RK_NANDC_REG_V6_SPARE0,
+	.spare1 =   RK_NANDC_REG_V6_SPARE1,
+};
+
+static const struct rk_nandc_reg_offset rk_nandc_V9_reg_offset = {
+	.fmctl =    RK_NANDC_REG_V9_FMCTL,
+	.fmwait =   RK_NANDC_REG_V9_FMWAIT,
+	.flctl =    RK_NANDC_REG_V9_FLCTL,
+	.bchctl =   RK_NANDC_REG_V9_BCHCTL,
+	.dma_cfg =  RK_NANDC_REG_V9_DMA_CFG,
+	.dma_buf0 = RK_NANDC_REG_V9_DMA_BUF0,
+	.dma_buf1 = RK_NANDC_REG_V9_DMA_BUF1,
+	.dma_st =   RK_NANDC_REG_V9_DMA_ST,
+	.bchst =    RK_NANDC_REG_V9_BCHST,
+	.randmz =   RK_NANDC_REG_V9_RANDMZ,
+	.ver =      RK_NANDC_REG_V9_VER,
+	.inten =    RK_NANDC_REG_V9_INTEN,
+	.intclr =   RK_NANDC_REG_V9_INTCLR,
+	.intst =    RK_NANDC_REG_V9_INTST,
+	.spare0 =   RK_NANDC_REG_V9_SPARE0,
+	.spare1 =   RK_NANDC_REG_V9_SPARE1,
+};
+
+struct rk_nandc_cap {
+	u8 max_cs;
+};
+
+static const struct rk_nandc_cap rk_nandc_V600_cap = {
+	.max_cs = 8,
+};
+
+static const struct rk_nandc_cap rk_nandc_V622_cap = {
+	.max_cs = 4,
+};
+
+static const struct rk_nandc_cap rk_nandc_V701_cap = {
+	.max_cs = 4,
+};
+
+static const struct rk_nandc_cap rk_nandc_V801_cap = {
+	.max_cs = 4,
+};
+
+static const struct rk_nandc_cap rk_nandc_V900_cap = {
+	.max_cs = 4,
+};
+
+struct rk_nandc_data {
+	enum rk_nandc_version version;
+	struct rk_nandc_reg_offset *ofs;
+	struct rk_nandc_cap *cap;
+};
+
+struct rk_nand_ctrl {
+	struct device *dev;
+	void __iomem *regs;
+	int irq;
+	struct clk *hclk;
+	struct clk *clk;
+	struct list_head chips;
+	struct completion complete;
+	struct nand_controller controller;
+	int cs[RK_NANDC_NUM_BANKS];
+	u32 *oob_buf;
+	u32 *page_buf;
+	int selected_bank;
+	unsigned long assigned_cs;
+	enum rk_nandc_version version;
+	struct rk_nandc_reg_offset *ofs;
+	struct rk_nandc_cap *cap;
+};
+
+struct rk_nand_chip {
+	struct nand_chip nand;
+	struct list_head node;
+	bool bootromblocks;
+	int ecc_mode;
+	int max_ecc_strength;
+	int idbresblknum;
+};
+
+static struct rk_nand_chip *to_rk_nand(struct nand_chip *nand)
+{
+	return container_of(nand, struct rk_nand_chip, nand);
+}
+
+static void rk_nandc_init(struct rk_nand_ctrl *ctrl)
+{
+	writel_relaxed(0, ctrl->regs + ctrl->ofs->randmz);
+	writel_relaxed(0, ctrl->regs + ctrl->ofs->dma_cfg);
+	writel_relaxed(RK_NANDC_V6_FM_WP, ctrl->regs + ctrl->ofs->fmctl);
+	writel_relaxed(RK_NANDC_V6_FL_RST, ctrl->regs + ctrl->ofs->flctl);
+	writel_relaxed(0x1081, ctrl->regs + ctrl->ofs->fmwait);
+}
+
+static irqreturn_t rk_nandc_interrupt(int irq, void *dev_id)
+{
+	struct rk_nand_ctrl *ctrl = dev_id;
+
+	u32 st = readl(ctrl->regs + ctrl->ofs->intst);
+	u32 ien = readl(ctrl->regs + ctrl->ofs->inten);
+
+	if (!(ien & st))
+		return IRQ_NONE;
+
+	if ((ien & st) == ien)
+		complete(&ctrl->complete);
+
+	writel_relaxed(st, ctrl->regs + ctrl->ofs->intclr);
+	writel_relaxed(~st & ien, ctrl->regs + ctrl->ofs->inten);
+
+	return IRQ_HANDLED;
+}
+
+static void rk_nandc_select_chip(struct nand_chip *nand, int chipnr)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	u32 reg;
+	int banknr;
+
+	reg = readl(ctrl->regs + ctrl->ofs->fmctl);
+	reg &= ~RK_NANDC_V6_FM_CE_SEL_M;
+
+	if (chipnr == -1) {
+		banknr = -1;
+	} else {
+		banknr = ctrl->cs[chipnr];
+
+		reg |= RK_NANDC_V6_FM_CE_SEL(banknr);
+	}
+
+	ctrl->selected_bank = banknr;
+
+	writel_relaxed(reg, ctrl->regs + ctrl->ofs->fmctl);
+}
+
+static int rk_nandc_hw_ecc_setup(struct nand_chip *nand,
+				 u32 strength)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	u32 reg;
+
+	nand->ecc.strength = strength;
+	/* HW ECC always request ECC bytes for 1024 bytes blocks */
+	nand->ecc.bytes = DIV_ROUND_UP(nand->ecc.strength * fls(8 * 1024), 8);
+	/* HW ECC only works with an even number of ECC bytes */
+	nand->ecc.bytes = ALIGN(nand->ecc.bytes, 2);
+
+	if (ctrl->version == VERSION_9) {
+		switch (nand->ecc.strength) {
+		case 70:
+			reg = RK_NANDC_V9_ECC_70;
+			break;
+		case 60:
+			reg = RK_NANDC_V9_ECC_60;
+			break;
+		case 40:
+			reg = RK_NANDC_V9_ECC_40;
+			break;
+		case 16:
+			reg = RK_NANDC_V9_ECC_16;
+			break;
+		default:
+			return -EINVAL;
+		}
+	} else {
+		switch (nand->ecc.strength) {
+		case 60:
+			reg = RK_NANDC_V6_ECC_60;
+			break;
+		case 40:
+			reg = RK_NANDC_V6_ECC_40;
+			break;
+		case 24:
+			reg = RK_NANDC_V6_ECC_24;
+			break;
+		case 16:
+			reg = RK_NANDC_V6_ECC_16;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	writel_relaxed(reg, ctrl->regs + ctrl->ofs->bchctl);
+
+	return 0;
+}
+
+static void rk_nandc_xfer_start(struct rk_nand_ctrl *ctrl,
+				u8 dir, u8 n_KB,
+				dma_addr_t dma_data,
+				dma_addr_t dma_oob)
+{
+	u32 reg;
+
+	if (ctrl->version == VERSION_6) {
+		reg = readl(ctrl->regs + ctrl->ofs->bchctl);
+		reg = (reg & (~(RK_NANDC_V6_BCH_REGION_M <<
+				RK_NANDC_V6_BCH_REGION_S))) |
+		      (ctrl->selected_bank << RK_NANDC_V6_BCH_REGION_S);
+		writel_relaxed(reg, ctrl->regs + ctrl->ofs->bchctl);
+	}
+
+	reg = RK_NANDC_V6_DMA_CFG_WR_ST |
+	      RK_NANDC_V6_DMA_CFG_WR(dir) |
+	      RK_NANDC_V6_DMA_CFG_BUS_MODE |
+	      RK_NANDC_V6_DMA_CFG_HSIZE_32 |
+	      RK_NANDC_V6_DMA_CFG_BURST_16 |
+	      RK_NANDC_V6_DMA_CFG_INCR_NUM(16);
+	writel_relaxed(reg, ctrl->regs + ctrl->ofs->dma_cfg);
+	writel_relaxed((u32)dma_data, ctrl->regs + ctrl->ofs->dma_buf0);
+	writel_relaxed((u32)dma_oob, ctrl->regs + ctrl->ofs->dma_buf1);
+
+	reg = RK_NANDC_V6_FL_DIR(dir) |
+	      RK_NANDC_V6_FL_XFER_EN |
+	      RK_NANDC_V6_FL_XFER_COUNT |
+	      RK_NANDC_V6_FL_ACORRECT |
+	      RK_NANDC_V6_FL_PAGE_NUM(n_KB) |
+	      RK_NANDC_V6_FL_ASYNC_TOG_MIX;
+	writel_relaxed(reg, ctrl->regs + ctrl->ofs->flctl);
+	reg |= RK_NANDC_V6_FL_XFER_START;
+	writel_relaxed(reg, ctrl->regs + ctrl->ofs->flctl);
+}
+
+static int rk_nandc_wait_for_xfer_done(struct rk_nand_ctrl *ctrl)
+{
+	u32 reg;
+	int ret;
+
+	void __iomem *ptr = ctrl->regs + ctrl->ofs->flctl;
+
+	ret = readl_poll_timeout_atomic(ptr, reg,
+					reg & RK_NANDC_V6_FL_XFER_READY,
+					1, RK_NANDC_DEF_TIMEOUT);
+
+	return ret;
+}
+
+static void rk_nandc_hw_ecc_setup_helper(struct nand_chip *nand,
+					 int page, bool entry)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	struct rk_nand_chip *rk_nand = to_rk_nand(nand);
+
+	int pages_per_blk = mtd->erasesize / mtd->writesize;
+
+	/* only bank 0 used for boot rom blocks */
+	if ((page < pages_per_blk * rk_nand->idbresblknum) &&
+	    rk_nand->bootromblocks &&
+	    !ctrl->selected_bank &&
+	    entry)
+		rk_nandc_hw_ecc_setup(nand, RK_NANDC_IDB_Ecc_Bits);
+	else
+		rk_nandc_hw_ecc_setup(nand, rk_nand->ecc_mode);
+}
+
+static int rk_nandc_hw_syndrome_ecc_read_page(struct nand_chip *nand,
+					      u8 *buf,
+					      int oob_required,
+					      int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	struct nand_ecc_ctrl *ecc = &nand->ecc;
+	int max_bitflips = 0;
+	dma_addr_t dma_data, dma_oob;
+	int ret, i;
+	int bch_st;
+	int dma_oob_size = ecc->steps * 128;
+
+	rk_nandc_select_chip(nand, ctrl->selected_bank);
+
+	rk_nandc_hw_ecc_setup_helper(nand, page, true);
+
+	nand_read_page_op(nand, page, 0, NULL, 0);
+
+	dma_data = dma_map_single(ctrl->dev, ctrl->page_buf, mtd->writesize,
+				  DMA_FROM_DEVICE);
+	dma_oob = dma_map_single(ctrl->dev, ctrl->oob_buf, dma_oob_size,
+				 DMA_FROM_DEVICE);
+
+	reinit_completion(&ctrl->complete);
+	writel_relaxed(RK_NANDC_V6_INT_DMA, ctrl->regs + ctrl->ofs->inten);
+	rk_nandc_xfer_start(ctrl, 0, ecc->steps, dma_data, dma_oob);
+
+	ret = wait_for_completion_timeout(&ctrl->complete, msecs_to_jiffies(5));
+
+	if (!ret) {
+		dev_err(ctrl->dev, "wait_for_completion_timeout\n");
+		ret = -ETIMEDOUT;
+		goto unmap_dma;
+	}
+
+	ret = rk_nandc_wait_for_xfer_done(ctrl);
+
+	if (ret) {
+		dev_err(ctrl->dev, "rk_nandc_wait_for_xfer_done\n");
+		ret = -ETIMEDOUT;
+	}
+
+unmap_dma:
+	dma_unmap_single(ctrl->dev, dma_data, mtd->writesize, DMA_FROM_DEVICE);
+	dma_unmap_single(ctrl->dev, dma_oob, dma_oob_size, DMA_FROM_DEVICE);
+
+	if (ret)
+		goto ecc_setup;
+
+	memcpy(buf, ctrl->page_buf, mtd->writesize);
+
+	if (oob_required) {
+		u8 *oob;
+		u32 tmp;
+
+		for (i = 0; i < ecc->steps; i++) {
+			oob = nand->oob_poi +
+			      i * (ecc->bytes + nand->ecc.prepad);
+			if (ctrl->version == VERSION_9) {
+				tmp = ctrl->oob_buf[i];
+			} else {
+				u8 oob_step = (to_rk_nand(nand)->ecc_mode <= 24)
+					      ? 64 : 128;
+				tmp = ctrl->oob_buf[i * oob_step / 4];
+			}
+			*oob++ = (u8)tmp;
+			*oob++ = (u8)(tmp >> 8);
+			*oob++ = (u8)(tmp >> 16);
+			*oob++ = (u8)(tmp >> 24);
+		}
+	}
+
+	if (ctrl->version == VERSION_9) {
+		for (i = 0; i < ecc->steps / 2; i++) {
+			bch_st = readl(ctrl->regs +
+				       ctrl->ofs->bchst +
+				       i * 4);
+			if (bch_st & RK_NANDC_V9_BCH0_ST_ERR ||
+			    bch_st & RK_NANDC_V9_BCH1_ST_ERR) {
+				mtd->ecc_stats.failed++;
+				max_bitflips = -1;
+			} else {
+				ret = RK_NANDC_V9_ECC_ERR_CNT0(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+
+				ret = RK_NANDC_V9_ECC_ERR_CNT1(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+			}
+		}
+	} else {
+		for (i = 0; i < ecc->steps / 2; i++) {
+			bch_st = readl(ctrl->regs +
+				       ctrl->ofs->bchst +
+				       i * 4);
+			if (bch_st & RK_NANDC_V6_BCH0_ST_ERR ||
+			    bch_st & RK_NANDC_V6_BCH1_ST_ERR) {
+				mtd->ecc_stats.failed++;
+				max_bitflips = -1;
+			} else {
+				ret = RK_NANDC_V6_ECC_ERR_CNT0(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+
+				ret = RK_NANDC_V6_ECC_ERR_CNT1(bch_st);
+				mtd->ecc_stats.corrected += ret;
+				max_bitflips = max_t(unsigned int,
+						     max_bitflips, ret);
+			}
+		}
+	}
+
+	ret = max_bitflips;
+	if (max_bitflips == -1) {
+		dev_err(ctrl->dev, "BCH status error\n");
+		ret = -ENODATA;
+	}
+
+ecc_setup:
+	rk_nandc_hw_ecc_setup_helper(nand, page, false);
+
+	return ret;
+}
+
+static int rk_nandc_hw_syndrome_ecc_write_page(struct nand_chip *nand,
+					       const u8 *buf,
+					       int oob_required,
+					       int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	struct nand_ecc_ctrl *ecc = &nand->ecc;
+	dma_addr_t dma_data, dma_oob;
+	int i, ret;
+	int dma_oob_size = ecc->steps * 128;
+
+	rk_nandc_select_chip(nand, ctrl->selected_bank);
+
+	rk_nandc_hw_ecc_setup_helper(nand, page, true);
+
+	nand_prog_page_begin_op(nand, page, 0, NULL, 0);
+
+	for (i = 0; i < ecc->steps; i++) {
+		u32 tmp;
+
+		if (oob_required) {
+			u8 *oob;
+
+			oob = nand->oob_poi +
+			      i * (ecc->bytes + nand->ecc.prepad);
+			tmp = oob[0] |
+			      (oob[1] << 8) |
+			      (oob[2] << 16) |
+			      (oob[3] << 24);
+		} else {
+			tmp = 0xFFFFFFFF;
+		}
+		if (ctrl->version == VERSION_9) {
+			ctrl->oob_buf[i] = tmp;
+		} else {
+			u8 oob_step = (to_rk_nand(nand)->ecc_mode <= 24)
+				      ? 64 : 128;
+			ctrl->oob_buf[i * oob_step / 4] = tmp;
+		}
+	}
+
+	memcpy(ctrl->page_buf, buf, mtd->writesize);
+
+	dma_data = dma_map_single(ctrl->dev, ctrl->page_buf, mtd->writesize,
+				  DMA_TO_DEVICE);
+	dma_oob = dma_map_single(ctrl->dev, ctrl->oob_buf, dma_oob_size,
+				 DMA_TO_DEVICE);
+
+	reinit_completion(&ctrl->complete);
+	writel_relaxed(RK_NANDC_V6_INT_DMA, ctrl->regs + ctrl->ofs->inten);
+	rk_nandc_xfer_start(ctrl, 1, ecc->steps, dma_data, dma_oob);
+
+	ret = wait_for_completion_timeout(&ctrl->complete,
+					  msecs_to_jiffies(10));
+
+	if (!ret) {
+		dev_err(ctrl->dev, "wait_for_completion_timeout\n");
+		ret = -ETIMEDOUT;
+		goto unmap_dma;
+	}
+
+	ret = rk_nandc_wait_for_xfer_done(ctrl);
+
+	if (ret) {
+		dev_err(ctrl->dev, "rk_nandc_wait_for_xfer_done\n");
+		ret = -ETIMEDOUT;
+	}
+
+unmap_dma:
+	dma_unmap_single(ctrl->dev, dma_data, mtd->writesize, DMA_TO_DEVICE);
+	dma_unmap_single(ctrl->dev, dma_oob, dma_oob_size, DMA_TO_DEVICE);
+
+	rk_nandc_hw_ecc_setup_helper(nand, page, false);
+
+	if (!ret)
+		ret = nand_prog_page_end_op(nand);
+
+	return ret;
+}
+
+static int rk_nandc_hw_ecc_read_oob(struct nand_chip *nand, int page)
+{
+	u8 *buf = nand_get_data_buf(nand);
+
+	return nand->ecc.read_page(nand, buf, true, page);
+}
+
+static int rk_nandc_hw_ecc_write_oob(struct nand_chip *nand, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	int ret;
+	u8 *buf = nand_get_data_buf(nand);
+
+	memset(buf, 0xFF, mtd->writesize);
+	ret = nand->ecc.write_page(nand, buf, true, page);
+	if (ret)
+		return ret;
+
+	return nand_prog_page_end_op(nand);
+}
+
+static void rk_nandc_read_buf(struct nand_chip *nand, u8 *buf, int len)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	int offs = 0;
+	void __iomem *bank_base = RK_REG_DATA(ctrl);
+
+	for (offs = 0; offs < len; offs++)
+		buf[offs] = readb(bank_base);
+}
+
+static void rk_nandc_write_buf(struct nand_chip *nand, const u8 *buf, int len)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	int offs = 0;
+	void __iomem *bank_base = RK_REG_DATA(ctrl);
+
+	for (offs = 0; offs < len; offs++)
+		writeb(buf[offs], bank_base);
+}
+
+static void rk_nandc_write_cmd(struct nand_chip *nand, u8 cmd)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+
+	void __iomem *bank_base = RK_REG_CMD(ctrl);
+
+	writeb(cmd, bank_base);
+}
+
+static void rk_nandc_write_addr(struct nand_chip *nand, u8 addr)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+
+	void __iomem *bank_base = RK_REG_ADDR(ctrl);
+
+	writeb(addr, bank_base);
+}
+
+static int rk_nandc_dev_ready(struct nand_chip *nand)
+{
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+
+	if (readl(ctrl->regs + ctrl->ofs->fmctl) & RK_NANDC_V6_FM_FREADY)
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
+static int rk_nandc_buffer_init(struct nand_chip *nand)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+
+	ctrl->page_buf = devm_kzalloc(ctrl->dev,
+				      mtd->writesize,
+				      GFP_KERNEL | GFP_DMA);
+	if (!ctrl->page_buf)
+		return -ENOMEM;
+
+	ctrl->oob_buf = devm_kzalloc(ctrl->dev,
+				     nand->ecc.steps * 128,
+				     GFP_KERNEL | GFP_DMA);
+	if (!ctrl->oob_buf) {
+		devm_kfree(ctrl->dev, ctrl->page_buf);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static int rk_nandc_hw_ecc_ctrl_init(struct nand_chip *nand)
+{
+	u8 strengths_v6[] = {60, 40, 24, 16};
+	u8 strengths_v9[] = {70, 60, 40, 16};
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct rk_nand_ctrl *ctrl = nand_get_controller_data(nand);
+	struct rk_nand_chip *rk_nand = to_rk_nand(nand);
+	int max_strength;
+	u32 i, ver;
+
+	if (nand->options & NAND_IS_BOOT_MEDIUM)
+		rk_nand->bootromblocks = true;
+	else
+		rk_nand->bootromblocks = false;
+
+	nand->ecc.prepad = 4;
+	nand->ecc.steps = mtd->writesize / nand->ecc.size;
+
+	max_strength = ((mtd->oobsize / nand->ecc.steps) - 4) * 8 / 14;
+	if (ctrl->version == VERSION_9) {
+		rk_nand->max_ecc_strength = 70;
+		ver = readl(ctrl->regs + RK_NANDC_REG_V9_VER);
+		if (ver != RK_NANDC_ID_V900)
+			dev_err(mtd->dev.parent,
+				"unsupported nandc version %x\n", ver);
+
+		if (max_strength > rk_nand->max_ecc_strength)
+			max_strength = rk_nand->max_ecc_strength;
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
+		rk_nand->ecc_mode = strengths_v9[i];
+	} else {
+		rk_nand->max_ecc_strength = 60;
+
+		ver = readl(ctrl->regs + RK_NANDC_REG_V6_VER);
+		if (ver == RK_NANDC_ID_V801)
+			rk_nand->max_ecc_strength = 16;
+		else if (ver == RK_NANDC_ID_V600 ||
+			 ver == RK_NANDC_ID_V622 ||
+			 ver == RK_NANDC_ID_V701 ||
+			 ver == RK_NANDC_ID_V800)
+			rk_nand->max_ecc_strength = 60;
+		else
+			dev_err(mtd->dev.parent,
+				"unsupported nandc version %x\n", ver);
+
+		if (max_strength > rk_nand->max_ecc_strength)
+			max_strength = rk_nand->max_ecc_strength;
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
+		rk_nand->ecc_mode = strengths_v6[i];
+	}
+	rk_nandc_hw_ecc_setup(nand, rk_nand->ecc_mode);
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
+static int rk_nandc_attach_chip(struct nand_chip *nand)
+{
+	int ret;
+
+	switch (nand->ecc.mode) {
+	case NAND_ECC_HW_SYNDROME:
+	case NAND_ECC_HW:
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
+	.exec_op = rk_nandc_exec_op,
+};
+
+static int rk_nandc_chip_init(struct rk_nand_ctrl *ctrl,
+			      struct device_node *np)
+{
+	struct rk_nand_chip *rk_nand;
+	struct nand_chip *nand;
+	struct mtd_info *mtd;
+	int nsels, ret, i;
+	u32 cs, val;
+
+	nsels = of_property_count_elems_of_size(np, "reg", sizeof(u32));
+	if (nsels <= 0) {
+		dev_err(ctrl->dev, "missing/invalid reg property\n");
+		return -EINVAL;
+	}
+
+	rk_nand = devm_kzalloc(ctrl->dev, sizeof(*rk_nand), GFP_KERNEL);
+	if (!rk_nand)
+		return -ENOMEM;
+
+	rk_nand->idbresblknum = RK_NANDC_IDB_Res_Blk_Num;
+
+	for (i = 0; i < nsels; i++) {
+		ret = of_property_read_u32_index(np, "reg", i, &cs);
+		if (ret) {
+			dev_err(ctrl->dev,
+				"could not retrieve reg property: %d\n",
+				ret);
+			return ret;
+		}
+
+		if (cs >= ctrl->cap->max_cs) {
+			dev_err(ctrl->dev,
+				"invalid reg value: %u (max CS = %d)\n",
+				cs,
+				ctrl->cap->max_cs);
+			return -EINVAL;
+		}
+
+		if (test_and_set_bit(cs, &ctrl->assigned_cs)) {
+			dev_err(ctrl->dev,
+				"CS %d already assigned\n",
+				cs);
+			return -EINVAL;
+		}
+
+		ctrl->cs[i] = cs;
+
+		/* only bank 0 used for boot rom blocks */
+		if (!of_property_read_u32_index(np, "rockchip,idb-res-blk-num",
+						i, &val)) {
+			if (!cs && val >= 2) {
+				rk_nand->idbresblknum = val;
+			} else {
+				dev_err(ctrl->dev,
+					"invalid idb-res-blk-num\n");
+				return -EINVAL;
+			}
+		}
+	}
+
+	nand = &rk_nand->nand;
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
+	mtd->dev.parent = ctrl->dev;
+	mtd->name = devm_kasprintf(ctrl->dev, GFP_KERNEL, "%s",
+				   dev_name(ctrl->dev));
+
+	ret = nand_scan(nand, nsels);
+	if (ret)
+		return ret;
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		dev_err(ctrl->dev, "mtd device register failed: %d\n", ret);
+		nand_cleanup(nand);
+		return ret;
+	}
+
+	list_add_tail(&rk_nand->node, &ctrl->chips);
+
+	return 0;
+}
+
+static void rk_nandc_cleanup_chips(struct rk_nand_ctrl *ctrl)
+{
+	struct rk_nand_chip *entry, *temp;
+
+	list_for_each_entry_safe(entry, temp, &ctrl->chips, node) {
+		nand_release(&entry->nand);
+		list_del(&entry->node);
+	}
+}
+
+static int rk_nandc_chips_init(struct rk_nand_ctrl *ctrl)
+{
+	struct device_node *np = ctrl->dev->of_node;
+	struct device_node *nand_np;
+	int nchips;
+	int ret;
+
+	nchips = of_get_child_count(np);
+
+	if (nchips > ctrl->cap->max_cs) {
+		dev_err(ctrl->dev, "too many NAND chips: %d (max CS = %d)\n",
+			nchips,
+			ctrl->cap->max_cs);
+		return -EINVAL;
+	}
+
+	for_each_child_of_node(np, nand_np) {
+		ret = rk_nandc_chip_init(ctrl, nand_np);
+		if (ret) {
+			rk_nandc_cleanup_chips(ctrl);
+			of_node_put(nand_np);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int rk_nandc_probe(struct platform_device *pdev)
+{
+	struct rk_nand_ctrl *ctrl;
+	const struct rk_nandc_data *data;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	data = of_device_get_match_data(dev);
+	if (!data)
+		return -ENODEV;
+
+	ctrl = devm_kzalloc(dev, sizeof(*ctrl), GFP_KERNEL);
+	if (!ctrl)
+		return -ENOMEM;
+
+	ctrl->dev = dev;
+	ctrl->version = data->version;
+	ctrl->ofs = data->ofs;
+	ctrl->cap = data->cap;
+
+	ctrl->regs = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(ctrl->regs)) {
+		dev_err(dev, "ioremap failed\n");
+		return PTR_ERR(ctrl->regs);
+	}
+
+	ctrl->irq = platform_get_irq(pdev, 0);
+	if (ctrl->irq < 0) {
+		dev_err(dev, "get irq failed\n");
+		return ctrl->irq;
+	}
+
+	ctrl->hclk = devm_clk_get(dev, "hclk_nandc");
+	if (IS_ERR(ctrl->hclk)) {
+		dev_err(dev, "get hclk_nandc failed\n");
+		return PTR_ERR(ctrl->hclk);
+	}
+
+	ret = clk_prepare_enable(ctrl->hclk);
+	if (ret)
+		return ret;
+
+	ctrl->clk = devm_clk_get(dev, "clk_nandc");
+	if (!(IS_ERR(ctrl->clk))) {
+		clk_set_rate(ctrl->clk, 150 * 1000 * 1000);
+
+		ret = clk_prepare_enable(ctrl->clk);
+		if (ret)
+			goto err_disable_hclk;
+	} else {
+		dev_dbg(dev, "get clk_nandc failed\n");
+	}
+
+	writel_relaxed(0, ctrl->regs + ctrl->ofs->inten);
+	ret = devm_request_irq(dev, ctrl->irq, rk_nandc_interrupt,
+			       0, "nandc", ctrl);
+	if (ret)
+		goto err_disable_clk;
+
+	init_completion(&ctrl->complete);
+	nand_controller_init(&ctrl->controller);
+	INIT_LIST_HEAD(&ctrl->chips);
+
+	rk_nandc_init(ctrl);
+
+	ret = rk_nandc_chips_init(ctrl);
+	if (ret) {
+		dev_err(dev, "init nand chips failed\n");
+		goto err_disable_clk;
+	}
+
+	platform_set_drvdata(pdev, ctrl);
+
+	return 0;
+
+err_disable_clk:
+	clk_disable_unprepare(ctrl->clk);
+err_disable_hclk:
+	clk_disable_unprepare(ctrl->hclk);
+
+	return ret;
+}
+
+static int rk_nandc_remove(struct platform_device *pdev)
+{
+	struct rk_nand_ctrl *ctrl = platform_get_drvdata(pdev);
+
+	rk_nandc_cleanup_chips(ctrl);
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
+	struct rk_nand_ctrl *ctrl = platform_get_drvdata(pdev);
+
+	rk_nandc_cleanup_chips(ctrl);
+
+	clk_disable_unprepare(ctrl->clk);
+	clk_disable_unprepare(ctrl->hclk);
+	platform_set_drvdata(pdev, NULL);
+}
+
+static const struct rk_nandc_data rk_nandc_V600_data = {
+	.version = VERSION_6,
+	.ofs = (void *)&rk_nandc_V6_reg_offset,
+	.cap = (void *)&rk_nandc_V600_cap,
+};
+
+static const struct rk_nandc_data rk_nandc_V622_data = {
+	.version = VERSION_6,
+	.ofs = (void *)&rk_nandc_V6_reg_offset,
+	.cap = (void *)&rk_nandc_V622_cap,
+};
+
+static const struct rk_nandc_data rk_nandc_V701_data = {
+	.version = VERSION_6,
+	.ofs = (void *)&rk_nandc_V6_reg_offset,
+	.cap = (void *)&rk_nandc_V701_cap,
+};
+
+static const struct rk_nandc_data rk_nandc_V801_data = {
+	.version = VERSION_6,
+	.ofs = (void *)&rk_nandc_V6_reg_offset,
+	.cap = (void *)&rk_nandc_V801_cap,
+};
+
+static const struct rk_nandc_data rk_nandc_V900_data = {
+	.version = VERSION_9,
+	.ofs = (void *)&rk_nandc_V9_reg_offset,
+	.cap = (void *)&rk_nandc_V900_cap,
+};
+
+static const struct of_device_id of_rk_nandc_match[] = {
+	{
+		.compatible = "rockchip,px30-nand-controller",
+		.data = &rk_nandc_V900_data,
+	},
+	{
+		.compatible = "rockchip,rk3066-nand-controller",
+		.data = &rk_nandc_V600_data,
+	},
+	{
+		.compatible = "rockchip,rk3228-nand-controller",
+		.data = &rk_nandc_V701_data,
+	},
+	{
+		.compatible = "rockchip,rk3288-nand-controller",
+		.data = &rk_nandc_V622_data,
+	},
+	{
+		.compatible = "rockchip,rk3308-nand-controller",
+		.data = &rk_nandc_V801_data,
+	},
+	{
+		.compatible = "rockchip,rk3368-nand-controller",
+		.data = &rk_nandc_V622_data,
+	},
+	{
+		.compatible = "rockchip,rv1108-nand-controller",
+		.data = &rk_nandc_V622_data,
+	},
+	{ /* sentinel */ },
+};
+
+static struct platform_driver rk_nandc_driver = {
+	.probe  = rk_nandc_probe,
+	.remove = rk_nandc_remove,
+	.shutdown = rk_nandc_shutdown,
+	.driver = {
+		.name = "rockchip-nand-controller",
+		.of_match_table = of_rk_nandc_match,
+	},
+};
+module_platform_driver(rk_nandc_driver);
+
+MODULE_LICENSE("GPL v2");
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
