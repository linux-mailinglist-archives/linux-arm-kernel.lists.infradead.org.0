Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3040F1613E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 14:47:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kRPO5v1K/TrD0OyPnn9c1f1V7ut8wHaHeiDUwZ2dsU=; b=KvMAppGMyRcx6T
	mfM2XgOZ9ya08pq8xdG9NzRhA6u/de8KxdhFIuEsOw0FLhJDNhULwc7lRqVu01T4FEmiSTIZ1fU0l
	Nugdgkq6Qp4LLAnFp4mQwZ71pRqSKcDID43+mCOVJsPb62NuKWa1UXvUAc6RwKHDxvzQrD0uQbGws
	caW1q6q1x2BGy5W/DYRpzJoCtf358wSDL4dnoMjZJQ/XAUlEmfZqULfSGNB5KGQQmwta08y1Cagup
	vrtd6dXJyGYCHlylR9WCOx2rnh8RyHsO+nGc4fUuCNa6D3LzKErpuoSB9zANMFBomI8ANPBBjtILk
	wTW5hJNn+ZXyN4FagzgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gkF-0007IJ-57; Mon, 17 Feb 2020 13:47:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gip-0006Kb-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 13:46:06 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01HDhVxR007656; Mon, 17 Feb 2020 14:45:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=5KigXvuFpqE23hpgMkeSflEO5elhAPnlDRqpTozyIKE=;
 b=0iugv1PpC/rgsMmTSHrLqccos3D1QwB/pctcQutz9JVat01Hn9jYsNsVra5tzgXqHMcl
 NAIvFIZznwe/YmJkqmOt7SaB6w71jLDaKOc77dfISPK3jc1wuhPvF/jNuB3jgC9TTdY5
 ZW1rr+sXPHmPrB+SczxBXY41NEoYYivAiE7lIhLp8ZVdj2NDBMrlnsc9j1wXlfS+v7OC
 +1wNyH4zshGPZXOin4f1O6+PpWL+gypSonrv3vAKnGvjXwYVXrfp7varZgcrCzNg5dWw
 xIPw+KvMEI+yskBvTcMfnrNjgvnbL3UJqtfrmxe5dUvDNgxPyGruI6/t+J9/pdfuMYVA ww== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y68dp3ay7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 17 Feb 2020 14:45:56 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92183100038;
 Mon, 17 Feb 2020 14:45:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8268E2FF5C7;
 Mon, 17 Feb 2020 14:45:51 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 17 Feb 2020 14:45:50
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <fabrice.gasnier@st.com>
Subject: [PATCH v4 3/3] clocksource: Add Low Power STM32 timers driver
Date: Mon, 17 Feb 2020 14:45:46 +0100
Message-ID: <20200217134546.14562-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200217134546.14562-1-benjamin.gaignard@st.com>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-17_08:2020-02-17,
 2020-02-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_054604_208765_52A1672C 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
version 4:
- move defines in mfd/stm32-lptimer.h
- change compatiblename
- reword commit message
- make driver Kconfig depends of MFD_STM32_LPTIMER
- remove useless include
- remove rate and clk fields from the private structure
- to add comments about the registers sequence in stm32_clkevent_lp_set_timer
- rework probe function and use devm_request_irq()
- do not allow module to be removed
- make sure that wakeup interrupt is set

 drivers/clocksource/Kconfig          |   7 ++
 drivers/clocksource/Makefile         |   1 +
 drivers/clocksource/timer-stm32-lp.c | 213 +++++++++++++++++++++++++++++++++++
 3 files changed, 221 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index cc909e465823..9fc2b513db6f 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -292,6 +292,13 @@ config CLKSRC_STM32
 	select CLKSRC_MMIO
 	select TIMER_OF
 
+config CLKSRC_STM32_LP
+	bool "Low power clocksource for STM32 SoCs"
+	depends on MFD_STM32_LPTIMER || COMPILE_TEST
+	help
+	  This option enables support for STM32 low power clockevent available
+	  on STM32 SoCs
+
 config CLKSRC_MPS2
 	bool "Clocksource for MPS2 SoCs" if COMPILE_TEST
 	depends on GENERIC_SCHED_CLOCK
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 713686faa549..c00fffbd4769 100644
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
index 000000000000..50eecdb88216
--- /dev/null
+++ b/drivers/clocksource/timer-stm32-lp.c
@@ -0,0 +1,213 @@
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
+#define STM32_LP_RATING		400
+#define STM32_TARGET_CLKRATE	(32000 * HZ)
+#define STM32_LP_MAX_PSC	7
+
+struct stm32_lp_private {
+	struct regmap *reg;
+	struct clock_event_device clkevt;
+	unsigned long period;
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
+	clkevt->event_handler(clkevt);
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
+	if (!rate)
+		goto out_clk_disable;
+
+	irq = irq_of_parse_and_map(pdev->dev.parent->of_node, 0);
+	if (!irq)
+		goto out_clk_disable;
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
+	return 0;
+
+out_clk_disable:
+	clk_disable_unprepare(ddata->clk);
+	return -EINVAL;
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
