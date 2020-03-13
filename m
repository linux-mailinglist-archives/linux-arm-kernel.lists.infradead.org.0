Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A592184403
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2V5++JHmnsOiu31Phxd7RFpoNVHuIOUyCNulyy+s0sk=; b=KL8sY+PPph6ypO
	lHpl755+TgBvvpMpPjY46Wk3gI8WYlrDwV5Lr6gZMluiXLjsEz5oGNlwQVgQK8/qE8jaBcgCOisuZ
	JDx84EyF1AU/gFCdKNQPXCnvPxfnDEMmz6wwcc7gwBMn6uhBzrEFQqQSsZ8OsladVAWezqPcInqC/
	ZxpNeDSgdxxsv/A8/IOdGvHB6lmX/OOpJPFk+cNDjomubMWYu1SDyFao0oycdZZAelblzoPEbU01q
	rYoEoNRWmdwObXXLzGwiT4GoPKWanexcD3NLKNtlNszOHyLAltQStB5it0fYBoLeJMJms4Fm9A4IB
	VLP1i2A7Or4f45iToQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgt4-0006YN-0W; Fri, 13 Mar 2020 09:45:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgs9-0004gH-Oj; Fri, 13 Mar 2020 09:44:55 +0000
X-UUID: d34073c3da044657a26417098835fbf9-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WAEDF3wVGcfjsbdKKEpfCJNHsy4ujyOaVE9TmeCQY2A=; 
 b=nacHbsjXdJLlfaxTDRTb1OXzs03qnpmXZguBtmxNT4Gp4Ck6XYnTTrC2sND2OCaBGftdmeIkZX+xe6zmKA3RU3dg1XiSJ2vj4A8h+Mp7WkHQVGGxy1iJJ4N1FiFk5qbDkgosQzcEuU4HVgT0sg1e7vnoZdUT1wSdMjfi2xZG00I=;
X-UUID: d34073c3da044657a26417098835fbf9-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 813582274; Fri, 13 Mar 2020 01:44:44 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 02:34:43 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 17:32:17 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 13 Mar 2020 17:33:40 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH V4 03/13] soc: mediatek: add support for the performance state
Date: Fri, 13 Mar 2020 17:34:16 +0800
Message-ID: <1584092066-24425-4-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_024453_826343_915053E4 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Henry Chen <henryc.chen@mediatek.com>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Arvin Wang <arvin.wang@mediatek.com>,
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
index 8538408..add75a5 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -10,8 +10,10 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_opp.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
+#include <linux/slab.h>
 #include "scpsys.h"
 
 #include <dt-bindings/power/mt2701-power.h>
@@ -21,6 +23,7 @@
 #include <dt-bindings/power/mt7623a-power.h>
 #include <dt-bindings/power/mt8173-power.h>
 #include <dt-bindings/power/mt8183-power.h>
+#include "mtk-scpsys.h"
 
 #define MTK_POLL_DELAY_US   10
 #define MTK_POLL_TIMEOUT    USEC_PER_SEC
@@ -150,6 +153,18 @@ struct scp_soc_data {
 	const struct scp_ctrl_reg regs;
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
@@ -550,6 +565,41 @@ static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
 	return 0;
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
 			const struct scp_ctrl_reg *scp_ctrl_reg)
@@ -650,6 +700,14 @@ static struct scp *init_scp(struct platform_device *pdev,
 		genpd->power_on = scpsys_power_on;
 		if (MTK_SCPD_CAPS(scpd, MTK_SCPD_ACTIVE_WAKEUP))
 			genpd->flags |= GENPD_FLAG_ACTIVE_WAKEUP;
+
+		/* Add opp table check first to avoid OF runtime parse failed */
+		if (of_count_phandle_with_args(pdev->dev.of_node,
+		    "operating-points-v2", NULL) > 0) {
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
