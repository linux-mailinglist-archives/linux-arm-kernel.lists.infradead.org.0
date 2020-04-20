Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B59A31B0519
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 11:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i53qfbL93t4DEryZcg1F7vNqGTyOchYMdacpHZFhUTU=; b=hw9B5dvmQcWr8v
	X7JhazrBQjJp7bI0CWVPgHYk7OtKvZYMujlWn8qTFNsasGGgdojt3xMEYs6LANXQNzHGB6cOArYgW
	FztiVg12UKh1tgh7nv1DcL/U2C0TZ98bASXz0WT01FGCfJQBnIzYWEiIV81jGwsq6TBj2F1VNUVQY
	XH3fLeIfGdoUwYE6M1NTUBV2V9H6CDrRBTwve7Seuuonnsl3lKkFBFKEtAyZDMUczQ9TiQNhVfb9A
	pVg71MH42T5ejY4t8n3h11rLO9EuFQdAEI8bnZb42xMAmpgnJsMgCG9S3yFg2qnfr9zdlxDVFvtpR
	fxjf1z0oq16U8C5TfesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSI0-0006km-6y; Mon, 20 Apr 2020 09:00:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSHM-0006WH-QJ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:59:50 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03K8woNp006295; Mon, 20 Apr 2020 10:59:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ykAdJuzCEqfvV3T3+9XobxNxIKMC5AF872h8FdNdsig=;
 b=Be/1jGaJCq0/BuiT//2v2mNLc2PLMtBSKyyRwkumTJeQ6rkWj7Hjqhz4a0tMSC/RRuep
 mD6M8hFuQMqwYgJwNPRkvrLP2M0c0K+1MCT9n9uTm8bS9hIY4gCvBIjRXiL1kNxoa84M
 B0QGoeckf7bSQ7fn1OpLEM8ZUuu4ga2ob1DCwrVwMXC5EaR+WXeLsSEw/wzQ6P0geUNh
 uBw0zZ1UoZlJe++LTFl+ILYUFvtVS/0BPGC8WV1OytMl0mRgcv8c+4qIpJ+brAZBb5Ib
 8ZZ3akrxUKKTvAk06DTOTK13VKVO1hW2+S8KWgz0CJGPg+Yc0etGuBClSUHpYBvTl4OW Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fqaw18s3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 10:59:40 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4CB0510002A;
 Mon, 20 Apr 2020 10:59:40 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3AB792BC7DA;
 Mon, 20 Apr 2020 10:59:40 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 10:59:39
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <fabrice.gasnier@st.com>, <lee.jones@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [RESEND v6 5/6] clocksource: Add Low Power STM32 timers driver
Date: Mon, 20 Apr 2020 10:59:29 +0200
Message-ID: <20200420085930.26989-6-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200420085930.26989-1-benjamin.gaignard@st.com>
References: <20200420085930.26989-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_03:2020-04-17,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_015949_267125_A74E5DEF 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pascal Paillet <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Benjamin Gaignard <benjamin.gaignard@linaro.org>

Implement clock event driver using low power STM32 timers.
Low power timer counters running even when CPUs are stopped.
It could be used as clock event broadcaster to wake up CPUs but not like
a clocksource because each it rise an interrupt the counter restart from 0.

Low power timers have a 16 bits counter and a prescaler which allow to
divide the clock per power of 2 to up 128 to target a 32KHz rate.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 drivers/clocksource/Kconfig          |   4 +
 drivers/clocksource/Makefile         |   1 +
 drivers/clocksource/timer-stm32-lp.c | 221 +++++++++++++++++++++++++++++++++++
 3 files changed, 226 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f2142e6bbea3..22b8d8f1eb40 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -292,6 +292,10 @@ config CLKSRC_STM32
 	select CLKSRC_MMIO
 	select TIMER_OF
 
+config CLKSRC_STM32_LP
+	bool "Low power clocksource for STM32 SoCs"
+	depends on MFD_STM32_LPTIMER || COMPILE_TEST
+
 config CLKSRC_MPS2
 	bool "Clocksource for MPS2 SoCs" if COMPILE_TEST
 	depends on GENERIC_SCHED_CLOCK
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 641ba5383ab5..69f744135cb5 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_BCM_KONA_TIMER)	+= bcm_kona_timer.o
 obj-$(CONFIG_CADENCE_TTC_TIMER)	+= timer-cadence-ttc.o
 obj-$(CONFIG_CLKSRC_EFM32)	+= timer-efm32.o
 obj-$(CONFIG_CLKSRC_STM32)	+= timer-stm32.o
+obj-$(CONFIG_CLKSRC_STM32_LP)	+= timer-stm32-lp.o
 obj-$(CONFIG_CLKSRC_EXYNOS_MCT)	+= exynos_mct.o
 obj-$(CONFIG_CLKSRC_LPC32XX)	+= timer-lpc32xx.o
 obj-$(CONFIG_CLKSRC_MPS2)	+= mps2-timer.o
diff --git a/drivers/clocksource/timer-stm32-lp.c b/drivers/clocksource/timer-stm32-lp.c
new file mode 100644
index 000000000000..0f06b8a337aa
--- /dev/null
+++ b/drivers/clocksource/timer-stm32-lp.c
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Authors: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ *	    Pascal Paillet <p.paillet@st.com> for STMicroelectronics.
+ */
+
+#include <linux/clk.h>
+#include <linux/clockchips.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/stm32-lptimer.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/platform_device.h>
+#include <linux/pm_wakeirq.h>
+
+#define CFGR_PSC_OFFSET		9
+#define STM32_LP_RATING		1000
+#define STM32_TARGET_CLKRATE	(32000 * HZ)
+#define STM32_LP_MAX_PSC	7
+
+struct stm32_lp_private {
+	struct regmap *reg;
+	struct clock_event_device clkevt;
+	unsigned long period;
+	struct device *dev;
+};
+
+static struct stm32_lp_private*
+to_priv(struct clock_event_device *clkevt)
+{
+	return container_of(clkevt, struct stm32_lp_private, clkevt);
+}
+
+static int stm32_clkevent_lp_shutdown(struct clock_event_device *clkevt)
+{
+	struct stm32_lp_private *priv = to_priv(clkevt);
+
+	regmap_write(priv->reg, STM32_LPTIM_CR, 0);
+	regmap_write(priv->reg, STM32_LPTIM_IER, 0);
+	/* clear pending flags */
+	regmap_write(priv->reg, STM32_LPTIM_ICR, STM32_LPTIM_ARRMCF);
+
+	return 0;
+}
+
+static int stm32_clkevent_lp_set_timer(unsigned long evt,
+				       struct clock_event_device *clkevt,
+				       int is_periodic)
+{
+	struct stm32_lp_private *priv = to_priv(clkevt);
+
+	/* disable LPTIMER to be able to write into IER register*/
+	regmap_write(priv->reg, STM32_LPTIM_CR, 0);
+	/* enable ARR interrupt */
+	regmap_write(priv->reg, STM32_LPTIM_IER, STM32_LPTIM_ARRMIE);
+	/* enable LPTIMER to be able to write into ARR register */
+	regmap_write(priv->reg, STM32_LPTIM_CR, STM32_LPTIM_ENABLE);
+	/* set next event counter */
+	regmap_write(priv->reg, STM32_LPTIM_ARR, evt);
+
+	/* start counter */
+	if (is_periodic)
+		regmap_write(priv->reg, STM32_LPTIM_CR,
+			     STM32_LPTIM_CNTSTRT | STM32_LPTIM_ENABLE);
+	else
+		regmap_write(priv->reg, STM32_LPTIM_CR,
+			     STM32_LPTIM_SNGSTRT | STM32_LPTIM_ENABLE);
+
+	return 0;
+}
+
+static int stm32_clkevent_lp_set_next_event(unsigned long evt,
+					    struct clock_event_device *clkevt)
+{
+	return stm32_clkevent_lp_set_timer(evt, clkevt,
+					   clockevent_state_periodic(clkevt));
+}
+
+static int stm32_clkevent_lp_set_periodic(struct clock_event_device *clkevt)
+{
+	struct stm32_lp_private *priv = to_priv(clkevt);
+
+	return stm32_clkevent_lp_set_timer(priv->period, clkevt, true);
+}
+
+static int stm32_clkevent_lp_set_oneshot(struct clock_event_device *clkevt)
+{
+	struct stm32_lp_private *priv = to_priv(clkevt);
+
+	return stm32_clkevent_lp_set_timer(priv->period, clkevt, false);
+}
+
+static irqreturn_t stm32_clkevent_lp_irq_handler(int irq, void *dev_id)
+{
+	struct clock_event_device *clkevt = (struct clock_event_device *)dev_id;
+	struct stm32_lp_private *priv = to_priv(clkevt);
+
+	regmap_write(priv->reg, STM32_LPTIM_ICR, STM32_LPTIM_ARRMCF);
+
+	if (clkevt->event_handler)
+		clkevt->event_handler(clkevt);
+
+	return IRQ_HANDLED;
+}
+
+static void stm32_clkevent_lp_set_prescaler(struct stm32_lp_private *priv,
+					    unsigned long *rate)
+{
+	int i;
+
+	for (i = 0; i <= STM32_LP_MAX_PSC; i++) {
+		if (DIV_ROUND_CLOSEST(*rate, 1 << i) < STM32_TARGET_CLKRATE)
+			break;
+	}
+
+	regmap_write(priv->reg, STM32_LPTIM_CFGR, i << CFGR_PSC_OFFSET);
+
+	/* Adjust rate and period given the prescaler value */
+	*rate = DIV_ROUND_CLOSEST(*rate, (1 << i));
+	priv->period = DIV_ROUND_UP(*rate, HZ);
+}
+
+static void stm32_clkevent_lp_init(struct stm32_lp_private *priv,
+				  struct device_node *np, unsigned long rate)
+{
+	priv->clkevt.name = np->full_name;
+	priv->clkevt.cpumask = cpu_possible_mask;
+	priv->clkevt.features = CLOCK_EVT_FEAT_PERIODIC |
+				CLOCK_EVT_FEAT_ONESHOT;
+	priv->clkevt.set_state_shutdown = stm32_clkevent_lp_shutdown;
+	priv->clkevt.set_state_periodic = stm32_clkevent_lp_set_periodic;
+	priv->clkevt.set_state_oneshot = stm32_clkevent_lp_set_oneshot;
+	priv->clkevt.set_next_event = stm32_clkevent_lp_set_next_event;
+	priv->clkevt.rating = STM32_LP_RATING;
+
+	clockevents_config_and_register(&priv->clkevt, rate, 0x1,
+					STM32_LPTIM_MAX_ARR);
+}
+
+static int stm32_clkevent_lp_probe(struct platform_device *pdev)
+{
+	struct stm32_lptimer *ddata = dev_get_drvdata(pdev->dev.parent);
+	struct stm32_lp_private *priv;
+	unsigned long rate;
+	int ret, irq;
+
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->reg = ddata->regmap;
+	ret = clk_prepare_enable(ddata->clk);
+	if (ret)
+		return -EINVAL;
+
+	rate = clk_get_rate(ddata->clk);
+	if (!rate) {
+		ret = -EINVAL;
+		goto out_clk_disable;
+	}
+
+	irq = platform_get_irq(to_platform_device(pdev->dev.parent), 0);
+	if (irq <= 0) {
+		ret = irq;
+		goto out_clk_disable;
+	}
+
+	if (of_property_read_bool(pdev->dev.parent->of_node, "wakeup-source")) {
+		ret = device_init_wakeup(&pdev->dev, true);
+		if (ret)
+			goto out_clk_disable;
+
+		ret = dev_pm_set_wake_irq(&pdev->dev, irq);
+		if (ret)
+			goto out_clk_disable;
+	}
+
+	ret = devm_request_irq(&pdev->dev, irq, stm32_clkevent_lp_irq_handler,
+			       IRQF_TIMER, pdev->name, &priv->clkevt);
+	if (ret)
+		goto out_clk_disable;
+
+	stm32_clkevent_lp_set_prescaler(priv, &rate);
+
+	stm32_clkevent_lp_init(priv, pdev->dev.parent->of_node, rate);
+
+	priv->dev = &pdev->dev;
+
+	return 0;
+
+out_clk_disable:
+	clk_disable_unprepare(ddata->clk);
+	return ret;
+}
+
+static int stm32_clkevent_lp_remove(struct platform_device *pdev)
+{
+	return -EBUSY; /* cannot unregister clockevent */
+}
+
+static const struct of_device_id stm32_clkevent_lp_of_match[] = {
+	{ .compatible = "st,stm32-lptimer-timer", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, stm32_clkevent_lp_of_match);
+
+static struct platform_driver stm32_clkevent_lp_driver = {
+	.probe	= stm32_clkevent_lp_probe,
+	.remove = stm32_clkevent_lp_remove,
+	.driver	= {
+		.name = "stm32-lptimer-timer",
+		.of_match_table = of_match_ptr(stm32_clkevent_lp_of_match),
+	},
+};
+module_platform_driver(stm32_clkevent_lp_driver);
+
+MODULE_ALIAS("platform:stm32-lptimer-timer");
+MODULE_DESCRIPTION("STMicroelectronics STM32 clockevent low power driver");
+MODULE_LICENSE("GPL v2");
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
