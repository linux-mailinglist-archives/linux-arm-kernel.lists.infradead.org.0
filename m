Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC411C6B53
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:19:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOdwhMLPSYg5Myi1S7d21fmnUGJInAnoJ8e3Kloy3rE=; b=mpt1IUXf3Vkpzp
	mDTc8smeKbMCgPhwXvmHjSKbkBx4sWfYXFbqKmspGrYnrjyOjrL0RI7F9Wv/EqTb2I88WgxS3hX3q
	1Ip6DPSYmLLrou70ikbXtlQFHG1qc90HbrZl3hdlODmneM+XI6yUhNwvdpWhCseKmyZv+G+3ywumr
	bBYE2mPhB+iHCuNHVjeGUt3G58ys6eBzaYHSiyoJj0mrT+lNz4HCcNDbkYgD5QRdW2JrP67UehJUe
	SxSE6YWtzDiloKJF+t1/1emRnGpJZ8DP5N8dKlai7tddcjTvaYcb9lF6AHf9YHWAIVfvoBFI3MgAx
	oQHrK8SL6zYQ0EvwR3FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFH9-0007nw-Ay; Wed, 06 May 2020 08:19:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFE2-0004qZ-Vl; Wed, 06 May 2020 08:16:21 +0000
X-UUID: bcbf3f03fe444d4185211363595d7d94-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=uA9h9fcbaiE4mGYiNvMjx0at9l9jtAsGFyAwxKb3IFA=; 
 b=ha7s+qwGbsGFUU84Qdpafjc3TFHCHgycvwTuk9+nXNatCbWyMWRGOdGRgsbOTA4MjPK5FQfHx7t5YwBAUZnTFmDp9tdrTZ+TKFICg1/Mb2ZYVdnKeTmMNOUQKsVJG261nyOo49j6OaSNV4L0V4Sb3aGmOUkiL7yXngeC3lDtNYE=;
X-UUID: bcbf3f03fe444d4185211363595d7d94-20200506
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1513353902; Wed, 06 May 2020 00:16:14 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 01:16:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 16:16:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 6 May 2020 16:16:05 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Nicolas Boichat <drinkcat@chromium.org>, "Rob
 Herring" <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v14 05/11] soc: mediatek: Add multiple step bus protection
 control
Date: Wed, 6 May 2020 16:15:57 +0800
Message-ID: <1588752963-19934-6-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_011619_099075_E3DC6C7D 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/soc/mediatek/mtk-scpsys.c | 235 +++++++++++++++++++++++++++-----------
 1 file changed, 168 insertions(+), 67 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index b603af7..5ce4be5 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -78,11 +78,6 @@
 #define PWR_STATUS_HIF1			BIT(26)	/* MT7622 */
 #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
 
-#define INFRA_TOPAXI_PROTECTEN		0x0220
-#define INFRA_TOPAXI_PROTECTSTA1	0x0228
-#define INFRA_TOPAXI_PROTECTEN_SET	0x0260
-#define INFRA_TOPAXI_PROTECTEN_CLR	0x0264
-
 #define MT2701_TOP_AXI_PROT_EN_MM_M0		BIT(1)
 #define MT2701_TOP_AXI_PROT_EN_CONN_M		BIT(2)
 #define MT2701_TOP_AXI_PROT_EN_CONN_S		BIT(8)
@@ -103,6 +98,45 @@
 
 #define MAX_CLKS	3
 
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
+
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
 /**
  * struct scp_domain_data - scp domain data for power on/off flow
  * @name: The domain name.
@@ -110,9 +144,9 @@
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
@@ -120,9 +154,9 @@ struct scp_domain_data {
 	int ctl_offs;
 	u32 sram_pdn_bits;
 	u32 sram_pdn_ack_bits;
-	u32 bus_prot_mask;
 	const char *basic_clk_name[MAX_CLKS];
 	u8 caps;
+	struct bus_prot bp_table[MAX_STEPS];
 };
 
 struct scp;
@@ -146,8 +180,8 @@ struct scp {
 	struct device *dev;
 	void __iomem *base;
 	struct regmap *infracfg;
+	struct regmap *smi_common;
 	struct scp_ctrl_reg ctrl_reg;
-	bool bus_prot_reg_update;
 };
 
 struct scp_subdomain {
@@ -161,7 +195,6 @@ struct scp_soc_data {
 	const struct scp_subdomain *subdomains;
 	int num_subdomains;
 	const struct scp_ctrl_reg regs;
-	bool bus_prot_reg_update;
 };
 
 static int scpsys_domain_is_on(struct scp_domain *scpd)
@@ -271,53 +304,87 @@ static int scpsys_sram_disable(struct scp_domain *scpd, void __iomem *ctl_addr)
 			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 }
 
+static int set_bus_protection(struct regmap *map, const struct bus_prot *bp)
+{
+	u32 val;
+
+	if (bp->set_ofs)
+		regmap_write(map, bp->set_ofs, bp->mask);
+	else
+		regmap_update_bits(map, bp->en_ofs, bp->mask, bp->mask);
+
+	return regmap_read_poll_timeout(map, bp->sta_ofs,
+			val, (val & bp->mask) == bp->mask,
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
+static int clear_bus_protection(struct regmap *map, const struct bus_prot *bp)
+{
+	u32 val;
+
+	if (bp->clr_ofs)
+		regmap_write(map, bp->clr_ofs, bp->mask);
+	else
+		regmap_update_bits(map, bp->en_ofs, bp->mask, 0);
+
+	if (bp->ignore_clr_ack)
+		return 0;
+
+	return regmap_read_poll_timeout(map, bp->sta_ofs,
+			val, !(val & bp->mask),
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
+	struct regmap *map;
+	int i, ret;
 
-	if (!mask)
-		return 0;
+	for (i = 0; i < MAX_STEPS; i++) {
+		if (bp_table[i].type == IFR_TYPE)
+			map = infracfg;
+		else if (bp_table[i].type == SMI_TYPE)
+			map = smi_common;
+		else
+			break;
 
-	if (reg_update)
-		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask,
-				mask);
-	else
-		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_SET, mask);
+		ret = set_bus_protection(map, &bp_table[i]);
 
-	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
-				       val, (val & mask) == mask,
-				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		if (ret)
+			return ret;
+	}
 
-	return ret;
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
+	struct regmap *map;
+	int i, ret;
 
-	if (!mask)
-		return 0;
+	for (i = MAX_STEPS - 1; i >= 0; i--) {
+		if (bp_table[i].type == IFR_TYPE)
+			map = infracfg;
+		else if (bp_table[i].type == SMI_TYPE)
+			map = smi_common;
+		else
+			continue;
 
-	if (reg_update)
-		regmap_update_bits(infracfg, INFRA_TOPAXI_PROTECTEN, mask, 0);
-	else
-		regmap_write(infracfg, INFRA_TOPAXI_PROTECTEN_CLR, mask);
+		ret = clear_bus_protection(map, &bp_table[i]);
 
-	ret = regmap_read_poll_timeout(infracfg, INFRA_TOPAXI_PROTECTSTA1,
-				       val, !(val & mask),
-				       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		if (ret)
+			return ret;
+	}
 
-	return ret;
+	return 0;
 }
 
 static int scpsys_power_on(struct generic_pm_domain *genpd)
@@ -448,8 +515,7 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
 
 static struct scp *init_scp(struct platform_device *pdev,
 			const struct scp_domain_data *scp_domain_data, int num,
-			const struct scp_ctrl_reg *scp_ctrl_reg,
-			bool bus_prot_reg_update)
+			const struct scp_ctrl_reg *scp_ctrl_reg)
 {
 	struct genpd_onecell_data *pd_data;
 	struct resource *res;
@@ -463,8 +529,6 @@ static struct scp *init_scp(struct platform_device *pdev,
 	scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
 	scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;
 
-	scp->bus_prot_reg_update = bus_prot_reg_update;
-
 	scp->dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -492,6 +556,17 @@ static struct scp *init_scp(struct platform_device *pdev,
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
@@ -574,8 +649,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -584,7 +662,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -719,7 +800,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -791,7 +875,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -838,7 +925,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -848,7 +938,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -858,7 +951,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -867,7 +963,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -881,8 +980,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -947,8 +1049,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
@@ -994,10 +1099,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
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
 
@@ -1013,7 +1121,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt2712_data = {
@@ -1025,7 +1132,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = false,
 };
 
 static const struct scp_soc_data mt6797_data = {
@@ -1037,7 +1143,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS_MT6797,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7622_data = {
@@ -1047,7 +1152,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7623a_data = {
@@ -1057,7 +1161,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt8173_data = {
@@ -1069,7 +1172,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 /*
@@ -1110,8 +1212,7 @@ static int scpsys_probe(struct platform_device *pdev)
 
 	soc = of_device_get_match_data(&pdev->dev);
 
-	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs,
-			soc->bus_prot_reg_update);
+	scp = init_scp(pdev, soc->domains, soc->num_domains, &soc->regs);
 	if (IS_ERR(scp))
 		return PTR_ERR(scp);
 
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
