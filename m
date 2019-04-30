Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70EBF352
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX6XJLjtCYzmgzafeQd6CgrTt0ioskVqJFblXvPL5ik=; b=pHw4Xdep47IZrE
	CJnDWVWp1Vg168oi6WQBqnqs8hRROCmc3zcJVbdS3aYDf1UfzlfFEnQiituHDcGhi8qFjc+t7qKd7
	q1V5SA2RhN/2GOR2c6Nvlyny5iNR/bpLMWtuqSLQaxbIkPFu9C5MZB++7DfKssdCF++naAyLAdDco
	B9/GqK6posBhUm2WRi8AXb1iRuN2AZV7jp+NYP8TuUBWulWVWIdCk7UVezXo9Z1D0d2JjXYUDVjcv
	w+mQB/h70bWq9jZs/tG2bJPbLSOdiLZf6r8Uqk66hpwy4+WTxdtvyhYnU3JVbPGu5mBf7M/L5QV0Y
	1gZbfxbaETINZPAyOykg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPKh-0000My-3U; Tue, 30 Apr 2019 09:45:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKJ-000055-Rt; Tue, 30 Apr 2019 09:45:29 +0000
X-UUID: 05a7876a754f43838c4b4f78faf92ef9-20190430
X-UUID: 05a7876a754f43838c4b4f78faf92ef9-20190430
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 814310092; Tue, 30 Apr 2019 01:45:23 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:19 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:19 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [RFC V2 03/11] soc: mediatek: add support for the performance state
Date: Tue, 30 Apr 2019 16:50:57 +0800
Message-ID: <1556614265-12745-4-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3237D3CA08FF8E8F307433A610F0F2EB87419DAB5EF29E037680A1C513F1CA872000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024527_922338_24C60EE7 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 drivers/soc/mediatek/mtk-scpsys.c | 53 +++++++++++++++++++++++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.h | 22 ++++++++++++++++
 2 files changed, 75 insertions(+)
 create mode 100644 drivers/soc/mediatek/mtk-scpsys.h

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index f1d82cd..be8c948 100644
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
@@ -188,6 +191,18 @@ struct scp_soc_data {
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
@@ -519,6 +534,41 @@ static void init_clks(struct platform_device *pdev, struct clk **clk)
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
@@ -642,6 +692,9 @@ static struct scp *init_scp(struct platform_device *pdev,
 		genpd->power_on = scpsys_power_on;
 		if (MTK_SCPD_CAPS(scpd, MTK_SCPD_ACTIVE_WAKEUP))
 			genpd->flags |= GENPD_FLAG_ACTIVE_WAKEUP;
+
+		genpd->set_performance_state = mtk_pd_set_performance;
+		genpd->opp_to_performance_state = mtk_pd_get_performance;
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
