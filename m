Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9123145489
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qGhgs4E7xD9k1nPl7lLxYRDItIcUftYjYmB3fh/nsNk=; b=XdWBDijbtwy5C4
	GIuIJrgN/A5heOF4VOiX38S3zyH0kevxA13qZ27Pn4wG8fDG8D8RMWuWmoOBp6w5DHq7l+vCjgxsa
	PN7YRWjF/YVdIiGEBWfxGpXQDmFnJJ41+/tk+9P2NpN7//ExaBz/6xx2+L26tP8fMLtjvsgBY/qYi
	mR9PmlkREFHaVk+w8lu7RfNVPj9JFURGTy9e6oeSVj5YkbFCRDj7rpHS7vaxl8IUneI74hJjB9hRG
	ngYWTU5HgMfZdF6kx40GBOInCg38g3QFvi8qW3pFJlbaKwPFHpuFKpcMiv9EGyp60OnmICsn2cPEm
	r1hywsU/R5cZ5YkPoDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFO3-0001MN-9f; Wed, 22 Jan 2020 12:45:35 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFMv-0007oy-Mv
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:44:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CE1B621F4C;
 Wed, 22 Jan 2020 07:44:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 22 Jan 2020 07:44:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=l1VaytJosL5ty
 zVWqVFsVF7P7oc4gAczxoboxbzqmCQ=; b=Gy3bsy3nU82gPggLfJip64r4gyX5w
 tVI87sxC8wcdfVzRpk+b1QypBAbWnFCEGB/jepVhU9dkOaFioFmYVWFJqlxs2qU9
 OBx00KVEWkVYSxRNI/cJnImUYxkuFwtJkKaqArLLO0sF725+ThzxuwaYpikt8uRT
 IhWOWtpq5/i9BYNsihAk6VuQ9jOcVvlcT9liS4guj1todM9Wuec7E5ie/TMcXprH
 hfRYoiOVWNRwMUDrbr1WstkITml2DpVyCgxI47u49F2PGZ/3IRXxT4SfaLv3RThy
 +GF0Xk9sKE2jEmGQt+OlsUvutRS/jO127LwH/3fPIXm7cd5/dkZYNoymw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=l1VaytJosL5tyzVWqVFsVF7P7oc4gAczxoboxbzqmCQ=; b=RdZMWEW4
 v5Ft8sZpFXQ9oFvfQojjw3uxG+ceLKeyXYCy7pGTRS09qasxnF2b99rUZwCJblHg
 qbop0p9BasIUT31FIWPP82OS1VJM0LF44CazDg7DdqrBKlTvLnvvSJHl9Jjz38VK
 cA0/iV1SchFci0gX/ln0J53rpK8uUunpMJ6AO1eSdwpraYB4Ilu99u3l63heeTqB
 nBUJEa5qSobLkUss2BdFilYwLUOXaLIv2LWaJqYR/JOkfAGnl67vnXmT7kWYh16y
 XIVSIkRghGJnNuV+exdIZpOvBUCcEF0CLdxSkBjn7mwqI1HjS677N4cFfnERMMGh
 Znh8HibAXpynTg==
X-ME-Sender: <xms:pEMoXinKjLDJUjbYYRq6LiHy_gnJ2fyFz4tXecMVFYpVT48cA-5o7g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvddtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:pEMoXo7kxyO34nWlEa1CKVZiJws4k_QI_ehHczV57q075swAwFmT4g>
 <xmx:pEMoXm2i6D2FEaAHvbFGQsz_X4SCraVe2r6MQ0Urp8rD5Hk_997CTw>
 <xmx:pEMoXjE0YBVN0Ah-y2eWp4bkBSOlddxG5IWOK_lW5bj_C-4RNKrK5g>
 <xmx:pEMoXmNevsqBWTDFeboSTb7AnUvsOmXU9Ttnmihza9fyCqia5wTtjg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 537033280059;
 Wed, 22 Jan 2020 07:44:20 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 2/3] iommu: Add Allwinner H6 IOMMU driver
Date: Wed, 22 Jan 2020 13:44:08 +0100
Message-Id: <fe383c3f6fa0db772c87d9d9080add97efe9ba1a.1579696927.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044425_947237_08721F8C 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 drivers/iommu/Kconfig        |   10 +-
 drivers/iommu/Makefile       |    1 +-
 drivers/iommu/sun50i-iommu.c | 1126 +++++++++++++++++++++++++++++++++++-
 3 files changed, 1137 insertions(+)
 create mode 100644 drivers/iommu/sun50i-iommu.c

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 0b9d78a0f3ac..5cbfa6f282e2 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -289,6 +289,16 @@ config ROCKCHIP_IOMMU
 	  Say Y here if you are using a Rockchip SoC that includes an IOMMU
 	  device.
 
+config SUN50I_IOMMU
+	bool "Allwinner H6 IOMMU Support"
+	depends on ARM || ARM64
+	depends on ARCH_SUNXI
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
index 97814cc861ea..43740a755786 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_MTK_IOMMU_V1) += mtk_iommu_v1.o
 obj-$(CONFIG_OMAP_IOMMU) += omap-iommu.o
 obj-$(CONFIG_OMAP_IOMMU_DEBUG) += omap-iommu-debug.o
 obj-$(CONFIG_ROCKCHIP_IOMMU) += rockchip-iommu.o
+obj-$(CONFIG_SUN50I_IOMMU) += sun50i-iommu.o
 obj-$(CONFIG_TEGRA_IOMMU_GART) += tegra-gart.o
 obj-$(CONFIG_TEGRA_IOMMU_SMMU) += tegra-smmu.o
 obj-$(CONFIG_EXYNOS_IOMMU) += exynos-iommu.o
diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
new file mode 100644
index 000000000000..ffca92628006
--- /dev/null
+++ b/drivers/iommu/sun50i-iommu.c
@@ -0,0 +1,1126 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+// Copyright (C) 2016-2018, Allwinner Technology CO., LTD.
+// Copyright (C) 2019-2020, Cerno
+
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
+#define IOMMU_DM_AUT_CTRL_RD_AVAIL(d, m)	(0 << (((d & 1) * 16) + ((m) * 2)))
+#define IOMMU_DM_AUT_CTRL_WR_UNAVAIL(d, m)	(1 << (((d & 1) * 16) + ((m) * 2) + 1))
+#define IOMMU_DM_AUT_CTRL_WR_AVAIL(d, m)	(0 << (((d & 1) * 16) + ((m) * 2) + 1))
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
+	/* Lock to modify the Directory Table */
+	spinlock_t dt_lock;
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
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (!fwspec)
+		return NULL;
+
+	return fwspec->iommu_priv;
+}
+
+static inline u32 iommu_read(struct sun50i_iommu *iommu, u32 offset)
+{
+	return readl(iommu->base + offset);
+}
+
+static inline void iommu_write(struct sun50i_iommu *iommu,
+			       u32 offset, u32 value)
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
+#define SUN50I_IOVA_DTE_SHIFT	20
+#define SUN50I_IOVA_PTE_MASK	GENMASK(19, 12)
+#define SUN50I_IOVA_PTE_SHIFT	12
+#define SUN50I_IOVA_PAGE_MASK	GENMASK(11, 0)
+#define SUN50I_IOVA_PAGE_SHIFT	0
+
+static u32 sun50i_iova_dte_index(dma_addr_t iova)
+{
+	return (u32)(iova & SUN50I_IOVA_DTE_MASK) >> SUN50I_IOVA_DTE_SHIFT;
+}
+
+static u32 sun50i_iova_pte_index(dma_addr_t iova)
+{
+	return (u32)(iova & SUN50I_IOVA_PTE_MASK) >> SUN50I_IOVA_PTE_SHIFT;
+}
+
+static u32 sun50i_iova_page_offset(dma_addr_t iova)
+{
+	return (u32)(iova & SUN50I_IOVA_PAGE_MASK) >> SUN50I_IOVA_PAGE_SHIFT;
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
+#define SUN50I_DTE_PT_VALID		BIT(0)
+
+static inline phys_addr_t sun50i_dte_pt_address(u32 dte)
+{
+	return (phys_addr_t)dte & SUN50I_DTE_PT_ADDRESS_MASK;
+}
+
+static inline bool sun50i_dte_is_pt_valid(u32 dte)
+{
+	return (dte & SUN50I_DTE_PT_ATTRS) == SUN50I_DTE_PT_VALID;
+}
+
+static inline u32 sun50i_mk_dte(dma_addr_t pt_dma)
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
+ * Each page entry willthen have a reference to the domain they are
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
+enum iommu_aci {
+	IOMMU_ACI_DO_NOT_USE = 0,
+	IOMMU_ACI_NONE,
+	IOMMU_ACI_RD,
+	IOMMU_ACI_WR,
+	IOMMU_ACI_RD_WR,
+};
+
+#define SUN50I_PTE_PAGE_ADDRESS_MASK	GENMASK(31, 12)
+#define SUN50I_PTE_ACI_MASK		GENMASK(7, 4)
+#define SUN50I_PTE_ACI_SHIFT		4
+#define SUN50I_PTE_ACI(aci)		((aci) << SUN50I_PTE_ACI_SHIFT)
+#define SUN50I_PTE_PAGE_VALID		BIT(1)
+
+static inline phys_addr_t sun50i_pte_page_address(u32 pte)
+{
+	return (phys_addr_t)pte & SUN50I_PTE_PAGE_ADDRESS_MASK;
+}
+
+static inline enum iommu_aci sun50i_pte_aci(u32 pte)
+{
+	return (pte & SUN50I_PTE_ACI_MASK) >> SUN50I_PTE_ACI_SHIFT;
+}
+
+static inline bool sun50i_pte_is_page_valid(u32 pte)
+{
+	return pte & SUN50I_PTE_PAGE_VALID;
+}
+
+static u32 sun50i_mk_pte(phys_addr_t page, int prot)
+{
+	enum iommu_aci aci;
+	u32 flags = 0;
+
+	if (prot & (IOMMU_READ | IOMMU_WRITE))
+		aci = IOMMU_ACI_RD_WR;
+	else if (prot & IOMMU_READ)
+		aci = IOMMU_ACI_RD;
+	else if (prot & IOMMU_WRITE)
+		aci = IOMMU_ACI_WR;
+	else
+		aci = IOMMU_ACI_NONE;
+
+	flags |= SUN50I_PTE_ACI(aci);
+	page &= SUN50I_PTE_PAGE_ADDRESS_MASK;
+	return page | flags | SUN50I_PTE_PAGE_VALID;
+}
+
+static inline void sun50i_table_flush(struct sun50i_iommu_domain *sun50i_domain,
+				      dma_addr_t dma, unsigned int count)
+{
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
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
+		dev_err(iommu->dev, "Enable flush all request timed out\n");
+
+	return ret;
+}
+
+static int sun50i_iommu_tlb_invalidate(struct sun50i_iommu *iommu,
+				       dma_addr_t iova)
+{
+	int ret;
+	u32 reg;
+
+	assert_spin_locked(&iommu->iommu_lock);
+
+	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_REG, iova);
+	iommu_write(iommu, IOMMU_TLB_IVLD_ADDR_MASK_REG,
+		    SUN50I_PTE_PAGE_ADDRESS_MASK);
+	iommu_write(iommu, IOMMU_TLB_IVLD_ENABLE_REG,
+		    IOMMU_TLB_IVLD_ENABLE_ENABLE);
+
+	ret = readl_poll_timeout(iommu->base + IOMMU_TLB_IVLD_ENABLE_REG,
+				 reg, !(reg & IOMMU_TLB_IVLD_ENABLE_ENABLE),
+				 1, 2000);
+	if (ret)
+		dev_err(iommu->dev, "TLB Invalid timed out\n");
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
+static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun50i_domain,
+				      dma_addr_t iova)
+{
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	u32 *page_table, *dte_addr;
+	phys_addr_t pt_phys;
+	dma_addr_t pt_dma;
+	u32 dte_index, dte;
+
+	assert_spin_locked(&sun50i_domain->dt_lock);
+
+	dte_index = sun50i_iova_dte_index(iova);
+	dte_addr = &sun50i_domain->dt[dte_index];
+	dte = *dte_addr;
+	if (sun50i_dte_is_pt_valid(dte))
+		goto done;
+
+	page_table = kmem_cache_zalloc(iommu->pt_pool, GFP_ATOMIC);
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
+	dte = sun50i_mk_dte(pt_dma);
+	*dte_addr = dte;
+	sun50i_table_flush(sun50i_domain, pt_dma, PT_SIZE);
+	sun50i_table_flush(sun50i_domain, virt_to_phys(dte_addr), 1);
+
+done:
+	pt_phys = sun50i_dte_pt_address(dte);
+	return (u32 *)phys_to_virt(pt_phys);
+}
+
+static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long iova,
+			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	u32 pte_index;
+	u32 *page_table, *pte_addr;
+	unsigned long flags;
+	int ret = 0;
+
+	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
+	page_table = sun50i_dte_get_page_table(sun50i_domain, iova);
+	if (IS_ERR(page_table)) {
+		ret = PTR_ERR(page_table);
+		goto out;
+	}
+
+	pte_index = sun50i_iova_pte_index(iova);
+	pte_addr = &page_table[pte_index];
+	if (sun50i_pte_is_page_valid(*pte_addr)) {
+		phys_addr_t page_phys = sun50i_pte_page_address(*pte_addr);
+		dev_err(iommu->dev,
+			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
+			&iova, &page_phys, &paddr, prot);
+		ret = -EADDRINUSE;
+		goto out;
+	}
+
+	*pte_addr = sun50i_mk_pte(paddr, prot);
+	sun50i_table_flush(sun50i_domain, virt_to_phys(pte_addr), 1);
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+
+	sun50i_iommu_tlb_invalidate(iommu, iova);
+	sun50i_iommu_ptw_invalidate(iommu, iova);
+
+	spin_unlock_irqrestore(&iommu->iommu_lock, flags);
+
+out:
+	spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+	return ret;
+}
+
+static size_t sun50i_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
+				 size_t size, struct iommu_iotlb_gather *gather)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	unsigned long flags;
+	phys_addr_t pt_phys;
+	dma_addr_t pte_dma;
+	u32 *pte_addr;
+	u32 dte;
+
+	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
+
+	dte = sun50i_domain->dt[sun50i_iova_dte_index(iova)];
+	if (!sun50i_dte_is_pt_valid(dte)) {
+		spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+		return 0;
+	}
+
+	pt_phys = sun50i_dte_pt_address(dte);
+	pte_addr = (u32 *)phys_to_virt(pt_phys) + sun50i_iova_pte_index(iova);
+	pte_dma = pt_phys + sun50i_iova_pte_index(iova) * PT_ENTRY_SIZE;
+
+	if (!sun50i_pte_is_page_valid(*pte_addr)) {
+		spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+		return 0;
+	}
+
+	memset(pte_addr, 0, sizeof(*pte_addr));
+	sun50i_table_flush(sun50i_domain, virt_to_phys(pte_addr), 1);
+
+	spin_lock(&iommu->iommu_lock);
+	sun50i_iommu_tlb_invalidate(iommu, iova);
+	sun50i_iommu_ptw_invalidate(iommu, iova);
+	spin_unlock(&iommu->iommu_lock);
+
+	spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+
+	return SZ_4K;
+}
+
+static phys_addr_t sun50i_iommu_iova_to_phys(struct iommu_domain *domain,
+					     dma_addr_t iova)
+{
+	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
+	phys_addr_t pt_phys, phys = 0;
+	unsigned long flags;
+	u32 *page_table;
+	u32 dte, pte;
+
+	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
+
+	dte = sun50i_domain->dt[sun50i_iova_dte_index(iova)];
+	if (!sun50i_dte_is_pt_valid(dte))
+		goto out;
+
+	pt_phys = sun50i_dte_pt_address(dte);
+	page_table = (u32 *)phys_to_virt(pt_phys);
+	pte = page_table[sun50i_iova_pte_index(iova)];
+	if (!sun50i_pte_is_page_valid(pte))
+		goto out;
+
+	phys = sun50i_pte_page_address(pte) + sun50i_iova_page_offset(iova);
+
+out:
+	spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+	return phys;
+}
+
+static struct iommu_domain *sun50i_iommu_domain_alloc(unsigned type)
+{
+	struct sun50i_iommu_domain *sun50i_domain;
+
+	if (type != IOMMU_DOMAIN_DMA && type != IOMMU_DOMAIN_UNMANAGED)
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
+	spin_lock_init(&sun50i_domain->dt_lock);
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
+	struct sun50i_iommu *iommu = sun50i_domain->iommu;
+	unsigned long flags;
+	int i;
+
+	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
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
+		sun50i_table_flush(sun50i_domain, virt_to_phys(dte_addr), 1);
+
+		pt_phys = sun50i_dte_pt_address(dte);
+		dma_unmap_single(iommu->dev, pt_phys, PT_SIZE, DMA_TO_DEVICE);
+
+		page_table = phys_to_virt(pt_phys);
+		kmem_cache_free(iommu->pt_pool, page_table);
+	}
+
+	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
+	sun50i_domain->dt = NULL;
+
+	spin_lock(&iommu->iommu_lock);
+	sun50i_iommu_flush_all_tlb(iommu);
+	spin_unlock(&iommu->iommu_lock);
+
+	spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
+	iommu_put_dma_cookie(domain);
+
+	kfree(sun50i_domain);
+}
+
+static void sun50i_iommu_detach_device(struct iommu_domain *domain,
+				       struct device *dev)
+{
+	struct sun50i_iommu *iommu;
+
+	iommu = sun50i_iommu_from_dev(dev);
+	if (!iommu)
+		return;
+
+	dev_info(dev, "Detaching from IOMMU domain\n");
+
+	if (iommu->domain != domain)
+		return;
+
+	pm_runtime_put_sync(iommu->dev);
+
+	iommu->domain = NULL;
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
+	dev_info(dev, "Attaching to IOMMU domain\n");
+
+	if (iommu->domain == domain)
+		return 0;
+
+	if (iommu->domain)
+		sun50i_iommu_detach_device(iommu->domain, dev);
+
+	iommu->domain = domain;
+	sun50i_domain->iommu = iommu;
+
+	return pm_runtime_get_sync(iommu->dev);
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
+	struct sun50i_iommu *iommu;
+
+	iommu = sun50i_iommu_from_dev(dev);
+	if (!iommu)
+		return;
+
+	iommu_group_remove_device(dev);
+}
+
+static struct iommu_group *sun50i_iommu_device_group(struct device *dev)
+{
+	struct sun50i_iommu *iommu;
+
+	iommu = sun50i_iommu_from_dev(dev);
+	if (!iommu)
+		return NULL;
+
+	return iommu_group_ref_get(iommu->group);
+}
+
+static int sun50i_iommu_of_xlate(struct device *dev,
+				 struct of_phandle_args *args)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	struct platform_device *iommu_pdev;
+	unsigned id = args->args[0];
+
+	iommu_pdev = of_find_device_by_node(args->np);
+	if (WARN_ON(!iommu_pdev))
+		return -EINVAL;
+
+	fwspec->iommu_priv = platform_get_drvdata(iommu_pdev);
+
+	return iommu_fwspec_add_ids(dev, &id, 1);
+}
+
+static struct iommu_ops sun50i_iommu_ops = {
+	.pgsize_bitmap = SZ_4K,
+	.map  = sun50i_iommu_map,
+	.unmap = sun50i_iommu_unmap,
+	.domain_alloc = sun50i_iommu_domain_alloc,
+	.domain_free = sun50i_iommu_domain_free,
+	.attach_dev = sun50i_iommu_attach_device,
+	.detach_dev = sun50i_iommu_detach_device,
+	.add_device = sun50i_iommu_add_device,
+	.remove_device = sun50i_iommu_remove_device,
+	.device_group	= sun50i_iommu_device_group,
+	.of_xlate = sun50i_iommu_of_xlate,
+	.iova_to_phys = sun50i_iommu_iova_to_phys,
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
+	enum iommu_aci aci;
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
+	aci = sun50i_pte_aci(iommu_read(iommu, IOMMU_INT_ERR_DATA_REG(master)));
+
+	switch (aci) {
+		/*
+		 * If we are in the read-only domain, then it means we
+		 * tried to write.
+		 */
+	case IOMMU_ACI_RD:
+		dir = IOMMU_FAULT_WRITE;
+		break;
+
+		/*
+		 * If we are in the write-only domain, then it means
+		 * we tried to read.
+		 */
+	case IOMMU_ACI_WR:
+
+		/*
+		 * If we are in the domain without any permission, we
+		 * can't really tell. Let's default to a read
+		 * operation.
+		 */
+	case IOMMU_ACI_NONE:
+
+		/* WTF? */
+	case IOMMU_ACI_RD_WR:
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
+	sun50i_iommu_tlb_invalidate(iommu, iova);
+	sun50i_iommu_ptw_invalidate(iommu, iova);
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
+	struct resource *res;
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
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	iommu->base = devm_ioremap_resource(&pdev->dev, res);
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
+	pm_runtime_enable(&pdev->dev);
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
+static int __maybe_unused sun50i_iommu_suspend(struct device *dev)
+{
+	struct sun50i_iommu_domain *sun50i_domain;
+	struct sun50i_iommu *iommu;
+	unsigned long flags;
+
+	iommu = dev_get_drvdata(dev);
+	if (!iommu->domain)
+		return 0;
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
+
+	sun50i_domain = to_sun50i_domain(iommu->domain);
+	dma_unmap_single(dev, virt_to_phys(sun50i_domain->dt), DT_SIZE,
+			 DMA_TO_DEVICE);
+
+	return 0;
+}
+
+static int __maybe_unused sun50i_iommu_resume(struct device *dev)
+{
+	struct sun50i_iommu_domain *sun50i_domain;
+	struct sun50i_iommu *iommu;
+	unsigned long flags;
+	dma_addr_t dt_dma;
+	int ret;
+
+	iommu = dev_get_drvdata(dev);
+	if (!iommu->domain)
+		return 0;
+
+	sun50i_domain = to_sun50i_domain(iommu->domain);
+	dt_dma = dma_map_single(dev, sun50i_domain->dt, DT_SIZE, DMA_TO_DEVICE);
+	if (dma_mapping_error(dev, dt_dma)) {
+		dev_err(dev, "Couldn't map L1 Page Table\n");
+		return -ENOMEM;
+	}
+
+	ret = reset_control_deassert(iommu->reset);
+	if (ret)
+		goto err_unmap;
+
+	ret = clk_prepare_enable(iommu->clk);
+	if (ret)
+		goto err_reset_assert;
+
+	/* We rely on the physical address and DMA address being the same */
+	WARN_ON(dt_dma != virt_to_phys(sun50i_domain->dt));
+
+	spin_lock_irqsave(&iommu->iommu_lock, flags);
+
+	iommu_write(iommu, IOMMU_TTB_REG, dt_dma);
+	iommu_write(iommu, IOMMU_TLB_PREFETCH_REG,
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(0) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(1) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(2) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(3) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(4) |
+		    IOMMU_TLB_PREFETCH_MASTER_ENABLE(5));
+	iommu_write(iommu, IOMMU_INT_ENABLE_REG, IOMMU_INT_MASK);
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_NONE),
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_NONE, 5) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_NONE, 5));
+
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD),
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD, 5) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_UNAVAIL(IOMMU_ACI_RD, 5));
+
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_WR),
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_UNAVAIL(IOMMU_ACI_WR, 5) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_WR, 5));
+
+	iommu_write(iommu, IOMMU_DM_AUT_CTRL_REG(IOMMU_ACI_RD_WR),
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 0) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 0) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 1) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 1) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 2) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 2) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 3) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 3) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 4) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 4) |
+		    IOMMU_DM_AUT_CTRL_RD_AVAIL(IOMMU_ACI_RD_WR, 5) |
+		    IOMMU_DM_AUT_CTRL_WR_AVAIL(IOMMU_ACI_RD_WR, 5));
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
+err_unmap:
+	sun50i_domain = to_sun50i_domain(iommu->domain);
+	dma_unmap_single(dev, dt_dma, DT_SIZE, DMA_TO_DEVICE);
+	return ret;
+}
+
+static const struct dev_pm_ops sun50i_iommu_pm_ops = {
+	SET_RUNTIME_PM_OPS(sun50i_iommu_suspend, sun50i_iommu_resume, NULL)
+};
+
+static const struct of_device_id sun50i_iommu_dt[] = {
+	{ .compatible = "allwinner,sun50i-h6-iommu", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, sun50i_iommu_dt);
+
+static struct platform_driver sun50i_iommu_driver = {
+	.probe		= sun50i_iommu_probe,
+	.driver		= {
+		.name			= "sun50i-iommu",
+		.of_match_table 	= sun50i_iommu_dt,
+		.pm			= &sun50i_iommu_pm_ops,
+		.suppress_bind_attrs	= true,
+	}
+};
+
+static int __init sun50i_iommu_init(void)
+{
+	return platform_driver_register(&sun50i_iommu_driver);
+}
+subsys_initcall(sun50i_iommu_init);
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
