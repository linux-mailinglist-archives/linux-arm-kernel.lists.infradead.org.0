Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A241241C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:31:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eK2JvIo8xfMNLJI0tfd1gOvk4eLWeXLJH3zkUen29JQ=; b=kOWz8zUUUeqJ0J
	l5xJ97+8elYhY+S8GxYoE6IJsMq9QMFPjuV8gl9f0Z3A+0Wxsdrqhnj/zcGH3Z6L+mQPOxAycRKHA
	EWaZUEZB8EK0XdLX1Zuy3uLMiI8XwwXYcb+SfGajKSGWZ2npxFDcmZvrf9xDhDmJSyKs0tf1zaOJ0
	5a1sgOOqwjTcs0GWevFM8NQQnVsvtnB627tyq13TeTs0vksKnGeeVEoZRuXnpmsXsRrGqi1aB1ylo
	L+rQe9z3Nxs50M5wTjqfjiO7oEp+CssHqx56VfsRwpaan2XPCRh3/RrcQvonTOGiijAigCmt7vmYe
	jDqXW52u8bicAfbX/Xkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUk1-0000SC-5A; Wed, 18 Dec 2019 08:31:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUja-00009I-70; Wed, 18 Dec 2019 08:31:07 +0000
X-UUID: a7c491fccfee41bab635293ccfa5b797-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=QEwyqIJvggztCyvb4YrJ/CReIcLAWVSBtZR8Bp8ykRI=; 
 b=qnQw/WnXcHnUlAALBFUZAuC9bkyedqubU1KzHWQw35UhG623xw2rFO00o/2Zw1Svj9ZvNhiQb8EbT0FiAyhVitNMwwygcWJR/lVgXHOPWOfFSYnHikcTnrfhdOcR4l2O/OT+ybTPtMry3zFmfFp00p9pEDDjsed/EUkbx0fHtRU=;
X-UUID: a7c491fccfee41bab635293ccfa5b797-20191218
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1883483215; Wed, 18 Dec 2019 00:31:01 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 00:31:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 16:30:26 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Dec 2019 16:30:29 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v10 06/12] soc: mediatek: Use bp_table for all compatibles
Date: Wed, 18 Dec 2019 16:30:42 +0800
Message-ID: <1576657848-14711-7-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6C553B17E6A1331978AA3535826A05B4688E53478A7B699D0D07CDDF55E4A8212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_003106_260193_C57C2C36 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Only use bp_table for bus protection of all compatibles,
instead of mixing bus_prot_mask and bus_prot_reg_update.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 94 ++++++++++++++++++++-------------------
 1 file changed, 48 insertions(+), 46 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index 5699d9f..c438c53 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -11,7 +11,6 @@
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
-#include <linux/soc/mediatek/infracfg.h>
 #include <linux/soc/mediatek/scpsys-ext.h>
 
 #include <dt-bindings/power/mt2701-power.h>
@@ -88,7 +87,6 @@
  * @ctl_offs: The offset for main power control register.
  * @sram_pdn_bits: The mask for sram power control bits.
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
- * @bus_prot_mask: The mask for single step bus protection.
  * @basic_clk_name: The basic clocks required by this power domain.
  * @caps: The flag for active wake-up action.
  * @bp_table: The mask table for multiple step bus protection.
@@ -99,7 +97,6 @@ struct scp_domain_data {
 	int ctl_offs;
 	u32 sram_pdn_bits;
 	u32 sram_pdn_ack_bits;
-	u32 bus_prot_mask;
 	const char *basic_clk_name[MAX_CLKS];
 	u8 caps;
 	struct bus_prot bp_table[MAX_STEPS];
@@ -128,7 +125,6 @@ struct scp {
 	struct regmap *infracfg;
 	struct regmap *smi_common;
 	struct scp_ctrl_reg ctrl_reg;
-	bool bus_prot_reg_update;
 };
 
 struct scp_subdomain {
@@ -142,7 +138,6 @@ struct scp_soc_data {
 	const struct scp_subdomain *subdomains;
 	int num_subdomains;
 	const struct scp_ctrl_reg regs;
-	bool bus_prot_reg_update;
 };
 
 static int scpsys_domain_is_on(struct scp_domain *scpd)
@@ -256,12 +251,6 @@ static int scpsys_bus_protect_enable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
 
-	if (scpd->data->bus_prot_mask) {
-		return mtk_infracfg_set_bus_protection(scp->infracfg,
-				scpd->data->bus_prot_mask,
-				scp->bus_prot_reg_update);
-	}
-
 	return mtk_scpsys_ext_set_bus_protection(scpd->data->bp_table,
 			scp->infracfg, scp->smi_common);
 }
@@ -270,12 +259,6 @@ static int scpsys_bus_protect_disable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
 
-	if (scpd->data->bus_prot_mask) {
-		return mtk_infracfg_clear_bus_protection(scp->infracfg,
-				scpd->data->bus_prot_mask,
-				scp->bus_prot_reg_update);
-	}
-
 	return mtk_scpsys_ext_clear_bus_protection(scpd->data->bp_table,
 			scp->infracfg, scp->smi_common);
 }
@@ -412,8 +395,7 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
 
 static struct scp *init_scp(struct platform_device *pdev,
 			const struct scp_domain_data *scp_domain_data, int num,
-			const struct scp_ctrl_reg *scp_ctrl_reg,
-			bool bus_prot_reg_update)
+			const struct scp_ctrl_reg *scp_ctrl_reg)
 {
 	struct genpd_onecell_data *pd_data;
 	struct resource *res;
@@ -427,8 +409,6 @@ static struct scp *init_scp(struct platform_device *pdev,
 	scp->ctrl_reg.pwr_sta_offs = scp_ctrl_reg->pwr_sta_offs;
 	scp->ctrl_reg.pwr_sta2nd_offs = scp_ctrl_reg->pwr_sta2nd_offs;
 
-	scp->bus_prot_reg_update = bus_prot_reg_update;
-
 	scp->dev = &pdev->dev;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
@@ -549,8 +529,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.name = "conn",
 		.sta_mask = PWR_STATUS_CONN,
 		.ctl_offs = SPM_CONN_PWR_CON,
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
-				 MT2701_TOP_AXI_PROT_EN_CONN_S,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(2) | BIT(8), BIT(2) | BIT(8)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_DISP] = {
@@ -559,7 +541,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_DIS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(1), BIT(1)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_MFG] = {
@@ -694,7 +679,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
 		.basic_clk_name = {"mfg"},
-		.bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x260, 0x264, 0x220, 0x228,
+				BIT(14) | BIT(21) | BIT(23),
+				BIT(14) | BIT(21) | BIT(23)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_MFG_SC1] = {
@@ -766,7 +755,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = (BIT(1) | BIT(2)),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(1) | BIT(2), BIT(1) | BIT(2)),
+		},
 	},
 	[MT6797_POWER_DOMAIN_AUDIO] = {
 		.name = "audio",
@@ -813,7 +805,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ETHSYS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(3) | BIT(17), BIT(3) | BIT(17)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_HIF0] = {
@@ -823,7 +818,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
 		.basic_clk_name = {"hif_sel"},
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(24) | BIT(25), BIT(24) | BIT(25)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_HIF1] = {
@@ -833,7 +831,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
 		.basic_clk_name = {"hif_sel"},
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				GENMASK(28, 26), GENMASK(28, 26)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7622_POWER_DOMAIN_WB] = {
@@ -842,7 +843,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_WB_PWR_CON,
 		.sram_pdn_bits = 0,
 		.sram_pdn_ack_bits = 0,
-		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(2) | GENMASK(8, 6), BIT(2) | GENMASK(8, 6)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
 	},
 };
@@ -856,8 +860,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.name = "conn",
 		.sta_mask = PWR_STATUS_CONN,
 		.ctl_offs = SPM_CONN_PWR_CON,
-		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
-				 MT2701_TOP_AXI_PROT_EN_CONN_S,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(2) | BIT(8), BIT(2) | BIT(8)),
+		},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7623A_POWER_DOMAIN_ETH] = {
@@ -922,8 +928,10 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
 		.basic_clk_name = {"mm"},
-		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
-			MT8173_TOP_AXI_PROT_EN_MM_M1,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(1) | BIT(2), BIT(1) | BIT(2)),
+		},
 	},
 	[MT8173_POWER_DOMAIN_VENC_LT] = {
 		.name = "venc_lt",
@@ -969,10 +977,11 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_PWR_CON,
 		.sram_pdn_bits = GENMASK(13, 8),
 		.sram_pdn_ack_bits = GENMASK(21, 16),
-		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
-			MT8173_TOP_AXI_PROT_EN_MFG_M0 |
-			MT8173_TOP_AXI_PROT_EN_MFG_M1 |
-			MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0, 0, 0x220, 0x228,
+				BIT(14) | GENMASK(23, 21),
+				BIT(14) | GENMASK(23, 21)),
+		},
 	},
 };
 
@@ -988,7 +997,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt2712_data = {
@@ -1000,7 +1008,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = false,
 };
 
 static const struct scp_soc_data mt6797_data = {
@@ -1012,7 +1019,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS_MT6797,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6797
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7622_data = {
@@ -1022,7 +1028,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt7623a_data = {
@@ -1032,7 +1037,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 static const struct scp_soc_data mt8173_data = {
@@ -1044,7 +1048,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.pwr_sta_offs = SPM_PWR_STATUS,
 		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND
 	},
-	.bus_prot_reg_update = true,
 };
 
 /*
@@ -1085,8 +1088,7 @@ static int scpsys_probe(struct platform_device *pdev)
 
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
