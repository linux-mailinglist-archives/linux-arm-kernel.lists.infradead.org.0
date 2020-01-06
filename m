Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A96130CD2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 06:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eqYC44892CBqGkDq35IsVc2FwuS9lavUfTayMrLCcbE=; b=RWr
	CgGDcYNi44wf1y8rXVEDSdOO/wjSr7OIVBYTC2Mx4HuZkzzMiK2mQaehhXtVW+8rTQkxETn835ydr
	xHaJNLbEExyAnq4T37kzb5wE9pVlBWsLMHWJlCGNrikAO+tPnqZsDCekohhY3j7nTpcxwqL/I1Uj3
	DoeiNxL75qmv2Wy2YUzTVBavAJNYX4mgxDC1QHtTtrj9+amvWlXE4xpfjIK4Kn0RJlW+hb0KS45iX
	OSR/Dk4Tn7yyZEAO3fJK5+PR0W33xE3D4XF0gdAzeMfa3plr9MPidfcpyrfc/MNIVQkjzu36oZN+V
	VoWnJ7HCAsabj57ZWO1BaGpvyXAV6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioKV4-0002Ga-Es; Mon, 06 Jan 2020 05:00:22 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioKUv-0002Fx-HQ; Mon, 06 Jan 2020 05:00:16 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 0064xHoO010152;
 Mon, 6 Jan 2020 13:59:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 0064xHoO010152
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578286758;
 bh=wNeUaeXWtK/+S7lFZXnuNH272cAIQBfFknfakmVGusc=;
 h=From:To:Cc:Subject:Date:From;
 b=BYN8AJzgiUJrYQPy+sNx8dwZd9/oJ4njXZ5rtrr9RxFIOXAbWG+d23H+WwMx8tYox
 HB6IubK+eWoZxLvs4arxiJDEtig1Q9EGeEStnYJiOqP2/jwPOWnKN4Q5AUqCVWkgvh
 P7wEW2vjZcczooyDU7LLjzaugkp8AVKNCpLPJAKQxkR2trPs57iS4DiAHP+PiXfZ5+
 GwCX0GZmJM1tnuzgP7kQ1FfhBpwpQdOVnGJ1/w4keHbLbeYi2JJkC4+Wh+ym0w82o/
 0yv4e27htoQQVCcgyYvtgPRlzLgfINUo6KNw8BVWPBfIuFzKFMWVuTjJlw0ge2j6fH
 WvjyLLd9r6Krw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] treewide: remove redundent IS_ERR() before error code check
Date: Mon,  6 Jan 2020 13:58:33 +0900
Message-Id: <20200106045833.1725-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_210013_922128_9297B6B4 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-acpi@vger.kernel.org, linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'PTR_ERR(p) == -E*' is a stronger condition than IS_ERR(p).
Hence, IS_ERR(p) is unneeded.

The semantic patch that generates this commit is as follows:

// <smpl>
@@
expression ptr;
constant error_code;
@@
-IS_ERR(ptr) && (PTR_ERR(ptr) == - error_code)
+PTR_ERR(ptr) == - error_code
// </smpl>

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 crypto/af_alg.c                      | 2 +-
 drivers/acpi/scan.c                  | 2 +-
 drivers/char/hw_random/bcm2835-rng.c | 2 +-
 drivers/char/hw_random/omap-rng.c    | 4 ++--
 drivers/clk/clk.c                    | 2 +-
 drivers/dma/mv_xor_v2.c              | 2 +-
 drivers/gpio/gpiolib-devres.c        | 2 +-
 drivers/gpio/gpiolib-of.c            | 8 ++++----
 drivers/gpio/gpiolib.c               | 2 +-
 drivers/i2c/busses/i2c-mv64xxx.c     | 5 ++---
 drivers/i2c/busses/i2c-synquacer.c   | 2 +-
 drivers/mtd/ubi/build.c              | 2 +-
 drivers/of/device.c                  | 2 +-
 drivers/pci/controller/pci-tegra.c   | 2 +-
 drivers/phy/phy-core.c               | 4 ++--
 drivers/spi/spi-orion.c              | 3 +--
 drivers/video/fbdev/imxfb.c          | 2 +-
 fs/ext4/super.c                      | 2 +-
 fs/f2fs/node.c                       | 2 +-
 fs/ocfs2/suballoc.c                  | 2 +-
 fs/sysfs/group.c                     | 2 +-
 net/core/dev.c                       | 2 +-
 net/core/filter.c                    | 2 +-
 net/xfrm/xfrm_policy.c               | 2 +-
 sound/soc/codecs/ak4104.c            | 3 +--
 sound/soc/codecs/cs4270.c            | 3 +--
 sound/soc/codecs/tlv320aic32x4.c     | 6 ++----
 sound/soc/sunxi/sun4i-spdif.c        | 2 +-
 28 files changed, 35 insertions(+), 41 deletions(-)

diff --git a/crypto/af_alg.c b/crypto/af_alg.c
index 0dceaabc6321..0cc82bec0657 100644
--- a/crypto/af_alg.c
+++ b/crypto/af_alg.c
@@ -169,7 +169,7 @@ static int alg_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
 	sa->salg_name[sizeof(sa->salg_name) + addr_len - sizeof(*sa) - 1] = 0;
 
 	type = alg_get_type(sa->salg_type);
-	if (IS_ERR(type) && PTR_ERR(type) == -ENOENT) {
+	if (PTR_ERR(type) == -ENOENT) {
 		request_module("algif-%s", sa->salg_type);
 		type = alg_get_type(sa->salg_type);
 	}
diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
index 915650bf519f..6d3448895382 100644
--- a/drivers/acpi/scan.c
+++ b/drivers/acpi/scan.c
@@ -1462,7 +1462,7 @@ int acpi_dma_configure(struct device *dev, enum dev_dma_attr attr)
 	iort_dma_setup(dev, &dma_addr, &size);
 
 	iommu = iort_iommu_configure(dev);
-	if (IS_ERR(iommu) && PTR_ERR(iommu) == -EPROBE_DEFER)
+	if (PTR_ERR(iommu) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
 	arch_setup_dma_ops(dev, dma_addr, size,
diff --git a/drivers/char/hw_random/bcm2835-rng.c b/drivers/char/hw_random/bcm2835-rng.c
index d2a5791eb49f..cbf5eaea662c 100644
--- a/drivers/char/hw_random/bcm2835-rng.c
+++ b/drivers/char/hw_random/bcm2835-rng.c
@@ -157,7 +157,7 @@ static int bcm2835_rng_probe(struct platform_device *pdev)
 
 	/* Clock is optional on most platforms */
 	priv->clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(priv->clk) && PTR_ERR(priv->clk) == -EPROBE_DEFER)
+	if (PTR_ERR(priv->clk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
 	priv->rng.name = pdev->name;
diff --git a/drivers/char/hw_random/omap-rng.c b/drivers/char/hw_random/omap-rng.c
index 0ed07d16ec8e..65952393e1bb 100644
--- a/drivers/char/hw_random/omap-rng.c
+++ b/drivers/char/hw_random/omap-rng.c
@@ -476,7 +476,7 @@ static int omap_rng_probe(struct platform_device *pdev)
 	}
 
 	priv->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(priv->clk) && PTR_ERR(priv->clk) == -EPROBE_DEFER)
+	if (PTR_ERR(priv->clk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	if (!IS_ERR(priv->clk)) {
 		ret = clk_prepare_enable(priv->clk);
@@ -488,7 +488,7 @@ static int omap_rng_probe(struct platform_device *pdev)
 	}
 
 	priv->clk_reg = devm_clk_get(&pdev->dev, "reg");
-	if (IS_ERR(priv->clk_reg) && PTR_ERR(priv->clk_reg) == -EPROBE_DEFER)
+	if (PTR_ERR(priv->clk_reg) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	if (!IS_ERR(priv->clk_reg)) {
 		ret = clk_prepare_enable(priv->clk_reg);
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 6a11239ccde3..3c27699487c1 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -429,7 +429,7 @@ static void clk_core_fill_parent_index(struct clk_core *core, u8 index)
 			parent = ERR_PTR(-EPROBE_DEFER);
 	} else {
 		parent = clk_core_get(core, index);
-		if (IS_ERR(parent) && PTR_ERR(parent) == -ENOENT && entry->name)
+		if (PTR_ERR(parent) == -ENOENT && entry->name)
 			parent = clk_core_lookup(entry->name);
 	}
 
diff --git a/drivers/dma/mv_xor_v2.c b/drivers/dma/mv_xor_v2.c
index e3850f04f676..157c959311ea 100644
--- a/drivers/dma/mv_xor_v2.c
+++ b/drivers/dma/mv_xor_v2.c
@@ -750,7 +750,7 @@ static int mv_xor_v2_probe(struct platform_device *pdev)
 	}
 
 	xor_dev->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(xor_dev->clk) && PTR_ERR(xor_dev->clk) == -EPROBE_DEFER) {
+	if (PTR_ERR(xor_dev->clk) == -EPROBE_DEFER) {
 		ret = EPROBE_DEFER;
 		goto disable_reg_clk;
 	}
diff --git a/drivers/gpio/gpiolib-devres.c b/drivers/gpio/gpiolib-devres.c
index 4421be09b960..72b6001c56ef 100644
--- a/drivers/gpio/gpiolib-devres.c
+++ b/drivers/gpio/gpiolib-devres.c
@@ -308,7 +308,7 @@ devm_gpiod_get_array_optional(struct device *dev, const char *con_id,
 	struct gpio_descs *descs;
 
 	descs = devm_gpiod_get_array(dev, con_id, flags);
-	if (IS_ERR(descs) && (PTR_ERR(descs) == -ENOENT))
+	if (PTR_ERR(descs) == -ENOENT)
 		return NULL;
 
 	return descs;
diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index b696e4598a24..3d3659cd72ef 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -505,24 +505,24 @@ struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
 			break;
 	}
 
-	if (IS_ERR(desc) && PTR_ERR(desc) == -ENOENT) {
+	if (PTR_ERR(desc) == -ENOENT) {
 		/* Special handling for SPI GPIOs if used */
 		desc = of_find_spi_gpio(dev, con_id, &of_flags);
 	}
 
-	if (IS_ERR(desc) && PTR_ERR(desc) == -ENOENT) {
+	if (PTR_ERR(desc) == -ENOENT) {
 		/* This quirk looks up flags and all */
 		desc = of_find_spi_cs_gpio(dev, con_id, idx, flags);
 		if (!IS_ERR(desc))
 			return desc;
 	}
 
-	if (IS_ERR(desc) && PTR_ERR(desc) == -ENOENT) {
+	if (PTR_ERR(desc) == -ENOENT) {
 		/* Special handling for regulator GPIOs if used */
 		desc = of_find_regulator_gpio(dev, con_id, &of_flags);
 	}
 
-	if (IS_ERR(desc) && PTR_ERR(desc) == -ENOENT)
+	if (PTR_ERR(desc) == -ENOENT)
 		desc = of_find_arizona_gpio(dev, con_id, &of_flags);
 
 	if (IS_ERR(desc))
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 78a16e42f222..20a6adf2128f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -5067,7 +5067,7 @@ struct gpio_descs *__must_check gpiod_get_array_optional(struct device *dev,
 	struct gpio_descs *descs;
 
 	descs = gpiod_get_array(dev, con_id, flags);
-	if (IS_ERR(descs) && (PTR_ERR(descs) == -ENOENT))
+	if (PTR_ERR(descs) == -ENOENT)
 		return NULL;
 
 	return descs;
diff --git a/drivers/i2c/busses/i2c-mv64xxx.c b/drivers/i2c/busses/i2c-mv64xxx.c
index a5a95ea5b81a..febb7c7ea72b 100644
--- a/drivers/i2c/busses/i2c-mv64xxx.c
+++ b/drivers/i2c/busses/i2c-mv64xxx.c
@@ -901,14 +901,13 @@ mv64xxx_i2c_probe(struct platform_device *pd)
 
 	/* Not all platforms have clocks */
 	drv_data->clk = devm_clk_get(&pd->dev, NULL);
-	if (IS_ERR(drv_data->clk) && PTR_ERR(drv_data->clk) == -EPROBE_DEFER)
+	if (PTR_ERR(drv_data->clk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	if (!IS_ERR(drv_data->clk))
 		clk_prepare_enable(drv_data->clk);
 
 	drv_data->reg_clk = devm_clk_get(&pd->dev, "reg");
-	if (IS_ERR(drv_data->reg_clk) &&
-	    PTR_ERR(drv_data->reg_clk) == -EPROBE_DEFER)
+	if (PTR_ERR(drv_data->reg_clk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	if (!IS_ERR(drv_data->reg_clk))
 		clk_prepare_enable(drv_data->reg_clk);
diff --git a/drivers/i2c/busses/i2c-synquacer.c b/drivers/i2c/busses/i2c-synquacer.c
index 39762f0611b1..86026798b4f7 100644
--- a/drivers/i2c/busses/i2c-synquacer.c
+++ b/drivers/i2c/busses/i2c-synquacer.c
@@ -553,7 +553,7 @@ static int synquacer_i2c_probe(struct platform_device *pdev)
 				 &i2c->pclkrate);
 
 	i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
-	if (IS_ERR(i2c->pclk) && PTR_ERR(i2c->pclk) == -EPROBE_DEFER)
+	if (PTR_ERR(i2c->pclk) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 	if (!IS_ERR_OR_NULL(i2c->pclk)) {
 		dev_dbg(&pdev->dev, "clock source %p\n", i2c->pclk);
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index d636bbe214cb..e58dda6c7075 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -1159,7 +1159,7 @@ static struct mtd_info * __init open_mtd_device(const char *mtd_dev)
 		 * MTD device name.
 		 */
 		mtd = get_mtd_device_nm(mtd_dev);
-		if (IS_ERR(mtd) && PTR_ERR(mtd) == -ENODEV)
+		if (PTR_ERR(mtd) == -ENODEV)
 			/* Probably this is an MTD character device node path */
 			mtd = open_mtd_by_chdev(mtd_dev);
 	} else
diff --git a/drivers/of/device.c b/drivers/of/device.c
index e9127db7b067..27203bfd0b22 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -161,7 +161,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
 		coherent ? " " : " not ");
 
 	iommu = of_iommu_configure(dev, np);
-	if (IS_ERR(iommu) && PTR_ERR(iommu) == -EPROBE_DEFER)
+	if (PTR_ERR(iommu) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
 	dev_dbg(dev, "device is%sbehind an iommu\n",
diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/pci-tegra.c
index 673a1725ef38..40928c4d261d 100644
--- a/drivers/pci/controller/pci-tegra.c
+++ b/drivers/pci/controller/pci-tegra.c
@@ -1406,7 +1406,7 @@ static struct phy *devm_of_phy_optional_get_index(struct device *dev,
 	phy = devm_of_phy_get(dev, np, name);
 	kfree(name);
 
-	if (IS_ERR(phy) && PTR_ERR(phy) == -ENODEV)
+	if (PTR_ERR(phy) == -ENODEV)
 		phy = NULL;
 
 	return phy;
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index b04f4fe85ac2..48d355cf0210 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -690,7 +690,7 @@ struct phy *phy_optional_get(struct device *dev, const char *string)
 {
 	struct phy *phy = phy_get(dev, string);
 
-	if (IS_ERR(phy) && (PTR_ERR(phy) == -ENODEV))
+	if (PTR_ERR(phy) == -ENODEV)
 		phy = NULL;
 
 	return phy;
@@ -744,7 +744,7 @@ struct phy *devm_phy_optional_get(struct device *dev, const char *string)
 {
 	struct phy *phy = devm_phy_get(dev, string);
 
-	if (IS_ERR(phy) && (PTR_ERR(phy) == -ENODEV))
+	if (PTR_ERR(phy) == -ENODEV)
 		phy = NULL;
 
 	return phy;
diff --git a/drivers/spi/spi-orion.c b/drivers/spi/spi-orion.c
index c7266ef295fd..1f59beb7d27e 100644
--- a/drivers/spi/spi-orion.c
+++ b/drivers/spi/spi-orion.c
@@ -646,8 +646,7 @@ static int orion_spi_probe(struct platform_device *pdev)
 
 	/* The following clock is only used by some SoCs */
 	spi->axi_clk = devm_clk_get(&pdev->dev, "axi");
-	if (IS_ERR(spi->axi_clk) &&
-	    PTR_ERR(spi->axi_clk) == -EPROBE_DEFER) {
+	if (PTR_ERR(spi->axi_clk) == -EPROBE_DEFER) {
 		status = -EPROBE_DEFER;
 		goto out_rel_clk;
 	}
diff --git a/drivers/video/fbdev/imxfb.c b/drivers/video/fbdev/imxfb.c
index b3286d1fa543..5fad6bf16322 100644
--- a/drivers/video/fbdev/imxfb.c
+++ b/drivers/video/fbdev/imxfb.c
@@ -1017,7 +1017,7 @@ static int imxfb_probe(struct platform_device *pdev)
 	}
 
 	fbi->lcd_pwr = devm_regulator_get(&pdev->dev, "lcd");
-	if (IS_ERR(fbi->lcd_pwr) && (PTR_ERR(fbi->lcd_pwr) == -EPROBE_DEFER)) {
+	if (PTR_ERR(fbi->lcd_pwr) == -EPROBE_DEFER) {
 		ret = -EPROBE_DEFER;
 		goto failed_lcd;
 	}
diff --git a/fs/ext4/super.c b/fs/ext4/super.c
index 2937a8873fe1..b20ac7a47425 100644
--- a/fs/ext4/super.c
+++ b/fs/ext4/super.c
@@ -5987,7 +5987,7 @@ static ssize_t ext4_quota_write(struct super_block *sb, int type,
 		bh = ext4_bread(handle, inode, blk,
 				EXT4_GET_BLOCKS_CREATE |
 				EXT4_GET_BLOCKS_METADATA_NOFAIL);
-	} while (IS_ERR(bh) && (PTR_ERR(bh) == -ENOSPC) &&
+	} while (PTR_ERR(bh) == -ENOSPC &&
 		 ext4_should_retry_alloc(inode->i_sb, &retries));
 	if (IS_ERR(bh))
 		return PTR_ERR(bh);
diff --git a/fs/f2fs/node.c b/fs/f2fs/node.c
index 3314a0f3405e..9d02cdcdbb07 100644
--- a/fs/f2fs/node.c
+++ b/fs/f2fs/node.c
@@ -875,7 +875,7 @@ static int truncate_dnode(struct dnode_of_data *dn)
 
 	/* get direct node */
 	page = f2fs_get_node_page(F2FS_I_SB(dn->inode), dn->nid);
-	if (IS_ERR(page) && PTR_ERR(page) == -ENOENT)
+	if (PTR_ERR(page) == -ENOENT)
 		return 1;
 	else if (IS_ERR(page))
 		return PTR_ERR(page);
diff --git a/fs/ocfs2/suballoc.c b/fs/ocfs2/suballoc.c
index 4180c3ef0a68..939df99d2dec 100644
--- a/fs/ocfs2/suballoc.c
+++ b/fs/ocfs2/suballoc.c
@@ -696,7 +696,7 @@ static int ocfs2_block_group_alloc(struct ocfs2_super *osb,
 
 	bg_bh = ocfs2_block_group_alloc_contig(osb, handle, alloc_inode,
 					       ac, cl);
-	if (IS_ERR(bg_bh) && (PTR_ERR(bg_bh) == -ENOSPC))
+	if (PTR_ERR(bg_bh) == -ENOSPC)
 		bg_bh = ocfs2_block_group_alloc_discontig(handle,
 							  alloc_inode,
 							  ac, cl);
diff --git a/fs/sysfs/group.c b/fs/sysfs/group.c
index d41c21fef138..c4ab045926b7 100644
--- a/fs/sysfs/group.c
+++ b/fs/sysfs/group.c
@@ -449,7 +449,7 @@ int __compat_only_sysfs_link_entry_to_kobj(struct kobject *kobj,
 	}
 
 	link = kernfs_create_link(kobj->sd, target_name, entry);
-	if (IS_ERR(link) && PTR_ERR(link) == -EEXIST)
+	if (PTR_ERR(link) == -EEXIST)
 		sysfs_warn_dup(kobj->sd, target_name);
 
 	kernfs_put(entry);
diff --git a/net/core/dev.c b/net/core/dev.c
index 0ad39c87b7fd..6d849b6f5724 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -5723,7 +5723,7 @@ static enum gro_result dev_gro_receive(struct napi_struct *napi, struct sk_buff
 	if (&ptype->list == head)
 		goto normal;
 
-	if (IS_ERR(pp) && PTR_ERR(pp) == -EINPROGRESS) {
+	if (PTR_ERR(pp) == -EINPROGRESS) {
 		ret = GRO_CONSUMED;
 		goto ok;
 	}
diff --git a/net/core/filter.c b/net/core/filter.c
index 28b3c258188c..687934f3aad7 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -1573,7 +1573,7 @@ int sk_reuseport_attach_bpf(u32 ufd, struct sock *sk)
 		return -EPERM;
 
 	prog = bpf_prog_get_type(ufd, BPF_PROG_TYPE_SOCKET_FILTER);
-	if (IS_ERR(prog) && PTR_ERR(prog) == -EINVAL)
+	if (PTR_ERR(prog) == -EINVAL)
 		prog = bpf_prog_get_type(ufd, BPF_PROG_TYPE_SK_REUSEPORT);
 	if (IS_ERR(prog))
 		return PTR_ERR(prog);
diff --git a/net/xfrm/xfrm_policy.c b/net/xfrm/xfrm_policy.c
index f2d1e573ea55..93b9e00cca33 100644
--- a/net/xfrm/xfrm_policy.c
+++ b/net/xfrm/xfrm_policy.c
@@ -3186,7 +3186,7 @@ struct dst_entry *xfrm_lookup_route(struct net *net, struct dst_entry *dst_orig,
 					    flags | XFRM_LOOKUP_QUEUE |
 					    XFRM_LOOKUP_KEEP_DST_REF);
 
-	if (IS_ERR(dst) && PTR_ERR(dst) == -EREMOTE)
+	if (PTR_ERR(dst) == -EREMOTE)
 		return make_blackhole(net, dst_orig->ops->family, dst_orig);
 
 	if (IS_ERR(dst))
diff --git a/sound/soc/codecs/ak4104.c b/sound/soc/codecs/ak4104.c
index e8c5fda82e08..979cfb165eed 100644
--- a/sound/soc/codecs/ak4104.c
+++ b/sound/soc/codecs/ak4104.c
@@ -295,8 +295,7 @@ static int ak4104_spi_probe(struct spi_device *spi)
 
 	reset_gpiod = devm_gpiod_get_optional(&spi->dev, "reset",
 					      GPIOD_OUT_HIGH);
-	if (IS_ERR(reset_gpiod) &&
-	    PTR_ERR(reset_gpiod) == -EPROBE_DEFER)
+	if (PTR_ERR(reset_gpiod) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
 	/* read the 'reserved' register - according to the datasheet, it
diff --git a/sound/soc/codecs/cs4270.c b/sound/soc/codecs/cs4270.c
index 793a14d58667..5f25b9f872bd 100644
--- a/sound/soc/codecs/cs4270.c
+++ b/sound/soc/codecs/cs4270.c
@@ -681,8 +681,7 @@ static int cs4270_i2c_probe(struct i2c_client *i2c_client,
 
 	reset_gpiod = devm_gpiod_get_optional(&i2c_client->dev, "reset",
 					      GPIOD_OUT_HIGH);
-	if (IS_ERR(reset_gpiod) &&
-	    PTR_ERR(reset_gpiod) == -EPROBE_DEFER)
+	if (PTR_ERR(reset_gpiod) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
 
 	cs4270->regmap = devm_regmap_init_i2c(i2c_client, &cs4270_regmap);
diff --git a/sound/soc/codecs/tlv320aic32x4.c b/sound/soc/codecs/tlv320aic32x4.c
index b4e9a6c73f90..d087f3b20b1d 100644
--- a/sound/soc/codecs/tlv320aic32x4.c
+++ b/sound/soc/codecs/tlv320aic32x4.c
@@ -1098,11 +1098,9 @@ static int aic32x4_setup_regulators(struct device *dev,
 			return PTR_ERR(aic32x4->supply_av);
 		}
 	} else {
-		if (IS_ERR(aic32x4->supply_dv) &&
-				PTR_ERR(aic32x4->supply_dv) == -EPROBE_DEFER)
+		if (PTR_ERR(aic32x4->supply_dv) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
-		if (IS_ERR(aic32x4->supply_av) &&
-				PTR_ERR(aic32x4->supply_av) == -EPROBE_DEFER)
+		if (PTR_ERR(aic32x4->supply_av) == -EPROBE_DEFER)
 			return -EPROBE_DEFER;
 	}
 
diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-spdif.c
index cbe598b0fb10..98a9fe645521 100644
--- a/sound/soc/sunxi/sun4i-spdif.c
+++ b/sound/soc/sunxi/sun4i-spdif.c
@@ -555,7 +555,7 @@ static int sun4i_spdif_probe(struct platform_device *pdev)
 	if (quirks->has_reset) {
 		host->rst = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								      NULL);
-		if (IS_ERR(host->rst) && PTR_ERR(host->rst) == -EPROBE_DEFER) {
+		if (PTR_ERR(host->rst) == -EPROBE_DEFER) {
 			ret = -EPROBE_DEFER;
 			dev_err(&pdev->dev, "Failed to get reset: %d\n", ret);
 			return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
