Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C978F1DA8C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 05:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmvZpqZharSkovHp5F+5PnHK9yMHP2xSUr3Eg0MLFPA=; b=IP82eqaAdKhPhD
	Fvno1egodBVxfsZCm+CW2hsRYZbMURLGZ494ki/lJAz+z8P8eET9TyQ52hh0mqOgNRxmzP+r/oMOu
	atAfc71qYeKsU+eLNDyD+HB5bgGC/nvpe0JxCF4rBqQbSze4e5lkKbfrMR/lQIXTJjtNAr+VHxrL2
	9iiK7nIbxcZ6LXX028Nh/bK1qGjklU0/a56p2L1mMaIHM+x2XY+7+8HoXmYqKEW8GNeazCMgTSvPY
	GPLneIp84N6T4o066LVm7Ma5Xc3Oyo1nqlOnE4sBbBBz7mN96Ks9m4Y1TLrnZ/vM0fr5im35HD7B4
	9uvrzdBiXdACG8fuSIqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFm8-0007EO-DE; Wed, 20 May 2020 03:52:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFlv-0007BO-1C; Wed, 20 May 2020 03:52:00 +0000
X-UUID: 418de52126ef401ca239b91f52a7c430-20200519
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=R6JEdcDnArnUkHDdGSE+ox37fVi8S9PPwN9cXFcnjLM=; 
 b=QQtZzt6MtWnUhEtRgJYkevMkTrDhaeOBb7e41OedlD4LaKgI4AvJYcughFL2eclFLSE4FnU40EY0n+ZFbUeXxqJhYjGFEGcBaI5SECNaUYKB5rsNXcM2yCKPE3HJHCnY9aNqyUO10XbjEBkPeXndZrjiEaRIuJUb0HU6AmPIcD4=;
X-UUID: 418de52126ef401ca239b91f52a7c430-20200519
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2096889539; Tue, 19 May 2020 19:51:55 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 19 May 2020 20:43:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 20 May 2020 11:43:35 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 20 May 2020 11:43:35 +0800
From: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>, Nishanth Menon <nm@ti.com>, "Stephen
 Boyd" <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>
Subject: [PATCH 12/12] devfreq: mediatek: cci devfreq register opp
 notification for SVS support
Date: Wed, 20 May 2020 11:43:07 +0800
Message-ID: <20200520034307.20435-13-andrew-sh.cheng@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_205159_086590_B5E9235B 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>, srv_heupstream@mediatek.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SVS will change the voltage of opp item.
CCI devfreq need to react to change frequency.

Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
---
 drivers/devfreq/mt8183-cci-devfreq.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
index cd7929a83bf8..3e03c1cac1a1 100644
--- a/drivers/devfreq/mt8183-cci-devfreq.c
+++ b/drivers/devfreq/mt8183-cci-devfreq.c
@@ -23,6 +23,7 @@ struct cci_devfreq {
 	struct clk *cci_clk;
 	int old_vproc;
 	unsigned long old_freq;
+	struct notifier_block opp_nb;
 };
 
 static int mtk_cci_set_voltage(struct cci_devfreq *cci_df, int vproc)
@@ -91,6 +92,26 @@ static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
 	return 0;
 }
 
+static int ccidevfreq_opp_notifier(struct notifier_block *nb,
+				   unsigned long event, void *data)
+{
+	struct dev_pm_opp *opp = data;
+	struct cci_devfreq *cci_df = container_of(nb, struct cci_devfreq,
+						  opp_nb);
+	unsigned long	freq, volt;
+
+	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
+		freq = dev_pm_opp_get_freq(opp);
+		/* current opp item is changed */
+		if (freq == cci_df->old_freq) {
+			volt = dev_pm_opp_get_voltage(opp);
+			mtk_cci_set_voltage(cci_df, volt);
+		}
+	}
+
+	return 0;
+}
+
 static struct devfreq_dev_profile cci_devfreq_profile = {
 	.target = mtk_cci_devfreq_target,
 };
@@ -100,12 +121,15 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 	struct device *cci_dev = &pdev->dev;
 	struct cci_devfreq *cci_df;
 	struct devfreq_passive_data *passive_data;
+	struct notifier_block *opp_nb;
 	int ret;
 
 	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
 	if (!cci_df)
 		return -ENOMEM;
 
+	opp_nb = &cci_df->opp_nb;
+
 	cci_df->cci_clk = devm_clk_get(cci_dev, "cci_clock");
 	ret = PTR_ERR_OR_ZERO(cci_df->cci_clk);
 	if (ret) {
@@ -153,6 +177,9 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	opp_nb->notifier_call = ccidevfreq_opp_notifier;
+	dev_pm_opp_register_notifier(cci_dev, opp_nb);
+
 	return 0;
 }
 
-- 
2.12.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
