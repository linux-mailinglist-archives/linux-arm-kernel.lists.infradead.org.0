Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4164C59D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 04:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqB3xSCo2h8YqNQPFHir+CPb9Wa2+JI5e7yWrE5Z5aw=; b=dztIhmMlHbyBG+
	fPOj1l8F3fs2Q2gwYJqvYDUnKfqkJCxe6XnKFIAR5xe8dXArkt/Sr32gTwOaV11Wdxr+JeXiVwSEc
	X1SF7TlSxVP/reO5JiDPJy8ubDasWE8+RPTyV0SXAN2vrpKtMUscDwVbnRaf493JHr+G8YyaYwhc0
	KcAblgP6c3XR1afzOQrBl6cYFpy04div4BKuEEfT+esPg3bEE0eAJH50loeuMc6hFllftRRM58mOl
	l0EWrhQ8UlV0ialbTdhJ3yMoY7+ev94ce/5Q2YlP4n57HHX8Tdun4klp8j7L/ZwYk97h449CxlttS
	KVvRQmkK51TcmFks0W9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdn3B-00038p-8S; Thu, 20 Jun 2019 02:43:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdmyO-0006Ax-KC; Thu, 20 Jun 2019 02:38:50 +0000
X-UUID: 88e355a3964e44fb9720dac1a80a5e03-20190619
X-UUID: 88e355a3964e44fb9720dac1a80a5e03-20190619
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 213257601; Wed, 19 Jun 2019 18:38:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 19:38:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 10:38:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 20 Jun 2019 10:38:20 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v6 10/14] soc: mediatek: Add multiple step bus protection
 control
Date: Thu, 20 Jun 2019 10:38:02 +0800
Message-ID: <1560998286-9189-11-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
References: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_193848_762327_2745C07C 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
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
index 64ce5ee..b9dbad6 100644
--- a/drivers/soc/mediatek/Makefile
+++ b/drivers/soc/mediatek/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
-obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
+obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
 obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
 obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
diff --git a/drivers/soc/mediatek/mtk-scpsys-ext.c b/drivers/soc/mediatek/mtk-scpsys-ext.c
new file mode 100644
index 0000000..b24321e
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
+		struct regmap *map;
+		int ret;
+
+		if (bp_table[i].type == INVALID_TYPE)
+			continue;
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
+		struct regmap *map;
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
index 4a0752e..10c2440 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -12,6 +12,7 @@
 #include <linux/pm_domain.h>
 #include <linux/regulator/consumer.h>
 #include <linux/soc/mediatek/infracfg.h>
+#include <linux/soc/mediatek/scpsys-ext.h>
 
 #include <dt-bindings/power/mt2701-power.h>
 #include <dt-bindings/power/mt2712-power.h>
@@ -120,6 +121,7 @@ enum clk_id {
  * @basic_clk_id: provide the same purpose with field "clk_id"
  *                by declaring basic clock prefix name rather than clk_id.
  * @caps: The flag for active wake-up action.
+ * @bp_table: The mask table for multiple step bus protection.
  */
 struct scp_domain_data {
 	const char *name;
@@ -131,6 +133,7 @@ struct scp_domain_data {
 	enum clk_id clk_id[MAX_CLKS];
 	const char *basic_clk_id[MAX_CLKS];
 	u8 caps;
+	struct bus_prot bp_table[MAX_STEPS];
 };
 
 struct scp;
@@ -154,6 +157,7 @@ struct scp {
 	struct device *dev;
 	void __iomem *base;
 	struct regmap *infracfg;
+	struct regmap *smi_common;
 	struct scp_ctrl_reg ctrl_reg;
 	bool bus_prot_reg_update;
 };
@@ -281,24 +285,28 @@ static int scpsys_bus_protect_enable(struct scp_domain *scpd)
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
@@ -466,6 +474,17 @@ static struct scp *init_scp(struct platform_device *pdev,
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
