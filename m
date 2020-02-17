Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2311C16091B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vu04nS+b/sEfp0pwCiGGI3jQg57E5RwQswmkIUrXELA=; b=Swlb3hDknYljE3
	FHEf3o9hMHqj/eH4BjcVDSMXx4t3Vcr37PQRhqLiHv9LXQS8VUdlrLv+xOCvb3KXjLyu6Ai6q+33u
	aRzDuwZegabnXx+KTq46kCpJFlSHwTt2o29w439YMuDwqKt+eAfYcyHD1Hd8SAs1qRT9K3/S+0Ghc
	XULwf55W9dyG8ufICoIScJabsOQ6HCskSw6k07vYREzmQ7HinLvmimnTP7NnXzD56GoujfiElwEMF
	rX+n3o4r/swEM0m9xrB3pehcxoyf8s3LOd5t1tLTCEjV7yfQ8hes4HZyGLkXGfbpOigSLSNZaw9VL
	bz+LhsvXYVOXHbJT3eaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3XHX-0007Dm-8c; Mon, 17 Feb 2020 03:41:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3XGa-0006To-9f; Mon, 17 Feb 2020 03:40:18 +0000
X-UUID: 28c07511d591423889c87030db9aab9d-20200216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=UoBRWYbFNfabvInxJHk1WWSuIldaY4FrX1tZzVWLp/I=; 
 b=BLZ1Pmb82GJXJVKQBwaKlRP9PYY6vcMQEKsuejXzBZOvRmtAxGwla+bj842RSmBEciZKF+6tTZ7j5/4t9ddomqd/l2wShHAAkt3ICXd6XbyGsi3tGakdRxTX2GfiPrAcOS/upsSjOBlDCwDzrUVRu4QqngG5hxXJeq5qAsbsUIk=;
X-UUID: 28c07511d591423889c87030db9aab9d-20200216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1155705757; Sun, 16 Feb 2020 19:40:11 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Feb 2020 19:36:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 11:34:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 17 Feb 2020 11:35:07 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v12 05/10] soc: mediatek: Add multiple step bus protection
 control
Date: Mon, 17 Feb 2020 11:35:22 +0800
Message-ID: <1581910527-1636-6-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1581910527-1636-1-git-send-email-weiyi.lu@mediatek.com>
References: <1581910527-1636-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_194016_405420_C53DB9AE 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both MT8183 & MT6765 have more control steps of bus protection
than previous project. And there add more bus protection registers
reside at infracfg & smi-common.
Extend function to support multiple step bus protection control
with more customized arguments.
And then use bp_table for bus protection of all compatibles,
instead of mixing bus_prot_mask and bus_prot_reg_update.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 206 ++++++++++++++++++++++++++------------
 drivers/soc/mediatek/scpsys.h     |  42 +++++++-
 2 files changed, 182 insertions(+), 66 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index e50a568..a4fb0b23 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -88,9 +88,9 @@
  * @ctl_offs: The offset for main power control register.
  * @sram_pdn_bits: The mask for sram power control bits.
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
- * @bus_prot_mask: The mask for single step bus protection.
  * @basic_clk_name: The basic clocks required by this power domain.
  * @caps: The flag for active wake-up action.
+ * @bp_table: The mask table for multiple step bus protection.
  */
 struct scp_domain_data {
 	const char *name;
@@ -98,9 +98,9 @@ struct scp_domain_data {
 	int ctl_offs;
 	u32 sram_pdn_bits;
 	u32 sram_pdn_ack_bits;
-	u32 bus_prot_mask;
 	const char *basic_clk_name[MAX_CLKS];
 	u8 caps;
+	struct bus_prot bp_table[MAX_STEPS];
 };
 
 struct scp;
@@ -124,8 +124,8 @@ struct scp {
 	struct device *dev;
 	void __iomem *base;
 	struct regmap *infracfg;
+	struct regmap *smi_common;
 	struct scp_ctrl_reg ctrl_reg;
-	bool bus_prot_reg_update;
 };
 
 struct scp_subdomain {
@@ -139,7 +139,6 @@ struct scp_soc_data {
 	const struct scp_subdomain *subdomains;
 	int num_subdomains;
 	const struct scp_ctrl_reg regs;
-	bool bus_prot_reg_update;
 };
 
 static int scpsys_domain_is_on(struct scp_domain *scpd)
@@ -249,53 +248,102 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
 			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 }
 
+static int set_bus_protection(struct regmap *map, struct bus_prot *bp)
+{
+	u32 val;
+	u32 set_ofs = bp->set_ofs;
+	u32 en_ofs = bp->en_ofs;
+	u32 sta_ofs = bp->sta_ofs;
+	u32 mask = bp->mask;
+
+	if (set_ofs)
+		regmap_write(map, set_ofs, mask);
+	else
+		regmap_update_bits(map, en_ofs, mask, mask);
+
+	return regmap_read_poll_timeout(map, sta_ofs,
+			val, (val & mask) == mask,
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
+static int clear_bus_protection(struct regmap *map, struct bus_prot *bp)
+{
+	u32 val;
+	u32 clr_ofs = bp->clr_ofs;
+	u32 en_ofs = bp->en_ofs;
+	u32 sta_ofs = bp->sta_ofs;
+	u32 mask = bp->mask;
+	bool ignore_ack = bp->ignore_clr_ack;
+
+	if (clr_ofs)
+		regmap_write(map, clr_ofs, mask);
+	else
+		regmap_update_bits(map, en_ofs, mask, 0);
+
+	if (ignore_ack)
+		return 0;
+
+	return regmap_read_poll_timeout(map, sta_ofs,
+			val, !(val & mask),
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
 static int scpsys_bus_protect_enable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
+	const struct bus_prot *bp_table = scpd->data->bp_table;
 	struct regmap *infracfg = scp->infracfg;
-	u32 mask = scpd->data->bus_prot_mask;
-	bool reg_update = scp->bus_prot_reg_update;
-	u32 val;
-	int ret;
+	struct regmap *smi_common = scp->smi_common;
+	int i;
 
-	if (!mask)
-		return 0;
+	for (i = 0; i < MAX_STEPS; i++) {
+		struct regmap *map = NULL;
+		int ret;
+		struct bus_prot bp = bp_table[i];
 
-	if (reg_update)
-		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
-				mask);
-	else
-		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
+		if (bp.type == IFR_TYPE)
+			map = infracfg;
+		else if (bp.type == SMI_TYPE)
+			map = smi_common;
+		else
+			break;
 
-	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
-				       val, (val & mask) == mask,
-				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		ret = set_bus_protection(map, &bp);
 
-	return ret;
+		if (ret)
+			return ret;
+	}
+
+	return 0;
 }
 
 static int scpsys_bus_protect_disable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
+	const struct bus_prot *bp_table = scpd->data->bp_table;
 	struct regmap *infracfg = scp->infracfg;
-	u32 mask = scpd->data->bus_prot_mask;
-	bool reg_update = scp->bus_prot_reg_update;
-	u32 val;
-	int ret;
+	struct regmap *smi_common = scp->smi_common;
+	int i;
 
-	if (!mask)
-		return 0;
+	for (i = MAX_STEPS - 1; i >= 0; i--) {
+		struct regmap *map = NULL;
+		int ret;
+		struct bus_prot bp = bp_table[i];
 
-	if (reg_update)
-		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
-	else
-		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
+		if (bp.type == IFR_TYPE)
+			map = infracfg;
+		else if (bp.type == SMI_TYPE)
+			map = smi_common;
+		else
+			continue;
 
-	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
-				       val, !(val & mask),
-				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		ret = clear_bus_protection(map, &bp);
 
-	return ret;
+		if (ret)
+			return ret;
+	}
+
+	return 0;
 }
 
 static int scpsys_power_on(struct generic_pm_domain *genpd)
@@ -430,8 +478,7 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
 
 static struct scp *init_scp(struct platform_device *pdev,
 			const struct scp_domain_data *scp_domain_data, int num,
-			const struct scp_ctrl_reg *scp_ctrl_reg,
-			bool bus_prot_reg_update)
+			const struct scp_ctrl_reg *scp_ctrl_reg)
 {
 	struct genpd_onecell_data *pd_data;
 	struct resource *res;
@@ -445,8 +492,6 @@ static struct scp *init_scp(struct platform_device *pdev,
 	scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
 	scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;
 
-	scp->bus_prot_reg_update = bus_prot_reg_update;
-
 	scp->dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -474,6 +519,17 @@ static struct scp *init_scp(struct platform_device *pdev,
 		return ERR_CAST(scp->infracfg);
 	}
 
+	scp->smi_common = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
+			"smi_comm");
+
+	if (scp->smi_common == ERR_PTR(-ENODEV)) {
+		scp->smi_common = NULL;
+	} else if (IS_ERR(scp->smi_common)) {
+		dev_err(&pdev->dev, "Cannot find smi_common controller: %ld\n",
+				PTR_ERR(scp->smi_common));
+		return ERR_CAST(scp->smi_common);
+	}
+
 	for (i = 0; i < num; i++) {
 		struct scp_domain *scpd = &scp->domains[i];
 		const struct scp_domain_data *data = &scp_domain_data[i];
@@ -556,8 +612,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.name = "conn",
 		.sta_mask = PWR_STATUS_CONN,
 		.ctl_offs = SPM_CONN_PWR_CON,
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
-				 MT2701_TOP_AXI_PROT_EN_CONN_S,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT2701_TOP_AXI_PROT_EN_CONN_M |
+				MT2701_TOP_AXI_PROT_EN_CONN_S),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_DISP] = {
@@ -566,7 +625,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_DIS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT2701_TOP_AXI_PROT_EN_MM_M0),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_MFG] = {
@@ -701,7 +763,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
 		.basic_clk_name = {"mfg"},
-		.bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x260, 0x264, 0x220, 0x228,
+				BIT(14) | BIT(21) | BIT(23)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_MFG_SC1] = {
@@ -773,7 +838,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = (BIT(1) | BIT(2)),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(1) | BIT(2)),
+		},
 	},
 	[MT6797_POWER_DOMAIN_AUDIO] = {
 		.name = "audio",
@@ -820,7 +888,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ETHSYS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT7622_TOP_AXI_PROT_EN_ETHSYS),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_HIF0] = {
@@ -830,7 +901,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
 		.basic_clk_name = {"hif_sel"},
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT7622_TOP_AXI_PROT_EN_HIF0),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_HIF1] = {
@@ -840,7 +914,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
 		.basic_clk_name = {"hif_sel"},
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT7622_TOP_AXI_PROT_EN_HIF1),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_WB] = {
@@ -849,7 +926,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_WB_PWR_CON,
 		.sram_pdn_bits = 0,
 		.sram_pdn_ack_bits = 0,
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT7622_TOP_AXI_PROT_EN_WB),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
 	},
 };
@@ -863,8 +943,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.name = "conn",
 		.sta_mask = PWR_STATUS_CONN,
 		.ctl_offs = SPM_CONN_PWR_CON,
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
-				 MT2701_TOP_AXI_PROT_EN_CONN_S,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT2701_TOP_AXI_PROT_EN_CONN_M |
+				MT2701_TOP_AXI_PROT_EN_CONN_S),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7623A_POWER_DOMAIN_ETH] = {
@@ -929,8 +1012,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
-			MT8173_TOP_AXI_PROT_EN_MM_M1,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT8173_TOP_AXI_PROT_EN_MM_M0 |
+				MT8173_TOP_AXI_PROT_EN_MM_M1),
+		},
 	},
 	[MT8173_POWER_DOMAIN_VENC_LT] = {
 		.name = "venc_lt",
@@ -976,10 +1062,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_PWR_CON,
 		.sram_pdn_bits = GENMASK(13, 8),
 		.sram_pdn_ack_bits = GENMASK(21, 16),
-		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
-			MT8173_TOP_AXI_PROT_EN_MFG_M0 |
-			MT8173_TOP_AXI_PROT_EN_MFG_M1 |
-			MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				MT8173_TOP_AXI_PROT_EN_MFG_S |
+				MT8173_TOP_AXI_PROT_EN_MFG_M0 |
+				MT8173_TOP_AXI_PROT_EN_MFG_M1 |
+				MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT),
+		},
 	},
 };
 
@@ -995,7 +1084,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt2712_data = {
@@ -1007,7 +1095,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = false,
 };
 
 static const struct scp_soc_data mt6797_data = {
@@ -1019,7 +1106,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS_MT6797,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7622_data = {
@@ -1029,7 +1115,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7623a_data = {
@@ -1039,7 +1124,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt8173_data = {
@@ -1051,7 +1135,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 /*
@@ -1092,8 +1175,7 @@ static int scpsys_probe(struct platform_device *pdev)
 
 	soc = of_device_get_match_data(&pdev->dev);
 
-	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs,
-			soc->bus_prot_reg_update);
+	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs);
 	if (IS_ERR(scp))
 		return PTR_ERR(scp);
 
diff --git a/drivers/soc/mediatek/scpsys.h b/drivers/soc/mediatek/scpsys.h
index ad2559b..45bc644 100644
--- a/drivers/soc/mediatek/scpsys.h
+++ b/drivers/soc/mediatek/scpsys.h
@@ -2,10 +2,28 @@
 #ifndef __SOC_MEDIATEK_SCPSYS_H
 #define __SOC_MEDIATEK_SCPSYS_H
 
-#define INFRA_TOPAXI_PROTECTEN		0x0220
-#define INFRA_TOPAXI_PROTECTSTA1	0x0228
-#define INFRA_TOPAXI_PROTECTEN_SET	0x0260
-#define INFRA_TOPAXI_PROTECTEN_CLR	0x0264
+#define MAX_STEPS	4
+
+#define _BUS_PROT(_type, _set_ofs, _clr_ofs,			\
+		_en_ofs, _sta_ofs, _mask, _ignore_clr_ack) {	\
+		.type = _type,					\
+		.set_ofs = _set_ofs,				\
+		.clr_ofs = _clr_ofs,				\
+		.en_ofs = _en_ofs,				\
+		.sta_ofs = _sta_ofs,				\
+		.mask = _mask,					\
+		.ignore_clr_ack = _ignore_clr_ack,		\
+	}
+
+#define BUS_PROT(_type, _set_ofs, _clr_ofs,		\
+		_en_ofs, _sta_ofs, _mask)		\
+		_BUS_PROT(_type, _set_ofs, _clr_ofs,	\
+		_en_ofs, _sta_ofs, _mask, false)
+
+#define BUS_PROT_IGN(_type, _set_ofs, _clr_ofs,	\
+		_en_ofs, _sta_ofs, _mask)		\
+		_BUS_PROT(_type, _set_ofs, _clr_ofs,	\
+		_en_ofs, _sta_ofs, _mask, true)
 
 #define MT2701_TOP_AXI_PROT_EN_MM_M0		BIT(1)
 #define MT2701_TOP_AXI_PROT_EN_CONN_M		BIT(2)
@@ -25,4 +43,20 @@
 #define MT8173_TOP_AXI_PROT_EN_MFG_M1		BIT(22)
 #define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT	BIT(23)
 
+enum regmap_type {
+	INVALID_TYPE = 0,
+	IFR_TYPE,
+	SMI_TYPE,
+};
+
+struct bus_prot {
+	enum regmap_type type;
+	u32 set_ofs;
+	u32 clr_ofs;
+	u32 en_ofs;
+	u32 sta_ofs;
+	u32 mask;
+	bool ignore_clr_ack;
+};
+
 #endif /* __SOC_MEDIATEK_SCPSYS_H */
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
