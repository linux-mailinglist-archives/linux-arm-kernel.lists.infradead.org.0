Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730EA124217
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL2tXaBSjIhsI2sw+le3JhXkPACmnFgco2KuMOLCNJk=; b=Ro075TFtdrfr5H
	CdDi+vKkX4eicQ8Nc6c05+WrdIB0DHDD69L5IfSbV2fQaB/LcZE0p5h1vl4tEwlSDeId60h5uIfJ0
	z0z2po9lwcDmbK1AyFKRi5FQRScnP1mwP3elMgnyof7SigePP+vte8TlpTYYOcnBEMIkVj4SD2lLL
	6zNYSSCcKkZAWcnuVanVFsk/qCp7A0th8eP5jTdmYxAFO6+f1W5cQ6oc+vmciPlEhLp7JBdJFhp3A
	BVHFY5sOGvAwgEMC605iqgJUn7Q1whO6qsgOt95bRjQswgVZ9Ednr8j3ZHB26v9P5G9azkQk5VTBL
	JTsoXrkcOsld8GbQzxPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihUwE-0006oa-U2; Wed, 18 Dec 2019 08:44:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihUtJ-0004Dh-My; Wed, 18 Dec 2019 08:41:12 +0000
X-UUID: 734757473b1143c886a0e458c44cf313-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=uXGkn3ZDyK4FYh6/CU/GmdIkkH8fqdIaTYa0BJ/T64c=; 
 b=l+poRVwc2dMgjLxzscRnRQA5R8kk/sbvriVtg/mFx12cUrINXY7+7xefQMruLO8pI/D90CjBYo+pA8HCfBRZK+gbVcDLn10hYbQ1lQ3KLrXTWsucoIzVgNcSP2K2ZPfezRnkflKvNcbsa3k0Hqj8VfA8EOorRA4zh7HULBAsZy8=;
X-UUID: 734757473b1143c886a0e458c44cf313-20191218
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1090375823; Wed, 18 Dec 2019 00:41:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 00:31:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 16:30:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Dec 2019 16:30:29 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v10 05/12] soc: mediatek: Add multiple step bus protection
 control
Date: Wed, 18 Dec 2019 16:30:41 +0800
Message-ID: <1576657848-14711-6-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
References: <1576657848-14711-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_004109_872745_BEB07571 
X-CRM114-Status: GOOD (  18.20  )
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

Both MT8183 & MT6765 have more control steps of bus protection
than previous project. And there add more bus protection registers
reside at infracfg & smi-common. Also add new APIs for multiple
step bus protection control with more customized arguments.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/Makefile           |  2 +-
 drivers/soc/mediatek/mtk-scpsys-ext.c   | 99 +++++++++++++++++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.c       | 39 +++++++++----
 include/linux/soc/mediatek/scpsys-ext.h | 39 +++++++++++++
 4 files changed, 168 insertions(+), 11 deletions(-)
 create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
 create mode 100644 include/linux/soc/mediatek/scpsys-ext.h

diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
index b017330..b442be9 100644
--- a/drivers/soc/mediatek/Makefile
+++ b/drivers/soc/mediatek/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
-obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
+obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
 obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
 obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
diff --git a/drivers/soc/mediatek/mtk-scpsys-ext.c b/drivers/soc/mediatek/mtk-scpsys-ext.c
new file mode 100644
index 0000000..8150d4f
--- /dev/null
+++ b/drivers/soc/mediatek/mtk-scpsys-ext.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Owen Chen <Owen.Chen@mediatek.com>
+ */
+#include <linux/ktime.h>
+#include <linux/mfd/syscon.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+#include <linux/soc/mediatek/scpsys-ext.h>
+
+#define MTK_POLL_DELAY_US   10
+#define MTK_POLL_TIMEOUT    USEC_PER_SEC
+
+static int set_bus_protection(struct regmap *map, u32 mask, u32 ack_mask,
+		u32 reg_set, u32 reg_sta, u32 reg_en)
+{
+	u32 val;
+
+	if (reg_set)
+		regmap_write(map, reg_set, mask);
+	else
+		regmap_update_bits(map, reg_en, mask, mask);
+
+	return regmap_read_poll_timeout(map, reg_sta,
+			val, (val & ack_mask) == ack_mask,
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
+static int clear_bus_protection(struct regmap *map, u32 mask, u32 ack_mask,
+		u32 reg_clr, u32 reg_sta, u32 reg_en)
+{
+	u32 val;
+
+	if (reg_clr)
+		regmap_write(map, reg_clr, mask);
+	else
+		regmap_update_bits(map, reg_en, mask, 0);
+
+	return regmap_read_poll_timeout(map, reg_sta,
+			val, !(val & ack_mask),
+			MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
+int mtk_scpsys_ext_set_bus_protection(const struct bus_prot *bp_table,
+	struct regmap *infracfg, struct regmap *smi_common)
+{
+	int i;
+
+	for (i = 0; i < MAX_STEPS; i++) {
+		struct regmap *map = NULL;
+		int ret;
+
+		if (bp_table[i].type == INVALID_TYPE)
+			break;
+		else if (bp_table[i].type == IFR_TYPE)
+			map = infracfg;
+		else if (bp_table[i].type == SMI_TYPE)
+			map = smi_common;
+
+		ret = set_bus_protection(map,
+				bp_table[i].mask, bp_table[i].mask,
+				bp_table[i].set_ofs, bp_table[i].sta_ofs,
+				bp_table[i].en_ofs);
+
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+int mtk_scpsys_ext_clear_bus_protection(const struct bus_prot *bp_table,
+	struct regmap *infracfg, struct regmap *smi_common)
+{
+	int i;
+
+	for (i = MAX_STEPS - 1; i >= 0; i--) {
+		struct regmap *map = NULL;
+		int ret;
+
+		if (bp_table[i].type == INVALID_TYPE)
+			continue;
+		else if (bp_table[i].type == IFR_TYPE)
+			map = infracfg;
+		else if (bp_table[i].type == SMI_TYPE)
+			map = smi_common;
+
+		ret = clear_bus_protection(map,
+				bp_table[i].mask, bp_table[i].clr_ack_mask,
+				bp_table[i].clr_ofs, bp_table[i].sta_ofs,
+				bp_table[i].en_ofs);
+
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index db35a28..5699d9f 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -12,6 +12,7 @@
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 #include <linux/soc/mediatek/infracfg.h>
+#include <linux/soc/mediatek/scpsys-ext.h>
 
 #include <dt-bindings/power/mt2701-power.h>
 #include <dt-bindings/power/mt2712-power.h>
@@ -90,6 +91,7 @@
  * @bus_prot_mask: The mask for single step bus protection.
  * @basic_clk_name: The basic clocks required by this power domain.
  * @caps: The flag for active wake-up action.
+ * @bp_table: The mask table for multiple step bus protection.
  */
 struct scp_domain_data {
 	const char *name;
@@ -100,6 +102,7 @@ struct scp_domain_data {
 	u32 bus_prot_mask;
 	const char *basic_clk_name[MAX_CLKS];
 	u8 caps;
+	struct bus_prot bp_table[MAX_STEPS];
 };
 
 struct scp;
@@ -123,6 +126,7 @@ struct scp {
 	struct device *dev;
 	void __iomem *base;
 	struct regmap *infracfg;
+	struct regmap *smi_common;
 	struct scp_ctrl_reg ctrl_reg;
 	bool bus_prot_reg_update;
 };
@@ -252,24 +256,28 @@ static int scpsys_bus_protect_enable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
 
-	if (!scpd->data->bus_prot_mask)
-		return 0;
+	if (scpd->data->bus_prot_mask) {
+		return mtk_infracfg_set_bus_protection(scp->infracfg,
+				scpd->data->bus_prot_mask,
+				scp->bus_prot_reg_update);
+	}
 
-	return mtk_infracfg_set_bus_protection(scp->infracfg,
-			scpd->data->bus_prot_mask,
-			scp->bus_prot_reg_update);
+	return mtk_scpsys_ext_set_bus_protection(scpd->data->bp_table,
+			scp->infracfg, scp->smi_common);
 }
 
 static int scpsys_bus_protect_disable(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
 
-	if (!scpd->data->bus_prot_mask)
-		return 0;
+	if (scpd->data->bus_prot_mask) {
+		return mtk_infracfg_clear_bus_protection(scp->infracfg,
+				scpd->data->bus_prot_mask,
+				scp->bus_prot_reg_update);
+	}
 
-	return mtk_infracfg_clear_bus_protection(scp->infracfg,
-			scpd->data->bus_prot_mask,
-			scp->bus_prot_reg_update);
+	return mtk_scpsys_ext_clear_bus_protection(scpd->data->bp_table,
+			scp->infracfg, scp->smi_common);
 }
 
 static int scpsys_power_on(struct generic_pm_domain *genpd)
@@ -448,6 +456,17 @@ static struct scp *init_scp(struct platform_device *pdev,
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
diff --git a/include/linux/soc/mediatek/scpsys-ext.h b/include/linux/soc/mediatek/scpsys-ext.h
new file mode 100644
index 0000000..3e5b84d
--- /dev/null
+++ b/include/linux/soc/mediatek/scpsys-ext.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __SOC_MEDIATEK_SCPSYS_EXT_H
+#define __SOC_MEDIATEK_SCPSYS_EXT_H
+
+#define MAX_STEPS	4
+
+#define BUS_PROT(_type, _set_ofs, _clr_ofs,			\
+		_en_ofs, _sta_ofs, _mask, _clr_ack_mask) {	\
+		.type = _type,					\
+		.set_ofs = _set_ofs,				\
+		.clr_ofs = _clr_ofs,				\
+		.en_ofs = _en_ofs,				\
+		.sta_ofs = _sta_ofs,				\
+		.mask = _mask,					\
+		.clr_ack_mask = _clr_ack_mask,			\
+	}
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
+	u32 clr_ack_mask;
+};
+
+int mtk_scpsys_ext_set_bus_protection(const struct bus_prot *bp_table,
+	struct regmap *infracfg, struct regmap *smi_common);
+int mtk_scpsys_ext_clear_bus_protection(const struct bus_prot *bp_table,
+	struct regmap *infracfg, struct regmap *smi_common);
+
+#endif /* __SOC_MEDIATEK_SCPSYS_EXT_H */
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
