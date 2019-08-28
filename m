Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D8AA01BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIoYQuZTklWi/KczeiZUIZUaHsYpWqgV2y5B8sYJC+4=; b=braKYHWkL0ugtN
	WqOTpHqHz8qFGx1NBxS9wRihBTrY9wVUVb6catus4eF6YMZ8GAW/bSeungiApzZi25Uv/HE3WZdoK
	xN8wfExLv5Dzb5ytva7cJjiN1mCHyaC+iLVTZs8ruzn5yTg5/VmPN0t5OfLNFoIawcSjMVlqiy63F
	YPkx2fazkTQ4Eb313hQhV/VCIwhpr74+GIonWmkETqUdxnc1Nyc8ZmmkLhiWsjFL2SQRk0hbIfHYE
	FcUdUp2Qvd2vql6DMGc8jqtC5v50FJYfTgRqk/KPC6dUcQ32PEBM1S25dMzcrERqQcMd+vQqUl3xz
	jgyE4avER1g7F8pE6IKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2x5l-0003gL-Vh; Wed, 28 Aug 2019 12:30:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2x4M-0002MM-Oo; Wed, 28 Aug 2019 12:29:00 +0000
X-UUID: de93992e778244a7ba9099de65d92958-20190828
X-UUID: de93992e778244a7ba9099de65d92958-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1803454445; Wed, 28 Aug 2019 04:29:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 05:29:00 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 20:28:58 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 20:28:58 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>
Subject: [PATCH V3 03/10] soc: mediatek: add support for the performance state
Date: Wed, 28 Aug 2019 20:28:41 +0800
Message-ID: <1566995328-15158-4-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_052858_812873_F9901E83 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support power domain performance state, add header file for scp event.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 58 +++++++++++++++++++++++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.h | 22 +++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 drivers/soc/mediatek/mtk-scpsys.h

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index e072810..50bc254 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -10,7 +10,9 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_opp.h>
 #include <linux/regulator/consumer.h>
+#include <linux/slab.h>
 #include <linux/soc/mediatek/infracfg.h>
 #include <linux/soc/mediatek/scpsys-ext.h>
 
@@ -21,6 +23,7 @@
 #include <dt-bindings/power/mt7623a-power.h>
 #include <dt-bindings/power/mt8173-power.h>
 #include <dt-bindings/power/mt8183-power.h>
+#include "mtk-scpsys.h"
 
 #define MTK_POLL_DELAY_US   10
 #define MTK_POLL_TIMEOUT    USEC_PER_SEC
@@ -187,6 +190,18 @@ struct scp_soc_data {
 	bool bus_prot_reg_update;
 };
 
+static BLOCKING_NOTIFIER_HEAD(scpsys_notifier_list);
+
+int register_scpsys_notifier(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&scpsys_notifier_list, nb);
+}
+
+int unregister_scpsys_notifier(struct notifier_block *nb)
+{
+	return blocking_notifier_chain_unregister(&scpsys_notifier_list, nb);
+}
+
 static int scpsys_domain_is_on(struct scp_domain *scpd)
 {
 	struct scp *scp = scpd->scp;
@@ -505,6 +520,41 @@ static void init_clks(struct platform_device *pdev, struct clk **clk)
 		clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
 }
 
+static int mtk_pd_set_performance(struct generic_pm_domain *genpd,
+				  unsigned int state)
+{
+	int i;
+	struct scp_domain *scpd =
+		container_of(genpd, struct scp_domain, genpd);
+	struct scp_event_data scpe;
+	struct scp *scp = scpd->scp;
+	struct genpd_onecell_data *pd_data = &scp->pd_data;
+
+	for (i = 0; i < pd_data->num_domains; i++) {
+		if (genpd == pd_data->domains[i]) {
+			dev_dbg(scp->dev, "%d. %s = %d\n",
+				i, genpd->name, state);
+			break;
+		}
+	}
+
+	if (i == pd_data->num_domains)
+		return 0;
+
+	scpe.event_type = MTK_SCPSYS_PSTATE;
+	scpe.genpd = genpd;
+	scpe.domain_id = i;
+	blocking_notifier_call_chain(&scpsys_notifier_list, state, &scpe);
+
+	return 0;
+}
+
+static unsigned int mtk_pd_get_performance(struct generic_pm_domain *genpd,
+					   struct dev_pm_opp *opp)
+{
+	return dev_pm_opp_get_level(opp);
+}
+
 static struct scp *init_scp(struct platform_device *pdev,
 			const struct scp_domain_data *scp_domain_data, int num,
 			const struct scp_ctrl_reg *scp_ctrl_reg,
@@ -630,6 +680,14 @@ static struct scp *init_scp(struct platform_device *pdev,
 		genpd->power_on = scpsys_power_on;
 		if (MTK_SCPD_CAPS(scpd, MTK_SCPD_ACTIVE_WAKEUP))
 			genpd->flags |= GENPD_FLAG_ACTIVE_WAKEUP;
+
+		/* Add opp table check first to avoid OF runtime parse failed */
+		if (of_count_phandle_with_args(pdev->dev.of_node,
+		   "operating-points-v2", NULL) > 0) {
+			genpd->set_performance_state = mtk_pd_set_performance;
+			genpd->opp_to_performance_state =
+				mtk_pd_get_performance;
+		}
 	}
 
 	return scp;
diff --git a/drivers/soc/mediatek/mtk-scpsys.h b/drivers/soc/mediatek/mtk-scpsys.h
new file mode 100644
index 0000000..c1e8325
--- /dev/null
+++ b/drivers/soc/mediatek/mtk-scpsys.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (c) 2018 MediaTek Inc.
+ */
+
+#ifndef __MTK_SCPSYS_H__
+#define __MTK_SCPSYS_H__
+
+struct scp_event_data {
+	int event_type;
+	int domain_id;
+	struct generic_pm_domain *genpd;
+};
+
+enum scp_event_type {
+	MTK_SCPSYS_PSTATE,
+};
+
+int register_scpsys_notifier(struct notifier_block *nb);
+int unregister_scpsys_notifier(struct notifier_block *nb);
+
+#endif /* __MTK_SCPSYS_H__ */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
