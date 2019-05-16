Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348B22024B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoMzPLobu27ivd/R34ZMujGWUMPnBjAzJ1zGn55TUMw=; b=PSRFVKh/MNFhJV
	BrIimUEpuZTkXebi7/ri+jp+gM81U6YB/hScE0kK5aUAxvhhXZ3tN4/cbpTeXFdO7LVmoX7XtLPLS
	TZIOzbZPeN8MfAMc6D9FhyRkT5CdcLud/vF3NSZ1WumdU59lWFj9ZqtPORGXmg0KgU9rG5zsnAl6O
	tluXmMIkeHiSp8xsKDRtESRUWFOdBT6xV39hEX6iaqHnSa5bnlzzE8RdsxJWcRtiCims9VjOeoaVs
	0bfWzwnICVc+MfHsu61dvwXhfyY1apmA6VFmeExvxy4UKazWB64y6AYpGB5r2WKntGbiL7QL0Y4ID
	9bu9e6gOcEUS6VrYUkWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCQ3-0004Jt-54; Thu, 16 May 2019 09:11:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCPX-0003x1-Dn; Thu, 16 May 2019 09:10:54 +0000
X-UUID: 370caefb420b4d14846412d929716594-20190516
X-UUID: 370caefb420b4d14846412d929716594-20190516
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 582888598; Thu, 16 May 2019 01:08:58 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:08:57 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:08:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:08:54 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [PATCH 8/8] devfreq: mediatek: cci devfreq register opp notification
 for SVS support
Date: Thu, 16 May 2019 17:08:45 +0800
Message-ID: <1557997725-12178-9-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 62CC2EE68B25C65BA0EF7B7202A11B5471CAE6A481855F75FFF3832C060DAEC82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_021048_097263_D49DABC9 
X-CRM114-Status: GOOD (  13.19  )
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, fan.chen@mediatek.com,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>

SVS will change the voltage of opp item.
CCI devfreq need to react to change frequency.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/devfreq/mt8183-cci-devfreq.c | 63 ++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
index 818a167c442f..250c963789f3 100644
--- a/drivers/devfreq/mt8183-cci-devfreq.c
+++ b/drivers/devfreq/mt8183-cci-devfreq.c
@@ -19,7 +19,10 @@ struct cci_devfreq {
 	struct regulator *proc_reg;
 	unsigned long proc_reg_uV;
 	struct clk *cci_clk;
+	unsigned long freq;
 	struct notifier_block nb;
+	struct notifier_block opp_nb;
+	int cci_min_freq;
 };
 
 static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
@@ -65,17 +68,62 @@ static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
 	return 0;
 }
 
+static int ccidevfreq_opp_notifier(struct notifier_block *nb,
+unsigned long event, void *data)
+{
+	int ret;
+	struct dev_pm_opp *opp = data;
+	struct cci_devfreq *cci_df = container_of(nb, struct cci_devfreq,
+						  opp_nb);
+	unsigned long	freq, volt, cur_volt;
+
+	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
+		freq = dev_pm_opp_get_freq(opp);
+		/* current opp item is changed */
+		if (freq == cci_df->freq) {
+			volt = dev_pm_opp_get_voltage(opp);
+			cur_volt = regulator_get_voltage(cci_df->proc_reg);
+
+			if (volt > cur_volt) {
+				/* need reduce freq */
+				mutex_lock(&cci_df->devfreq->lock);
+				ret = update_devfreq(cci_df->devfreq);
+				if (ret)
+					pr_err("Fail to reduce cci frequency by opp notification: %d\n",
+					       ret);
+				mutex_unlock(&cci_df->devfreq->lock);
+			}
+		}
+
+		if (freq == cci_df->cci_min_freq) {
+			volt = dev_pm_opp_get_voltage(opp);
+			regulator_set_voltage(cci_df->proc_reg, volt, INT_MAX);
+		}
+	} else if (event == OPP_EVENT_DISABLE) {
+	}
+
+	return 0;
+}
+
+
 static int mtk_cci_governor_get_target(struct devfreq *devfreq,
 				       unsigned long *freq)
 {
 	struct cci_devfreq *cci_df;
 	struct dev_pm_opp *opp;
+	int ret;
 
 	cci_df = dev_get_drvdata(devfreq->dev.parent);
 
 	/* find available frequency */
 	opp = dev_pm_opp_find_freq_ceil_by_volt(devfreq->dev.parent,
 						cci_df->proc_reg_uV);
+	ret = PTR_ERR_OR_ZERO(opp);
+	if (ret) {
+		pr_err("%s[%d], cannot find opp with voltage=%d: %d\n",
+		       __func__, __LINE__, cci_df->proc_reg_uV, ret);
+		return ret;
+	}
 	*freq = dev_pm_opp_get_freq(opp);
 
 	return 0;
@@ -87,9 +135,11 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
 	int ret;
 	struct cci_devfreq *cci_df;
 	struct notifier_block *nb;
+	struct notifier_block *opp_nb;
 
 	cci_df = dev_get_drvdata(devfreq->dev.parent);
 	nb = &cci_df->nb;
+	opp_nb = &cci_df->opp_nb;
 
 	switch (event) {
 	case DEVFREQ_GOV_START:
@@ -100,6 +150,8 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
 		if (ret)
 			pr_err("%s: failed to add governor: %d\n", __func__,
 			       ret);
+		opp_nb->notifier_call = ccidevfreq_opp_notifier;
+		dev_pm_opp_register_notifier(devfreq->dev.parent, opp_nb);
 		break;
 
 	case DEVFREQ_GOV_STOP:
@@ -141,6 +193,8 @@ static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
 		return ret;
 	}
 
+	cci_df->freq = *freq;
+
 	return 0;
 }
 
@@ -152,6 +206,8 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 {
 	struct device *cci_dev = &pdev->dev;
 	struct cci_devfreq *cci_df;
+	unsigned long freq, volt;
+	struct dev_pm_opp *opp;
 	int ret;
 
 	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
@@ -181,6 +237,13 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* set voltage lower bound */
+	freq = 1;
+	opp = dev_pm_opp_find_freq_ceil(cci_dev, &freq);
+	cci_df->cci_min_freq = dev_pm_opp_get_freq(opp);
+	volt = dev_pm_opp_get_voltage(opp);
+	dev_pm_opp_put(opp);
+
 	platform_set_drvdata(pdev, cci_df);
 
 	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
