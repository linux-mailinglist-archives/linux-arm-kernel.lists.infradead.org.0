Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4CE109D6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1rIUNJ2t+BR9N/JZ12G/aeFttFQJJ7aTIStfbJlcKs=; b=gNr+DgHg5gEmlC
	2/r++B4Ma5q5Sqn54qMGbCEfpRCC99aSzU+h1zsGs1P6TIO1NPBiibMh2lU1KKVME+qOemOhoIjlC
	fKYazoLM1EQVAL13sZteoe7cmtQ5mMyoXQX+IfXczuvY+l324OvOW6jdqWC9rboP+N5NTNBfmX/2x
	G81Fgj+O2/yGiNp4YSj0rdsctJ/u1u4qkUcneVYJ1qVwtqJOPkKjPlIWBaL35PpKdmLcif96s3Rrm
	zZqp49r5w5FSpzKIGGtrA132LAu48KSEbY8G9R6u7G6qDbzPWPbtMkzeBYEeYVrHEPlPDAa5gfVz7
	LJSRgOXqG8/IUIbq5gNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZXS-00051I-FI; Tue, 26 Nov 2019 12:01:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZX3-0004dF-QC; Tue, 26 Nov 2019 12:01:28 +0000
X-UUID: 9d4c069b4dee4057ad6c9486373d6639-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=l0eT5JUNY43dn/lpok9fOypKOqfCP1urJmkFIHbTp5o=; 
 b=A3f8Aq9UWftB94LjEXqNb6mdxL1kJlfrGHia2gBLc5VsCzJ2/7qiY7K5MdurQWtMLns91TC3c6tMVmnKmyIDzWuSVm+SZEg+494SlTawt62rAy7EL9tLX7LlIS2NJV+3m7SPnEG2VLV9vMGC78s8z+hy1sVKoE0RHmP9gK35bKk=;
X-UUID: 9d4c069b4dee4057ad6c9486373d6639-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1553763220; Tue, 26 Nov 2019 04:01:20 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 03:51:55 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 19:51:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 19:51:18 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>
Subject: [v5,
 PATCH 5/5] devfreq: mediatek: cci devfreq register opp notification
 for SVS support
Date: Tue, 26 Nov 2019 19:50:46 +0800
Message-ID: <1574769046-28449-6-git-send-email-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
References: <1574769046-28449-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_040125_898212_43B25E3C 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/devfreq/mt8183-cci-devfreq.c | 61 ++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
index 818a167c442f..afc274d73c2f 100644
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
@@ -65,17 +68,60 @@ static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
 	return 0;
 }
 
+static int ccidevfreq_opp_notifier(struct notifier_block *nb,
+				   unsigned long event, void *data)
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
+	}
+
+	return 0;
+}
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
@@ -87,9 +133,11 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
 	int ret;
 	struct cci_devfreq *cci_df;
 	struct notifier_block *nb;
+	struct notifier_block *opp_nb;
 
 	cci_df = dev_get_drvdata(devfreq->dev.parent);
 	nb = &cci_df->nb;
+	opp_nb = &cci_df->opp_nb;
 
 	switch (event) {
 	case DEVFREQ_GOV_START:
@@ -100,6 +148,8 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
 		if (ret)
 			pr_err("%s: failed to add governor: %d\n", __func__,
 			       ret);
+		opp_nb->notifier_call = ccidevfreq_opp_notifier;
+		dev_pm_opp_register_notifier(devfreq->dev.parent, opp_nb);
 		break;
 
 	case DEVFREQ_GOV_STOP:
@@ -141,6 +191,8 @@ static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
 		return ret;
 	}
 
+	cci_df->freq = *freq;
+
 	return 0;
 }
 
@@ -152,6 +204,8 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 {
 	struct device *cci_dev = &pdev->dev;
 	struct cci_devfreq *cci_df;
+	unsigned long freq, volt;
+	struct dev_pm_opp *opp;
 	int ret;
 
 	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
@@ -181,6 +235,13 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
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
