Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CAD1C52AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlSB3y9TKlO6esop1lfTbKUkPfy19t0IX1FvrLZkkkg=; b=Uqu8pYovw/oTuu
	PEA+xqYVikiMbpNuVOV2IqesCfGweAWEDfJiIaJ+OzfhZNnfUDDLD6uGy9jQYJffrdYXGrnA4qPPt
	5TfXzLDixsDp9r6pYpmQsO3UXtDObboawUgPnQvUxAW9DS4xAerl2azvvCuKeVcLat5ajuSTMmvj6
	4343QgzyZruWJQFsJZ2anLdVFeNCZdMx25Vkl0/nT4V0NceLpRHVgyVeSZ20CMmVdbmorTENRNEsg
	Bq5f4RNkZlK52J1FSMtIyKezZDWdFZ7M6BWl6sNEEvoU8+VfhmIzjdtwJvanuVHRonQQI3PbyaAmZ
	We+m5Kg8JgME1YQHRpdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuXt-0006MH-0z; Tue, 05 May 2020 10:11:25 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWG-0002nA-8E
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id AC9115C00CF;
 Tue,  5 May 2020 06:09:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Ls9zgGcKsYSrS
 yAiJJR+ujX/9P6Sij4PxuJ1WplH+uo=; b=U/0vh1Ueg9QtMOOgOB8J5ItCAvkTo
 3YrpPUQmldK6v7avD9fc6fZJUj0K5l5CyrnWWfI2yquKJBle5/E13EqLuwY8wn6h
 oSIGf4Yvkimgix1ZgdltzkQ9NlbwiocghlwDctLYVidbZxhCPkgXa68B7jhqnCEB
 oKW/kim27aXAD9wyVFxQsUyhbwda+7VgrafaCsQl4G/bMgLxgcDDuAIBKsx2huEZ
 eXTn9/6S80TmkKnFJnwUNo6vqjM0FCKDW/bmGcAiUwVDuS8bbZAEB4dS0Eu56OMP
 AjeVv8veVuqn7Dg6xQdHnGYC1JsX4xnSYDEqAa6FfpJzvqa2gX7rJ+mCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Ls9zgGcKsYSrSyAiJJR+ujX/9P6Sij4PxuJ1WplH+uo=; b=hQ9lG16T
 XkVMkvCoCXj5N7w+eolpgQ7046SqE3sJANsXs++wUM90Br8IMJ04ThgEj4eNehmD
 qod6z5b/AErAxx64rE0/OhhTroxOnlYUqrxgNubLqFpaC2TdrVZBWYOgEYCTjY4E
 OAYxswJruQROt4aXRogEWAWcZZeQwjwKCgBegVl48ASuIAESO75fDRO68Dx2FLb9
 TnWIeSgugnVdKNKxu/RI+jNNeLWtI3AxlE9tM2XTw6XajbxWUaF89fYkPWEL3ZmP
 +UumEIZTLJEtGwPSEaD3+CUFeqh3E3LbKexWuV/iuFKor4xKnXXc7tv/CVJXpG6M
 a1EwgjH3f5/JJw==
X-ME-Sender: <xms:ZzuxXlsbZ39RgcgGW5EiOJuKo54gbTptOUvwfdItg-rEQXGi4jJl_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ZzuxXhbwRh-d26wH7dg1ov8mi5LISI2TFXCFi2WyXVbyyXeTfo-FiA>
 <xmx:ZzuxXvguT-iL6SW17JxMIm4PER2Pc4TBZ4uYOOyegj65U3LmZD2JMg>
 <xmx:ZzuxXmVMZFqOZfCi563QbSGLe-HtLjD1xFxwln5UHau4s7b0ZFwMZg>
 <xmx:ZzuxXjlklJ2II92ZtzHlRGKaLA4gBBUKKSm2HgYCheO_GPxQ-HxM7w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2A4D73066014;
 Tue,  5 May 2020 06:09:43 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 3/5] iommu: Add Allwinner H6 IOMMU driver
Date: Tue,  5 May 2020 12:09:32 +0200
Message-Id: <dcccd40c46982b6ab2fc1c5bc199d045798fbe8e.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030944_443059_FBE1B4FD 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 has introduced an IOMMU for a few DMA controllers, mostly
video related: the display engine, the video decoders / encoders, the
camera capture controller, etc.

The design is pretty simple compared to other IOMMUs found in SoCs: there's
a single instance, controlling all the masters, with a single address
space.

It also features a performance monitoring unit that allows to retrieve
various informations (per-master and global TLB accesses, hits and misses,
access latency, etc) that isn't supported at the moment.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/iommu/Kconfig        |    9 +-
 drivers/iommu/Makefile       |    1 +-
 drivers/iommu/sun50i-iommu.c | 1065 +++++++++++++++++++++++++++++++++++-
 3 files changed, 1075 insertions(+)
 create mode 100644 drivers/iommu/sun50i-iommu.c

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 58b4a4dbfc78..6e80b0ea7228 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -303,6 +303,15 @@ config ROCKCHIP_IOMMU
 	  Say Y here if you are using a Rockchip SoC that includes an IOMMU
 	  device.
 
+config SUN50I_IOMMU
+	bool "Allwinner H6 IOMMU Support"
+	depends on ARCH_SUNXI || COMPILE_TEST
+	select ARM_DMA_USE_IOMMU
+	select IOMMU_API
+	select IOMMU_DMA
+	help
+	  Support for the IOMMU introduced in the Allwinner H6 SoCs.
+
 config TEGRA_IOMMU_GART
 	bool "Tegra GART IOMMU Support"
 	depends on ARCH_TEGRA_2x_SOC
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 9f33fdb3bb05..57cf4ba5e27c 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_MTK_IOMMU_V1) += mtk_iommu_v1.o
 obj-$(CONFIG_OMAP_IOMMU) += omap-iommu.o
 obj-$(CONFIG_OMAP_IOMMU_DEBUG) += omap-iommu-debug.o
 obj-$(CONFIG_ROCKCHIP_IOMMU) += rockchip-iommu.o
+obj-$(CONFIG_SUN50I_IOMMU) += sun50i-iommu.o
 obj-$(CONFIG_TEGRA_IOMMU_GART) += tegra-gart.o
 obj-$(CONFIG_TEGRA_IOMMU_SMMU) += tegra-smmu.o
 obj-$(CONFIG_EXYNOS_IOMMU) += exynos-iommu.o
diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
new file mode 100644
index 000000000000..d4c3fa2f0f82
--- /dev/null
+++ b/drivers/iommu/sun50i-iommu.c
@@ -0,0 +1,1065 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+// Copyright (C) 2016-2018, Allwinner Technology CO., LTD.
+// Copyright (C) 2019-2020, Cerno
+
+#include <linux/bitfield.h>
+#include <linux/bug.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/dma-direction.h>
+#include <linux/dma-iommu.h>
+#include <linux/dma-mapping.h>
+#include <linux/err.h>
+#include <linux/errno.h>
+#include <linux/interrupt.h>
+#include <linux/iommu.h>
+#include <linux/iopoll.h>
+#include <linux/ioport.h>
+#include <linux/log2.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+#include <linux/sizes.h>
+#include <linux/slab.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+
+#define IOMMU_RESET_REG			0x010
+#define IOMMU_ENABLE_REG		0x020
+#define IOMMU_ENABLE_ENABLE			BIT(0)
+
+#define IOMMU_BYPASS_REG		0x030
+#define IOMMU_AUTO_GATING_REG		0x040
+#define IOMMU_AUTO_GATING_ENABLE		BIT(0)
+
+#define IOMMU_WBUF_CTRL_REG		0x044
+#define IOMMU_OOO_CTRL_REG		0x048
+#define IOMMU_4KB_BDY_PRT_CTRL_REG	0x04c
+#define IOMMU_TTB_REG			0x050
+#define IOMMU_TLB_ENABLE_REG		0x060
+#define IOMMU_TLB_PREFETCH_REG		0x070
+#define IOMMU_TLB_PREFETCH_MASTER_ENABLE(m)	BIT(m)
+
+#define IOMMU_TLB_FLUSH_REG		0x080
+#define IOMMU_TLB_FLUSH_PTW_CACHE		BIT(17)
+#define IOMMU_TLB_FLUSH_MACRO_TLB		BIT(16)
+#define IOMMU_TLB_FLUSH_MICRO_TLB(i)		(BIT(i) & GENMASK(5, 0))
+
+#define IOMMU_TLB_IVLD_ADDR_REG		0x090
+#define IOMMU_TLB_IVLD_ADDR_MASK_REG	0x094
+#define IOMMU_TLB_IVLD_ENABLE_REG	0x098
+#define IOMMU_TLB_IVLD_ENABLE_ENABLE		BIT(0)
+
+#define IOMMU_PC_IVLD_ADDR_REG		0x0a0
+#define IOMMU_PC_IVLD_ENABLE_REG	0x0a8
+#define IOMMU_PC_IVLD_ENABLE_ENABLE		BIT(0)
+
+#define IOMMU_DM_AUT_CTRL_REG(d)	(0x0b0 + ((d) / 2) * 4)
+#define IOMMU_DM_AUT_CTRL_RD_UNAVAIL(d, m)	(1 << (((d & 1) * 16) + ((m) * 2)))
+#define IOMMU_DM_AUT_CTRL_WR_UNAVAIL(d, m)	(1 << (((d & 1) * 16) + ((m) * 2) + 1))
+
+#define IOMMU_DM_AUT_OVWT_REG		0x0d0
+#define IOMMU_INT_ENABLE_REG		0x100
+#define IOMMU_INT_CLR_REG		0x104
+#define IOMMU_INT_STA_REG		0x108
+#define IOMMU_INT_ERR_ADDR_REG(i)	(0x110 + (i) * 4)
+#define IOMMU_INT_ERR_ADDR_L1_REG	0x130
+#define IOMMU_INT_ERR_ADDR_L2_REG	0x134
+#define IOMMU_INT_ERR_DATA_REG(i)	(0x150 + (i) * 4)
+#define IOMMU_L1PG_INT_REG		0x0180
+#define IOMMU_L2PG_INT_REG		0x0184
+
+#define IOMMU_INT_INVALID_L2PG			BIT(17)
+#define IOMMU_INT_INVALID_L1PG			BIT(16)
+#define IOMMU_INT_MASTER_PERMISSION(m)		BIT(m)
+#define IOMMU_INT_MASTER_MASK			(IOMMU_INT_MASTER_PERMISSION(0) | \
+						 IOMMU_INT_MASTER_PERMISSION(1) | \
+						 IOMMU_INT_MASTER_PERMISSION(2) | \
+						 IOMMU_INT_MASTER_PERMISSION(3) | \
+						 IOMMU_INT_MASTER_PERMISSION(4) | \
+						 IOMMU_INT_MASTER_PERMISSION(5))
+#define IOMMU_INT_MASK				(IOMMU_INT_INVALID_L1PG | \
+						 IOMMU_INT_INVALID_L2PG | \
+						 IOMMU_INT_MASTER_MASK)
+
+#define PT_ENTRY_SIZE			sizeof(u32)
+
+#define NUM_DT_ENTRIES			4096
+#define DT_SIZE				(NUM_DT_ENTRIES * PT_ENTRY_SIZE)
+
+#define NUM_PT_ENTRIES			256
+#define PT_SIZE				(NUM_PT_ENTRIES * PT_ENTRY_SIZE)
+
+struct sun50i_iommu {
+	struct iommu_device iommu;
+
+	/* Lock to modify the IOMMU registers */
+	spinlock_t iommu_lock;
+
+	struct device *dev;
+	void __iomem *base;
+	struct reset_control *reset;
+	struct clk *clk;
+
+	struct iommu_domain *domain;
+	struct iommu_group *group;
+	struct kmem_cache *pt_pool;
+};
+
+struct sun50i_iommu_domain {
+	struct iommu_domain domain;
+
+	/* Number of devices attached to the domain */
+	refcount_t refcnt;
+
+	/* L1 Page Table */
+	u32 *dt;
+	dma_addr_t dt_dma;
+
+	struct sun50i_iommu *iommu;
+};
+
+static struct sun50i_iommu_domain *to_sun50i_domain(struct iommu_domain *domain)
+{
+	return container_of(domain, struct sun50i_iommu_domain, domain);
+}
+
+static struct sun50i_iommu *sun50i_iommu_from_dev(struct device *dev)
+{
+	return dev_iommu_priv_get(dev);
+}
+
+static u32 iommu_read(struct sun50i_iommu *iommu, u32 offset)
+{
+	return readl(iommu->base + offset);
+}
+
+static void iommu_write(struct sun50i_iommu *iommu, u32 offset, u32 value)
+{
+	writel(value, iommu->base + offset);
+}
+
+/*
+ * The Allwinner H6 IOMMU uses a 2-level page table.
+ *
+ * The first level is the usual Directory Table (DT), that consists of
+ * 4096 4-bytes Directory Table Entries (DTE), each pointing to a Page
+ * Table (PT).
+ *
+ * Each PT consits of 256 4-bytes Page Table Entries (PTE), each
+ * pointing to a 4kB page of physical memory.
+ *
+ * The IOMMU supports a single DT, pointed by the IOMMU_TTB_REG
+ * register that contains its physical address.
+ */
+
+#define SUN50I_IOVA_DTE_MASK	GENMASK(31, 20)
+#define SUN50I_IOVA_PTE_MASK	GENMASK(19, 12)
+#define SUN50I_IOVA_PAGE_MASK	GENMASK(11, 0)
+
+static u32 sun50i_iova_get_dte_index(dma_addr_t iova)
+{
+	return FIELD_GET(SUN50I_IOVA_DTE_MASK, iova);
+}
+
+static u32 sun50i_iova_get_pte_index(dma_addr_t iova)
+{
+	return FIELD_GET(SUN50I_IOVA_PTE_MASK, iova);
+}
+
+static u32 sun50i_iova_get_page_offset(dma_addr_t iova)
+{
+	return FIELD_GET(SUN50I_IOVA_PAGE_MASK, iova);
+}
+
+/*
+ * Each Directory Table Entry has a Page Table address and a valid
+ * bit:
+
+ * +---------------------+-----------+-+
+ * | PT address          | Reserved  |V|
+ * +---------------------+-----------+-+
+ *  31:10 - Page Table address
+ *   9:2  - Reserved
+ *   1:0  - 1 if the entry is valid
+ */
+
+#define SUN50I_DTE_PT_ADDRESS_MASK	GENMASK(31, 10)
+#define SUN50I_DTE_PT_ATTRS		GENMASK(1, 0)
+#define SUN50I_DTE_PT_VALID		1
+
+static phys_addr_t sun50i_dte_get_pt_address(u32 dte)
+{
+	return (phys_addr_t)dte & SUN50I_DTE_PT_ADDRESS_MASK;
+}
+
+static bool sun50i_dte_is_pt_valid(u32 dte)
+{
+	return (dte & SUN50I_DTE_PT_ATTRS) == SUN50I_DTE_PT_VALID;
+}
+
+static u32 sun50i_mk_dte(dma_addr_t pt_dma)
+{
+	return (pt_dma & SUN50I_DTE_PT_ADDRESS_MASK) | SUN50I_DTE_PT_VALID;
+}
+
+/*
+ * Each PTE has a Page address, an authority index and a valid bit:
+ *
+ * +----------------+-----+-----+-----+---+-----+
+ * | Page address   | Rsv | ACI | Rsv | V | Rsv |
+ * +----------------+-----+-----+-----+---+-----+
+ *  31:12 - Page address
+ *  11:8  - Reserved
+ *   7:4  - Authority Control Index
+ *   3:2  - Reserved
+ *     1  - 1 if the entry is valid
+ *     0  - Reserved
+ *
+ * The way permissions work is that the IOMMU has 16 "domains" that
+ * can be configured to give each masters either read or write
+ * permissions through the IOMMU_DM_AUT_CTRL_REG registers. The domain
+ * 0 seems like the default domain, and its permissions in the
+ * IOMMU_DM_AUT_CTRL_REG are only read-only, so it's not really
+ * useful to enforce any particular permission.
+ *
+ * Each page entry will then have a reference to the domain they are
+ * affected to, so that we can actually enforce them on a per-page
+ * basis.
+ *
+ * In order to make it work with the IOMMU framework, we will be using
+ * 4 different domains, starting at 1: RD_WR, RD, WR and NONE
+ * depending on the permission we want to enforce. Each domain will
+ * have each master setup in the same way, since the IOMMU framework
+ * doesn't seem to restrict page access on a per-device basis. And
+ * then we will use the relevant domain index when generating the page
+ * table entry depending on the permissions we want to be enforced.
+ */
+
+enum sun50i_iommu_aci {
+	SUN50I_IOMMU_ACI_DO_NOT_USE = 0,
+	SUN50I_IOMMU_ACI_NONE,
+	SUN50I_IOMMU_ACI_RD,
+	SUN50I_IOMMU_ACI_WR,
+	SUN50I_IOMMU_ACI_RD_WR,
+};
+
+#define SUN50I_PTE_PAGE_ADDRESS_MASK	GENMASK(31, 12)
+#define SUN50I_PTE_ACI_MASK		GENMASK(7, 4)
+#define SUN50I_PTE_PAGE_VALID		BIT(1)
+
+static phys_addr_t sun50i_pte_get_page_address(u32 pte)
+{
+	return (phys_addr_t)pte & SUN50I_PTE_PAGE_ADDRESS_MASK;
+}
+
+static enum sun50i_iommu_aci sun50i_get_pte_aci(u32 pte)
+{
+	return FIELD_GET(SUN50I_PTE_ACI_MASK, pte);
+}
+
+static bool sun50i_pte_is_page_valid(u32 pte)
+{
+	return pte & SUN50I_PTE_PAGE_VALID;
+}
+
+static u32 sun50i_mk_pte(phys_addr_t page, int prot)
+{
+	enum sun50i_iommu_aci aci;
+	u32 flags = 0;
+
+	if (prot & (IOMMU_READ | IOMMU_WRITE))
+		aci = SUN50I_IOMMU_ACI_RD_WR;
+	else if (prot & IOMMU_READ)
+		aci = SUN50I_IOMMU_ACI_RD;
+	else if (prot & IOMMU_WRITE)
+		aci = SUN50I_IOMMU_ACI_WR;
+	else
+		aci = SUN50I_IOMMU_ACI_NONE;
+
+	flags |= FIELD_PREP(SUN50I_PTE_ACI_MASK, aci);
+	page &= SUN50I_PTE_PAGE_ADDRESS_MASK;
+	return page | flags | SUN50I_PTE_PAGE_VALID;
+}
+
+static void sun50i_table_flush(struct sun50i_iommu_domain *sun50i_domain,
+			       void *vaddr, unsigned int count)
+{
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	dma_addr_t dma = virt_to_phys(vaddr);
+	size_t size = count * PT_ENTRY_SIZE;
+
+	dma_sync_single_for_device(iommu->dev, dma, size, DMA_TO_DEVICE);
+}
+
+static int sun50i_iommu_flush_all_tlb(struct sun50i_iommu *iommu)
+{
+	u32 reg;
+	int ret;
+
+	assert_spin_locked(&iommu->iommu_lock);
+
+	iommu_write(iommu,
+		    IOMMU_TLB_FLUSH_REG,
+		    IOMMU_TLB_FLUSH_PTW_CACHE |
+		    IOMMU_TLB_FLUSH_MACRO_TLB |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(5) |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(4) |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(3) |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(2) |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(1) |
+		    IOMMU_TLB_FLUSH_MICRO_TLB(0));
+
+	ret = readl_poll_timeout(iommu->base + IOMMU_TLB_FLUSH_REG,
+				 reg, !reg,
+				 1, 2000);
+	if (ret)
+		dev_warn(iommu->dev, "TLB Flush timed out!\n");
+
+	return ret;
+}
+
+static int sun50i_iommu_ptw_invalidate(struct sun50i_iommu *iommu,
+				       dma_addr_t iova)
+{
+	int ret;
+	u32 reg;
+
+	assert_spin_locked(&iommu->iommu_lock);
+
+	iommu_write(iommu, IOMMU_PC_IVLD_ADDR_REG, iova);
+	iommu_write(iommu, IOMMU_PC_IVLD_ENABLE_REG,
+		    IOMMU_PC_IVLD_ENABLE_ENABLE);
+
+	ret = readl_poll_timeout(iommu->base + IOMMU_PC_IVLD_ENABLE_REG,
+				 reg, !(reg & IOMMU_PC_IVLD_ENABLE_ENABLE),
+				 1, 2000);
+	if (ret)
+		dev_err(iommu->dev, "PTW cache invalid timed out\n");
+
+	return ret;
+}
+
+static void sun50i_iommu_flush_iotlb_all(struct iommu_domain *domain)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	unsigned long flags;
+
+	/*
+	 * At boot, we'll have a first call into .flush_iotlb_all right after
+	 * .add_device, and since we link our (single) domain to our iommu in
+	 * the .attach_device callback, we don't have that pointer set.
+	 *
+	 * It shouldn't really be any trouble to ignore it though since we flush
+	 * all caches as part of the device powerup.
+	 */
+	if (!iommu)
+		return;
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+	sun50i_iommu_flush_all_tlb(iommu);
+	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+}
+
+static void sun50i_iommu_iotlb_sync(struct iommu_domain *domain,
+				    struct iommu_iotlb_gather *gather)
+{
+	sun50i_iommu_flush_iotlb_all(domain);
+}
+
+static int sun50i_iommu_enable(struct sun50i_iommu *iommu)
+{
+	struct sun50i_iommu_domain *sun50i_domain;
+	unsigned long flags;
+	int ret;
+
+	if (!iommu->domain)
+		return 0;
+
+	sun50i_domain = to_sun50i_domain(iommu->domain);
+
+	ret = reset_control_deassert(iommu->reset);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(iommu->clk);
+	if (ret)
+		goto err_reset_assert;
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+
+	iommu_write(iommu, IOMMU_TTB_REG, sun50i_domain->dt_dma);
+	iommu_write(iommu, IOMMU_TLB_PREFETCH_REG,
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(0) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(1) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(2) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(3) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(4) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(5));
+	iommu_write(iommu, IOMMU_INT_ENABLE_REG, IOMMU_INT_MASK);
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(SUN50I_IOMMU_ACI_NONE),
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 5) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_NONE, 5));
+
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(SUN50I_IOMMU_ACI_RD),
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(SUN50I_IOMMU_ACI_RD, 5));
+
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(SUN50I_IOMMU_ACI_WR),
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(SUN50I_IOMMU_ACI_WR, 5));
+
+	ret = sun50i_iommu_flush_all_tlb(iommu);
+	if (ret) {
+		spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+		goto err_clk_disable;
+	}
+
+	iommu_write(iommu, IOMMU_AUTO_GATING_REG, IOMMU_AUTO_GATING_ENABLE);
+	iommu_write(iommu, IOMMU_ENABLE_REG, IOMMU_ENABLE_ENABLE);
+
+	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+
+	return 0;
+
+err_clk_disable:
+	clk_disable_unprepare(iommu->clk);
+
+err_reset_assert:
+	reset_control_assert(iommu->reset);
+
+	return ret;
+}
+
+static void sun50i_iommu_disable(struct sun50i_iommu *iommu)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+
+	iommu_write(iommu, IOMMU_ENABLE_REG, 0);
+	iommu_write(iommu, IOMMU_TTB_REG, 0);
+
+	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+
+	clk_disable_unprepare(iommu->clk);
+	reset_control_assert(iommu->reset);
+}
+
+static void *sun50i_iommu_alloc_page_table(struct sun50i_iommu *iommu,
+					   gfp_t gfp)
+{
+	dma_addr_t pt_dma;
+	u32 *page_table;
+
+	page_table = kmem_cache_zalloc(iommu->pt_pool, gfp);
+	if (!page_table)
+		return ERR_PTR(-ENOMEM);
+
+	pt_dma = dma_map_single(iommu->dev, page_table, PT_SIZE, DMA_TO_DEVICE);
+	if (dma_mapping_error(iommu->dev, pt_dma)) {
+		dev_err(iommu->dev, "Couldn't map L2 Page Table\n");
+		kmem_cache_free(iommu->pt_pool, page_table);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	/* We rely on the physical address and DMA address being the same */
+	WARN_ON(pt_dma != virt_to_phys(page_table));
+
+	return page_table;
+}
+
+static void sun50i_iommu_free_page_table(struct sun50i_iommu *iommu,
+					 u32 *page_table)
+{
+	phys_addr_t pt_phys = virt_to_phys(page_table);
+
+	dma_unmap_single(iommu->dev, pt_phys, PT_SIZE, DMA_TO_DEVICE);
+	kmem_cache_free(iommu->pt_pool, page_table);
+}
+
+static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun50i_domain,
+				      dma_addr_t iova, gfp_t gfp)
+{
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	unsigned long flags;
+	u32 *page_table;
+	u32 *dte_addr;
+	u32 old_dte;
+	u32 dte;
+
+	dte_addr = &sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
+	dte = *dte_addr;
+	if (sun50i_dte_is_pt_valid(dte)) {
+		phys_addr_t pt_phys = sun50i_dte_get_pt_address(dte);
+		return (u32 *)phys_to_virt(pt_phys);
+	}
+
+	page_table = sun50i_iommu_alloc_page_table(iommu, gfp);
+	if (IS_ERR(page_table))
+		return page_table;
+
+	dte = sun50i_mk_dte(virt_to_phys(page_table));
+	old_dte = cmpxchg(dte_addr, 0, dte);
+	if (old_dte) {
+		phys_addr_t installed_pt_phys =
+			sun50i_dte_get_pt_address(old_dte);
+		u32 *installed_pt = phys_to_virt(installed_pt_phys);
+		u32 *drop_pt = page_table;
+
+		page_table = installed_pt;
+		dte = old_dte;
+		sun50i_iommu_free_page_table(iommu, drop_pt);
+	}
+
+	sun50i_table_flush(sun50i_domain, page_table, PT_SIZE);
+	sun50i_table_flush(sun50i_domain, dte_addr, 1);
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+	sun50i_iommu_ptw_invalidate(iommu, iova);
+	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+
+	return page_table;
+}
+
+static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long iova,
+			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	u32 pte_index;
+	u32 *page_table, *pte_addr;
+	int ret = 0;
+
+	page_table = sun50i_dte_get_page_table(sun50i_domain, iova, gfp);
+	if (IS_ERR(page_table)) {
+		ret = PTR_ERR(page_table);
+		goto out;
+	}
+
+	pte_index = sun50i_iova_get_pte_index(iova);
+	pte_addr = &page_table[pte_index];
+	if (unlikely(sun50i_pte_is_page_valid(*pte_addr))) {
+		phys_addr_t page_phys = sun50i_pte_get_page_address(*pte_addr);
+		dev_err(iommu->dev,
+			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
+			&iova, &page_phys, &paddr, prot);
+		ret = -EBUSY;
+		goto out;
+	}
+
+	*pte_addr = sun50i_mk_pte(paddr, prot);
+	sun50i_table_flush(sun50i_domain, pte_addr, 1);
+
+out:
+	return ret;
+}
+
+static size_t sun50i_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
+				 size_t size, struct iommu_iotlb_gather *gather)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	phys_addr_t pt_phys;
+	dma_addr_t pte_dma;
+	u32 *pte_addr;
+	u32 dte;
+
+	dte = sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
+	if (!sun50i_dte_is_pt_valid(dte))
+		return 0;
+
+	pt_phys = sun50i_dte_get_pt_address(dte);
+	pte_addr = (u32 *)phys_to_virt(pt_phys) + sun50i_iova_get_pte_index(iova);
+	pte_dma = pt_phys + sun50i_iova_get_pte_index(iova) * PT_ENTRY_SIZE;
+
+	if (!sun50i_pte_is_page_valid(*pte_addr))
+		return 0;
+
+	memset(pte_addr, 0, sizeof(*pte_addr));
+	sun50i_table_flush(sun50i_domain, pte_addr, 1);
+
+	spin_lock(&iommu->iommu_lock);
+	sun50i_iommu_ptw_invalidate(iommu, iova);
+	spin_unlock(&iommu->iommu_lock);
+
+	return SZ_4K;
+}
+
+static phys_addr_t sun50i_iommu_iova_to_phys(struct iommu_domain *domain,
+					     dma_addr_t iova)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	phys_addr_t pt_phys;
+	u32 *page_table;
+	u32 dte, pte;
+
+	dte = sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
+	if (!sun50i_dte_is_pt_valid(dte))
+		return 0;
+
+	pt_phys = sun50i_dte_get_pt_address(dte);
+	page_table = (u32 *)phys_to_virt(pt_phys);
+	pte = page_table[sun50i_iova_get_pte_index(iova)];
+	if (!sun50i_pte_is_page_valid(pte))
+		return 0;
+
+	return sun50i_pte_get_page_address(pte) +
+		sun50i_iova_get_page_offset(iova);
+}
+
+static struct iommu_domain *sun50i_iommu_domain_alloc(unsigned type)
+{
+	struct sun50i_iommu_domain *sun50i_domain;
+
+	if (type != IOMMU_DOMAIN_DMA &&
+	    type != IOMMU_DOMAIN_IDENTITY &&
+	    type != IOMMU_DOMAIN_UNMANAGED)
+		return NULL;
+
+	sun50i_domain = kzalloc(sizeof(*sun50i_domain), GFP_KERNEL);
+	if (!sun50i_domain)
+		return NULL;
+
+	if (type == IOMMU_DOMAIN_DMA &&
+	    iommu_get_dma_cookie(&sun50i_domain->domain))
+		goto err_free_domain;
+
+	sun50i_domain->dt = (u32 *)__get_free_pages(GFP_KERNEL,
+						    get_order(DT_SIZE));
+	if (!sun50i_domain->dt)
+		goto err_put_cookie;
+	memset(sun50i_domain->dt, 0, DT_SIZE);
+
+	refcount_set(&sun50i_domain->refcnt, 1);
+
+	sun50i_domain->domain.geometry.aperture_start = 0;
+	sun50i_domain->domain.geometry.aperture_end = DMA_BIT_MASK(32);
+	sun50i_domain->domain.geometry.force_aperture = true;
+
+	return &sun50i_domain->domain;
+
+err_put_cookie:
+	if (type == IOMMU_DOMAIN_DMA)
+		iommu_put_dma_cookie(&sun50i_domain->domain);
+
+err_free_domain:
+	kfree(sun50i_domain);
+
+	return NULL;
+}
+
+static void sun50i_iommu_domain_free(struct iommu_domain *domain)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+
+	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
+	sun50i_domain->dt = NULL;
+
+	iommu_put_dma_cookie(domain);
+
+	kfree(sun50i_domain);
+}
+
+static int sun50i_iommu_attach_domain(struct sun50i_iommu *iommu,
+				      struct sun50i_iommu_domain *sun50i_domain)
+{
+	iommu->domain = &sun50i_domain->domain;
+	sun50i_domain->iommu = iommu;
+
+	sun50i_domain->dt_dma = dma_map_single(iommu->dev, sun50i_domain->dt,
+					       DT_SIZE, DMA_TO_DEVICE);
+	if (dma_mapping_error(iommu->dev, sun50i_domain->dt_dma)) {
+		dev_err(iommu->dev, "Couldn't map L1 Page Table\n");
+		return -ENOMEM;
+	}
+
+	return sun50i_iommu_enable(iommu);
+}
+
+static void sun50i_iommu_detach_domain(struct sun50i_iommu *iommu,
+				       struct sun50i_iommu_domain *sun50i_domain)
+{
+	unsigned int i;
+
+	for (i = 0; i < NUM_DT_ENTRIES; i++) {
+		phys_addr_t pt_phys;
+		u32 *page_table;
+		u32 *dte_addr;
+		u32 dte;
+
+		dte_addr = &sun50i_domain->dt[i];
+		dte = *dte_addr;
+		if (!sun50i_dte_is_pt_valid(dte))
+			continue;
+
+		memset(dte_addr, 0, sizeof(*dte_addr));
+		sun50i_table_flush(sun50i_domain, dte_addr, 1);
+
+		pt_phys = sun50i_dte_get_pt_address(dte);
+		page_table = phys_to_virt(pt_phys);
+		sun50i_iommu_free_page_table(iommu, page_table);
+	}
+
+
+	sun50i_iommu_disable(iommu);
+
+	dma_unmap_single(iommu->dev, virt_to_phys(sun50i_domain->dt),
+			 DT_SIZE, DMA_TO_DEVICE);
+
+	iommu->domain = NULL;
+}
+
+static void sun50i_iommu_detach_device(struct iommu_domain *domain,
+				       struct device *dev)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = dev_iommu_priv_get(dev);
+
+	dev_dbg(dev, "Detaching from IOMMU domain\n");
+
+	if (iommu->domain != domain)
+		return;
+
+	if (refcount_dec_and_test(&sun50i_domain->refcnt))
+		sun50i_iommu_detach_domain(iommu, sun50i_domain);
+}
+
+static int sun50i_iommu_attach_device(struct iommu_domain *domain,
+				      struct device *dev)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu;
+
+	iommu = sun50i_iommu_from_dev(dev);
+	if (!iommu)
+		return -ENODEV;
+
+	dev_dbg(dev, "Attaching to IOMMU domain\n");
+
+	refcount_inc(&sun50i_domain->refcnt);
+
+	if (iommu->domain == domain)
+		return 0;
+
+	if (iommu->domain)
+		sun50i_iommu_detach_device(iommu->domain, dev);
+
+	sun50i_iommu_attach_domain(iommu, sun50i_domain);
+
+	return 0;
+}
+
+static int sun50i_iommu_add_device(struct device *dev)
+{
+	struct sun50i_iommu *iommu;
+	struct iommu_group *group;
+
+	iommu = sun50i_iommu_from_dev(dev);
+	if (!iommu)
+		return -ENODEV;
+
+	group = iommu_group_get_for_dev(dev);
+	if (IS_ERR(group))
+		return PTR_ERR(group);
+
+	iommu_group_put(group);
+
+	return 0;
+}
+
+static void sun50i_iommu_remove_device(struct device *dev)
+{
+	iommu_group_remove_device(dev);
+}
+
+static struct iommu_group *sun50i_iommu_device_group(struct device *dev)
+{
+	struct sun50i_iommu *iommu = sun50i_iommu_from_dev(dev);
+
+	return iommu_group_ref_get(iommu->group);
+}
+
+static int sun50i_iommu_of_xlate(struct device *dev,
+				 struct of_phandle_args *args)
+{
+	struct platform_device *iommu_pdev = of_find_device_by_node(args->np);
+	unsigned id = args->args[0];
+
+	dev_iommu_priv_set(dev, platform_get_drvdata(iommu_pdev));
+
+	return iommu_fwspec_add_ids(dev, &id, 1);
+}
+
+static struct iommu_ops sun50i_iommu_ops = {
+	.pgsize_bitmap	= SZ_4K,
+	.add_device	= sun50i_iommu_add_device,
+	.attach_dev	= sun50i_iommu_attach_device,
+	.detach_dev	= sun50i_iommu_detach_device,
+	.device_group	= sun50i_iommu_device_group,
+	.domain_alloc	= sun50i_iommu_domain_alloc,
+	.domain_free	= sun50i_iommu_domain_free,
+	.flush_iotlb_all = sun50i_iommu_flush_iotlb_all,
+	.iotlb_sync	= sun50i_iommu_iotlb_sync,
+	.iova_to_phys	= sun50i_iommu_iova_to_phys,
+	.map		= sun50i_iommu_map,
+	.of_xlate	= sun50i_iommu_of_xlate,
+	.remove_device	= sun50i_iommu_remove_device,
+	.unmap		= sun50i_iommu_unmap,
+};
+
+static void sun50i_iommu_report_fault(struct sun50i_iommu *iommu,
+				      unsigned master, phys_addr_t iova,
+				      unsigned prot)
+{
+	dev_err(iommu->dev, "Page fault for %pad (master %d, dir %s)\n",
+		&iova, master, (prot == IOMMU_FAULT_WRITE) ? "wr" : "rd");
+
+	if (iommu->domain)
+		report_iommu_fault(iommu->domain, iommu->dev, iova, prot);
+	else
+		dev_err(iommu->dev, "Page fault while iommu not attached to any domain?\n");
+}
+
+static phys_addr_t sun50i_iommu_handle_pt_irq(struct sun50i_iommu *iommu,
+					      unsigned addr_reg,
+					      unsigned blame_reg)
+{
+	phys_addr_t iova;
+	unsigned master;
+	u32 blame;
+
+	assert_spin_locked(&iommu->iommu_lock);
+
+	iova = iommu_read(iommu, addr_reg);
+	blame = iommu_read(iommu, blame_reg);
+	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
+
+	/*
+	 * If the address is not in the page table, we can't get what
+	 * operation triggered the fault. Assume it's a read
+	 * operation.
+	 */
+	sun50i_iommu_report_fault(iommu, master, iova, IOMMU_FAULT_READ);
+
+	return iova;
+}
+
+static phys_addr_t sun50i_iommu_handle_perm_irq(struct sun50i_iommu *iommu)
+{
+	enum sun50i_iommu_aci aci;
+	phys_addr_t iova;
+	unsigned master;
+	unsigned dir;
+	u32 blame;
+
+	assert_spin_locked(&iommu->iommu_lock);
+
+	blame = iommu_read(iommu, IOMMU_INT_STA_REG);
+	master = ilog2(blame & IOMMU_INT_MASTER_MASK);
+	iova = iommu_read(iommu, IOMMU_INT_ERR_ADDR_REG(master));
+	aci = sun50i_get_pte_aci(iommu_read(iommu,
+					    IOMMU_INT_ERR_DATA_REG(master)));
+
+	switch (aci) {
+		/*
+		 * If we are in the read-only domain, then it means we
+		 * tried to write.
+		 */
+	case SUN50I_IOMMU_ACI_RD:
+		dir = IOMMU_FAULT_WRITE;
+		break;
+
+		/*
+		 * If we are in the write-only domain, then it means
+		 * we tried to read.
+		 */
+	case SUN50I_IOMMU_ACI_WR:
+
+		/*
+		 * If we are in the domain without any permission, we
+		 * can't really tell. Let's default to a read
+		 * operation.
+		 */
+	case SUN50I_IOMMU_ACI_NONE:
+
+		/* WTF? */
+	case SUN50I_IOMMU_ACI_RD_WR:
+	default:
+		dir = IOMMU_FAULT_READ;
+		break;
+	}
+
+	/*
+	 * If the address is not in the page table, we can't get what
+	 * operation triggered the fault. Assume it's a read
+	 * operation.
+	 */
+	sun50i_iommu_report_fault(iommu, master, iova, dir);
+
+	return iova;
+}
+
+static irqreturn_t sun50i_iommu_irq(int irq, void *dev_id)
+{
+	struct sun50i_iommu *iommu = dev_id;
+	phys_addr_t iova;
+	u32 status;
+
+	spin_lock(&iommu->iommu_lock);
+
+	status = iommu_read(iommu, IOMMU_INT_STA_REG);
+	if (!(status & IOMMU_INT_MASK)) {
+		spin_unlock(&iommu->iommu_lock);
+		return IRQ_NONE;
+	}
+
+	if (status & IOMMU_INT_INVALID_L2PG)
+		iova = sun50i_iommu_handle_pt_irq(iommu,
+						  IOMMU_INT_ERR_ADDR_L2_REG,
+						  IOMMU_L2PG_INT_REG);
+	else if (status & IOMMU_INT_INVALID_L1PG)
+		iova = sun50i_iommu_handle_pt_irq(iommu,
+						  IOMMU_INT_ERR_ADDR_L1_REG,
+						  IOMMU_L1PG_INT_REG);
+	else
+		iova = sun50i_iommu_handle_perm_irq(iommu);
+
+	iommu_write(iommu, IOMMU_INT_CLR_REG, status);
+
+	iommu_write(iommu, IOMMU_RESET_REG, ~status);
+	iommu_write(iommu, IOMMU_RESET_REG, status);
+
+	spin_unlock(&iommu->iommu_lock);
+
+	return IRQ_HANDLED;
+}
+
+static int sun50i_iommu_probe(struct platform_device *pdev)
+{
+	struct sun50i_iommu *iommu;
+	int ret, irq;
+
+	iommu = devm_kzalloc(&pdev->dev, sizeof(*iommu), GFP_KERNEL);
+	if (!iommu)
+		return -ENOMEM;
+	spin_lock_init(&iommu->iommu_lock);
+	platform_set_drvdata(pdev, iommu);
+	iommu->dev = &pdev->dev;
+
+	iommu->pt_pool = kmem_cache_create(dev_name(&pdev->dev),
+					   PT_SIZE, PT_SIZE,
+					   SLAB_HWCACHE_ALIGN,
+					   NULL);
+	if (!iommu->pt_pool)
+		return -ENOMEM;
+
+	iommu->group = iommu_group_alloc();
+	if (IS_ERR(iommu->group)) {
+		ret = PTR_ERR(iommu->group);
+		goto err_free_cache;
+	}
+
+	iommu->base = devm_platform_ioremap_resource(pdev, 0);
+	if (!iommu->base) {
+		ret = PTR_ERR(iommu->base);
+		goto err_free_group;
+	}
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		ret = irq;
+		goto err_free_group;
+	}
+
+	iommu->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(iommu->clk)) {
+		dev_err(&pdev->dev, "Couldn't get our clock.\n");
+		ret = PTR_ERR(iommu->clk);
+		goto err_free_group;
+	}
+
+	iommu->reset = devm_reset_control_get(&pdev->dev, NULL);
+	if (IS_ERR(iommu->reset)) {
+		dev_err(&pdev->dev, "Couldn't get our reset line.\n");
+		ret = PTR_ERR(iommu->reset);
+		goto err_free_group;
+	}
+
+	ret = iommu_device_sysfs_add(&iommu->iommu, &pdev->dev,
+				     NULL, dev_name(&pdev->dev));
+	if (ret)
+		goto err_free_group;
+
+	iommu_device_set_ops(&iommu->iommu, &sun50i_iommu_ops);
+	iommu_device_set_fwnode(&iommu->iommu, &pdev->dev.of_node->fwnode);
+
+	ret = iommu_device_register(&iommu->iommu);
+	if (ret)
+		goto err_remove_sysfs;
+
+	ret = devm_request_irq(&pdev->dev, irq, sun50i_iommu_irq, 0,
+			       dev_name(&pdev->dev), iommu);
+	if (ret < 0)
+		goto err_unregister;
+
+	bus_set_iommu(&platform_bus_type, &sun50i_iommu_ops);
+
+	return 0;
+
+err_unregister:
+	iommu_device_unregister(&iommu->iommu);
+
+err_remove_sysfs:
+	iommu_device_sysfs_remove(&iommu->iommu);
+
+err_free_group:
+	iommu_group_put(iommu->group);
+
+err_free_cache:
+	kmem_cache_destroy(iommu->pt_pool);
+
+	return ret;
+}
+
+static const struct of_device_id sun50i_iommu_dt[] = {
+	{ .compatible = "allwinner,sun50i-h6-iommu", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
+
+static struct platform_driver sun50i_iommu_driver = {
+	.driver		= {
+		.name			= "sun50i-iommu",
+		.of_match_table 	= sun50i_iommu_dt,
+		.suppress_bind_attrs	= true,
+	}
+};
+builtin_platform_driver_probe(sun50i_iommu_driver, sun50i_iommu_probe);
+
+MODULE_DESCRIPTION("Allwinner H6 IOMMU driver");
+MODULE_AUTHOR("Maxime Ripard <maxime@cerno.tech>");
+MODULE_AUTHOR("zhuxianbin <zhuxianbin@allwinnertech.com>");
+MODULE_LICENSE("Dual BSD/GPL");
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
