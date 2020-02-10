Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B3815813B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 18:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s3n9Ab6of9CeTjR1F5zwcgaa9U9FvU1dhS8fi83xnm8=; b=etG+4LhwdfaGwz
	Gcv9+o2/KlyypRUmo/Qd5gmV5di8jrf1BpJ0e9azMqjHO7/RMH/S1/J2G2oRkN/fYfdiVg5zKA1jk
	bavVpFd3TSF2hy1PIDkJwKmCrfHjAYZNF5N7Nce9tvG4Ss/KI6tXcHWEaySvco7kw9c9nuKWjtYAr
	z1isPDOwDnNWizrEC0nGeSBWpCgoWLHQ6HiwRKAuGCUygRSUKvkxypwOksTnNQOWNW23v0lwtrvc3
	BYisxhVr4bG1varcFnQoAqMB6udzW19d3qjJ9GcZgcvocs8HPc0KT+7R9VR/Oi6iFLyWOu73jprXl
	JHG30y28yEXtf3i9jMLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Cjy-0001Ib-Ji; Mon, 10 Feb 2020 17:20:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Cjq-0001HN-OV
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 17:20:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01AHDuT2006470; Mon, 10 Feb 2020 18:20:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=SMCzYj+ISPqAIenV1PhFxwqt2N74R+gaqmPA2eHuFM0=;
 b=YDCPabLeiJJvEtb+viL0JkRs7xQjQRtApBz5x3uTiYOfWPRXcTSfGrvJIZyoLBA/GsVW
 v4bB61Qc7RICu9iMYWamRWUO6HKx64HI7rGDblAnAEam/INw7sNcpLQLBPOMjJynZcRa
 4xecocoTHXNxNFG90bV9Dpiu9luHlGVP+6goFPQ9I1Hlw9N7myO6G9bO28JltRpdcEJx
 gLV33KrFgiS45tnHUb4vGMo228VjkBgzGJKa9J4ymi8tFVrbo0qAU+SRq8Hw++dhin0r
 rfFhaBgJFg45634PLvXn1639kpSjc0ADzgVOqguwWXCQpAz76HgkvZkRoob3lk1qVf/b oA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1uvd45dg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 18:20:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B6DA9100038;
 Mon, 10 Feb 2020 18:20:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A96C32BA253;
 Mon, 10 Feb 2020 18:20:46 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG5NODE3.st.com (10.75.127.15)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 10 Feb 2020 18:20:46 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <jic23@kernel.org>
Subject: [PATCH v2] counter: stm32-timer-cnt: add power management support
Date: Mon, 10 Feb 2020 18:19:58 +0100
Message-ID: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_06:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_092051_087839_524518C6 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: benjamin.gaignard@st.com, linux-iio@vger.kernel.org, vilhelm.gray@gmail.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add suspend/resume PM sleep ops. When going to low power, enforce the
counter isn't active. Gracefully restore its state upon resume in case
it's been left enabled prior to suspend.

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
Changes in v2:
- Don't refuse to suspend in case the counter has been left enabled.
  Gracefully disable it and restore its state upon resume.
---
 drivers/counter/stm32-timer-cnt.c | 63 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
index 3eafcce..50496f4 100644
--- a/drivers/counter/stm32-timer-cnt.c
+++ b/drivers/counter/stm32-timer-cnt.c
@@ -12,6 +12,7 @@
 #include <linux/iio/types.h>
 #include <linux/mfd/stm32-timers.h>
 #include <linux/module.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 
 #define TIM_CCMR_CCXS	(BIT(8) | BIT(0))
@@ -20,11 +21,20 @@
 #define TIM_CCER_MASK	(TIM_CCER_CC1P | TIM_CCER_CC1NP | \
 			 TIM_CCER_CC2P | TIM_CCER_CC2NP)
 
+struct stm32_timer_regs {
+	u32 cr1;
+	u32 cnt;
+	u32 smcr;
+	u32 arr;
+};
+
 struct stm32_timer_cnt {
 	struct counter_device counter;
 	struct regmap *regmap;
 	struct clk *clk;
 	u32 ceiling;
+	bool enabled;
+	struct stm32_timer_regs bak;
 };
 
 /**
@@ -224,6 +234,9 @@ static ssize_t stm32_count_enable_write(struct counter_device *counter,
 			clk_disable(priv->clk);
 	}
 
+	/* Keep enabled state to properly handle low power states */
+	priv->enabled = enable;
+
 	return len;
 }
 
@@ -358,10 +371,59 @@ static int stm32_timer_cnt_probe(struct platform_device *pdev)
 	priv->counter.num_signals = ARRAY_SIZE(stm32_signals);
 	priv->counter.priv = priv;
 
+	platform_set_drvdata(pdev, priv);
+
 	/* Register Counter device */
 	return devm_counter_register(dev, &priv->counter);
 }
 
+static int __maybe_unused stm32_timer_cnt_suspend(struct device *dev)
+{
+	struct stm32_timer_cnt *priv = dev_get_drvdata(dev);
+
+	/* Only take care of enabled counter: don't disturb other MFD child */
+	if (priv->enabled) {
+		/* Backup registers that may get lost in low power mode */
+		regmap_read(priv->regmap, TIM_SMCR, &priv->bak.smcr);
+		regmap_read(priv->regmap, TIM_ARR, &priv->bak.arr);
+		regmap_read(priv->regmap, TIM_CNT, &priv->bak.cnt);
+		regmap_read(priv->regmap, TIM_CR1, &priv->bak.cr1);
+
+		/* Disable the counter */
+		regmap_update_bits(priv->regmap, TIM_CR1, TIM_CR1_CEN, 0);
+		clk_disable(priv->clk);
+	}
+
+	return pinctrl_pm_select_sleep_state(dev);
+}
+
+static int __maybe_unused stm32_timer_cnt_resume(struct device *dev)
+{
+	struct stm32_timer_cnt *priv = dev_get_drvdata(dev);
+	int ret;
+
+	ret = pinctrl_pm_select_default_state(dev);
+	if (ret)
+		return ret;
+
+	if (priv->enabled) {
+		clk_enable(priv->clk);
+
+		/* Restore registers that may have been lost */
+		regmap_write(priv->regmap, TIM_SMCR, priv->bak.smcr);
+		regmap_write(priv->regmap, TIM_ARR, priv->bak.arr);
+		regmap_write(priv->regmap, TIM_CNT, priv->bak.cnt);
+
+		/* Also re-enables the counter */
+		regmap_write(priv->regmap, TIM_CR1, priv->bak.cr1);
+	}
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(stm32_timer_cnt_pm_ops, stm32_timer_cnt_suspend,
+			 stm32_timer_cnt_resume);
+
 static const struct of_device_id stm32_timer_cnt_of_match[] = {
 	{ .compatible = "st,stm32-timer-counter", },
 	{},
@@ -373,6 +435,7 @@ static struct platform_driver stm32_timer_cnt_driver = {
 	.driver = {
 		.name = "stm32-timer-counter",
 		.of_match_table = stm32_timer_cnt_of_match,
+		.pm = &stm32_timer_cnt_pm_ops,
 	},
 };
 module_platform_driver(stm32_timer_cnt_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
