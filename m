Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137F81CFF99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eARArMh/+0SGKokW83HJUx3aC513IvgWWr38FTBbw0=; b=kkcW0oqPFRSlgq
	55mAuD/oVwJNbCHStH757Mtha2YOita/6AeiX7acWdTgafSb1oJmZbA8LlSpCAkL1lc0sG2CEZ0cY
	wvjHZ0BwwgC4brkPtZYMlBL0ldBq1GNtGHD5LDAcDJM4TNaLw3l5Fo24ZEtWVqw+mIfQewfZsSImv
	wtGhBLFc99Sg6aQuRAq3Y0UIcS91UcWNKySTKIuBHDclcaRgvHwAwd4jqk8zcnbqEKhu8Pu7yswAd
	rpgQYriTcX6ousWVV0zcHqiZMxVRbMdM8EkEw1PBusqLBmEzkFcLVvh4fCdFRbghp7l+NkVIBaoIX
	FxKnvS5wIbCHzM0MlLPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbh1-0007dK-9H; Tue, 12 May 2020 20:39:59 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbgB-00078Y-9I
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 20:39:09 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1B3E781BD;
 Tue, 12 May 2020 20:39:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/6] soc: ti: omap-prm: Add basic power domain support
Date: Tue, 12 May 2020 13:38:48 -0700
Message-Id: <20200512203852.29499-3-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512203852.29499-1-tony@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133907_384583_87732762 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PRM controller has currently only support for resets while the power
domains are still handled in the platform code.

Let's add basic power domain support to enable and disable a PRM
controlled power domain if configured in the devicetree. This can be
used for various hardware accelerators, and interconnect instances.

Further support can be added later on as needed for runtime configuration
based on domain-idle-states.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/Kconfig |   1 +
 drivers/soc/ti/omap_prm.c   | 281 +++++++++++++++++++++++++++++++++++-
 2 files changed, 281 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -7,6 +7,7 @@ config ARCH_OMAP2
 	depends on ARCH_MULTI_V6
 	select ARCH_OMAP2PLUS
 	select CPU_V6
+	select PM_GENERIC_DOMAINS if PM
 	select SOC_HAS_OMAP2_SDRC
 
 config ARCH_OMAP3
diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -6,18 +6,50 @@
  *	Tero Kristo <t-kristo@ti.com>
  */
 
+#include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/reset-controller.h>
 #include <linux/delay.h>
 
 #include <linux/platform_data/ti-prm.h>
 
+enum omap_prm_clocks {
+	OMAP_PRM_FCK,
+	OMAP_PRM_ICK,
+	OMAP_PRM_NR_CLOCKS,
+};
+
+enum omap_prm_domain_mode {
+	OMAP_PRMD_OFF,
+	OMAP_PRMD_RETENTION,
+	OMAP_PRMD_ON_INACTIVE,
+	OMAP_PRMD_ON_ACTIVE,
+};
+
+struct omap_prm_domain_map {
+	unsigned int usable_modes;	/* Mask of hardware supported modes */
+	unsigned long statechange:1;	/* Optional low-power state change */
+	unsigned long logicretstate:1;	/* Optional logic off mode */
+};
+
+struct omap_prm_domain {
+	struct device *dev;
+	struct omap_prm *prm;
+	struct generic_pm_domain pd;
+	void __iomem *pwrstctrl;
+	void __iomem *pwrstst;
+	const struct omap_prm_domain_map *cap;
+	u32 pwrstctrl_saved;
+};
+
 struct omap_rst_map {
 	s8 rst;
 	s8 st;
@@ -27,6 +59,9 @@ struct omap_prm_data {
 	u32 base;
 	const char *name;
 	const char *clkdm_name;
+	u16 pwrstctrl;
+	u16 pwrstst;
+	const struct omap_prm_domain_map *dmap;
 	u16 rstctrl;
 	u16 rstst;
 	const struct omap_rst_map *rstmap;
@@ -36,6 +71,8 @@ struct omap_prm_data {
 struct omap_prm {
 	const struct omap_prm_data *data;
 	void __iomem *base;
+	struct clk *clocks[OMAP_PRM_NR_CLOCKS];
+	struct omap_prm_domain *prmd;
 };
 
 struct omap_reset_data {
@@ -47,6 +84,7 @@ struct omap_reset_data {
 	struct device *dev;
 };
 
+#define genpd_to_prm_domain(gpd) container_of(gpd, struct omap_prm_domain, pd)
 #define to_omap_reset_data(p) container_of((p), struct omap_reset_data, rcdev)
 
 #define OMAP_MAX_RESETS		8
@@ -58,6 +96,40 @@ struct omap_reset_data {
 
 #define OMAP_PRM_HAS_RESETS	(OMAP_PRM_HAS_RSTCTRL | OMAP_PRM_HAS_RSTST)
 
+#define PRM_LOGICRETSTATE	BIT(2)
+#define PRM_LOWPOWERSTATECHANGE	BIT(4)
+#define PRM_POWERSTATE_MASK	OMAP_PRMD_ON_ACTIVE
+
+static const struct __maybe_unused
+omap_prm_domain_map omap_prm_all = {
+	.usable_modes = BIT(OMAP_PRMD_ON_ACTIVE) | BIT(OMAP_PRMD_ON_INACTIVE) |
+			BIT(OMAP_PRMD_RETENTION) | BIT(OMAP_PRMD_OFF),
+	.statechange = 1,
+	.logicretstate = 1,
+};
+
+static const struct __maybe_unused
+omap_prm_domain_map omap_prm_noinact = {
+	.usable_modes = BIT(OMAP_PRMD_ON_ACTIVE) | BIT(OMAP_PRMD_RETENTION) |
+			BIT(OMAP_PRMD_OFF),
+	.statechange = 1,
+	.logicretstate = 1,
+};
+
+static const struct __maybe_unused
+omap_prm_domain_map omap_prm_nooff = {
+	.usable_modes = BIT(OMAP_PRMD_ON_ACTIVE) | BIT(OMAP_PRMD_ON_INACTIVE) |
+			BIT(OMAP_PRMD_RETENTION),
+	.statechange = 1,
+	.logicretstate = 1,
+};
+
+static const struct __maybe_unused
+omap_prm_domain_map omap_prm_onoff_noauto = {
+	.usable_modes = BIT(OMAP_PRMD_ON_ACTIVE) | BIT(OMAP_PRMD_OFF),
+	.statechange = 1,
+};
+
 static const struct omap_rst_map rst_map_0[] = {
 	{ .rst = 0, .st = 0 },
 	{ .rst = -1 },
@@ -151,6 +223,152 @@ static const struct of_device_id omap_prm_id_table[] = {
 	{ },
 };
 
+static int omap_prm_domain_power_on(struct generic_pm_domain *domain)
+{
+	struct omap_prm_domain *prmd;
+	u32 v;
+
+	prmd = genpd_to_prm_domain(domain);
+	if (!prmd->cap)
+		return 0;
+
+	dev_dbg(prmd->dev, "%s: %s: old state: pwrstctrl: %08x pwrstst: %08x\n",
+		__func__, prmd->pd.name, readl_relaxed(prmd->pwrstctrl),
+		readl_relaxed(prmd->pwrstst));
+
+	if (prmd->pwrstctrl_saved)
+		v = prmd->pwrstctrl_saved;
+	else
+		v = readl_relaxed(prmd->pwrstctrl);
+
+	writel_relaxed(v | OMAP_PRMD_ON_ACTIVE, prmd->pwrstctrl);
+	dev_dbg(prmd->dev, "%s: %s: new state pwrstctrl: %08x\n",
+		__func__, prmd->pd.name, readl_relaxed(prmd->pwrstctrl));
+
+	return 0;
+}
+
+/* No need to check for holes in the mask for the lowest mode */
+static int omap_prm_domain_find_lowest(struct omap_prm_domain *prmd)
+{
+	return __ffs(prmd->cap->usable_modes);
+}
+
+static int omap_prm_domain_power_off(struct generic_pm_domain *domain)
+{
+	struct omap_prm_domain *prmd;
+	u32 v;
+
+	prmd = genpd_to_prm_domain(domain);
+	if (!prmd->cap)
+		return 0;
+
+	v = readl_relaxed(prmd->pwrstctrl);
+	prmd->pwrstctrl_saved = v;
+
+	dev_dbg(prmd->dev, "%s: %s: old state: pwrstctrl: %08x pwrstst: %08x\n",
+		__func__, prmd->pd.name, v, readl_relaxed(prmd->pwrstst));
+
+	v &= ~PRM_POWERSTATE_MASK;
+	v |= omap_prm_domain_find_lowest(prmd);
+
+	if (prmd->cap->statechange)
+		v |= PRM_LOWPOWERSTATECHANGE;
+	if (prmd->cap->logicretstate)
+		v &= ~PRM_LOGICRETSTATE;
+	else
+		v |= PRM_LOGICRETSTATE;
+
+	writel_relaxed(v, prmd->pwrstctrl);
+
+	dev_dbg(prmd->dev, "%s: %s new state pwrstctrl: %08x\n",
+		__func__, prmd->pd.name, readl_relaxed(prmd->pwrstctrl));
+
+	return 0;
+}
+
+static int omap_prm_domain_attach_dev(struct generic_pm_domain *domain,
+				      struct device *dev)
+{
+	struct generic_pm_domain_data *genpd_data;
+	struct of_phandle_args pd_args;
+	struct omap_prm_domain *prmd;
+	struct device_node *np;
+	int ret;
+
+	prmd = genpd_to_prm_domain(domain);
+	np = dev->of_node;
+
+	ret = of_parse_phandle_with_args(np, "power-domains",
+					 "#power-domain-cells", 0, &pd_args);
+	if (ret < 0)
+		return ret;
+
+	if (pd_args.args_count != 0)
+		dev_warn(dev, "%s: unusupported #power-domain-cells: %i\n",
+			 prmd->pd.name, pd_args.args_count);
+
+	genpd_data = dev_gpd_data(dev);
+	genpd_data->data = NULL;
+
+	return 0;
+}
+
+static void omap_prm_domain_detach_dev(struct generic_pm_domain *domain,
+				       struct device *dev)
+{
+	struct generic_pm_domain_data *genpd_data;
+	struct omap_prm_domain *prmd;
+
+	prmd = genpd_to_prm_domain(domain);
+
+	genpd_data = dev_gpd_data(dev);
+	genpd_data->data = NULL;
+}
+
+static int omap_prm_domain_init(struct device *dev, struct omap_prm *prm)
+{
+	struct omap_prm_domain *prmd;
+	struct device_node *np = dev->of_node;
+	const struct omap_prm_data *data;
+	const char *name;
+	int error;
+
+	if (!of_find_property(dev->of_node, "#power-domain-cells", NULL))
+		return 0;
+
+	of_node_put(dev->of_node);
+
+	prmd = devm_kzalloc(dev, sizeof(*prmd), GFP_KERNEL);
+	if (!prmd)
+		return -ENOMEM;
+
+	data = prm->data;
+	name = devm_kasprintf(dev, GFP_KERNEL, "prm_%s",
+			      data->name);
+
+	prmd->dev = dev;
+	prmd->prm = prm;
+	prmd->cap = prmd->prm->data->dmap;
+	prmd->pwrstctrl = prmd->prm->base + prmd->prm->data->pwrstctrl;
+	prmd->pwrstst = prmd->prm->base + prmd->prm->data->pwrstst;
+
+	prmd->pd.name = name;
+	prmd->pd.power_on = omap_prm_domain_power_on;
+	prmd->pd.power_off = omap_prm_domain_power_off;
+	prmd->pd.attach_dev = omap_prm_domain_attach_dev;
+	prmd->pd.detach_dev = omap_prm_domain_detach_dev;
+
+	pm_genpd_init(&prmd->pd, NULL, true);
+	error = of_genpd_add_provider_simple(np, &prmd->pd);
+	if (error)
+		pm_genpd_remove(&prmd->pd);
+	else
+		prm->prmd = prmd;
+
+	return error;
+}
+
 static bool _is_valid_reset(struct omap_reset_data *reset, unsigned long id)
 {
 	if (reset->mask & BIT(id))
@@ -345,12 +563,48 @@ static int omap_prm_reset_init(struct platform_device *pdev,
 	return devm_reset_controller_register(&pdev->dev, &reset->rcdev);
 }
 
+static int omap_prm_init_clock(struct device *dev, struct omap_prm *prm,
+			       const char *name, enum omap_prm_clocks index)
+{
+	struct clk *clock;
+	int error;
+
+	clock = devm_clk_get(dev, name);
+	if (IS_ERR(clock)) {
+		if (PTR_ERR(clock) == -ENOENT)
+			error = 0;
+		else
+			error = PTR_ERR(prm->clocks[index]);
+
+		goto out_done;
+	}
+
+	error = clk_prepare_enable(clock);
+
+out_done:
+	prm->clocks[index] = clock;
+
+	return error;
+}
+
+static void omap_prm_disable_clocks(struct omap_prm *prm)
+{
+	int i;
+
+	for (i = 0; i < OMAP_PRM_NR_CLOCKS; i++) {
+		if (IS_ERR(prm->clocks[i]))
+			continue;
+		clk_disable_unprepare(prm->clocks[i]);
+	}
+}
+
 static int omap_prm_probe(struct platform_device *pdev)
 {
 	struct resource *res;
 	const struct omap_prm_data *data;
 	struct omap_prm *prm;
 	const struct of_device_id *match;
+	int ret;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!res)
@@ -378,7 +632,32 @@ static int omap_prm_probe(struct platform_device *pdev)
 	if (IS_ERR(prm->base))
 		return PTR_ERR(prm->base);
 
-	return omap_prm_reset_init(pdev, prm);
+	ret = omap_prm_init_clock(&pdev->dev, prm, "fck", OMAP_PRM_FCK);
+	if (ret)
+		goto err_disable;
+
+	ret = omap_prm_init_clock(&pdev->dev, prm, "ick", OMAP_PRM_ICK);
+	if (ret)
+		goto err_disable;
+
+	ret = omap_prm_domain_init(&pdev->dev, prm);
+	if (ret)
+		goto err_disable;
+
+	ret = omap_prm_reset_init(pdev, prm);
+	if (ret)
+		goto err_domain;
+
+	return 0;
+
+err_domain:
+	of_genpd_del_provider(pdev->dev.of_node);
+	pm_genpd_remove(&prm->prmd->pd);
+
+err_disable:
+	omap_prm_disable_clocks(prm);
+
+	return ret;
 }
 
 static struct platform_driver omap_prm_driver = {
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
