Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EC41312FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:31:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qt8Hu8uuu8gB6nKffLyZgkzG3QoI10LtJiQgEU9Yzus=; b=Qq1Dqbsds4pvAZ
	G7q2BD+JZJ8MMUxdFBwvpPmsHZjNlFCELYttvRmeua/CyYcPa02DY4mCJAgqLcIiIuHveMYM57aPZ
	Cka7NMX3b7+QQkfl91cRiWwcVIyzdoj1kG/uJXRCHEMG6crSi++uqBLOdFC4kWe7kbCs0FTiLyCMd
	f3jHjlz8y5lxzeEdvOJIKjYpXp4yNDRDHe5WhZD3re6xKos6tFiMjyzRGFtcyby8EjFRH2Me3KfJ3
	dJ8HXvwQgEFLe7cw6SAlvy/PYT4JsAa0VhO4CSnvbQJYIkm+Mvb1d17wGhnN30AP7wzBuRsaU8pVH
	Bx1Zs/LFUsK+hs4u55wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSTx-00032I-Tj; Mon, 06 Jan 2020 13:31:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSS7-0000CT-3V
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:29:54 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 006DRKAD015637; Mon, 6 Jan 2020 14:29:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=78lgoXSK751o+jMGQkgf37teXEBhdB4KBXHSUhCNqag=;
 b=SZE1EP+P+78lUq8hSOZ4x+AEqoFc2Mw0rdOa9HbufXdvwu3nXIpas/0BT9GUXFYIMYE2
 nNMzfTphg+J1lI6Uy3BvgvzXBfVLcWLpRFyCanuJsjkWFhRpeJ3j9t2hR+nX1L+G7bN6
 csZ6LqRzLJ5P3oN3ebh0AsGuIiGsYnG9qadcnimIggASIW+cBYMqRVRFaKStRIEcs6Zt
 Yitvctdo4MIojOiLGJfu1dQGEJWVczF9vvF5bhIVnsKVLqLKiPFTAYw3H7JVsTvau/Ei
 5W3G45tblURYFcjAs1SyU2pHKTVDli/9UNQFtDBSumP4YjHljht0VowlrXKYCNTj18WJ PQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqg3qr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jan 2020 14:29:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D8635100034;
 Mon,  6 Jan 2020 14:29:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CAFB32D378B;
 Mon,  6 Jan 2020 14:29:43 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 6 Jan 2020 14:29:43
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 5/6] i2c: i2c-stm32f7: allow controller to be wakeup-source
Date: Mon, 6 Jan 2020 14:28:33 +0100
Message-ID: <1578317314-17197-6-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_04:2020-01-06,2020-01-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_052951_442574_A376D1DF 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow the i2c-stm32f7 controller to become a wakeup-source
of the system. In such case, when a slave is registered to the
I2C controller, receiving a I2C message targeting that registered
slave address wakes up the suspended system.

In order to be able to wake-up, the I2C controller DT node
must have the property wakeup-source defined and a slave
must be registered.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 98 ++++++++++++++++++++++++++++++++++------
 1 file changed, 83 insertions(+), 15 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 5c3e8ac6ad92..844a22d64aa8 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -29,6 +29,7 @@
 #include <linux/platform_device.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm_runtime.h>
+#include <linux/pm_wakeirq.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -49,6 +50,7 @@
 
 /* STM32F7 I2C control 1 */
 #define STM32F7_I2C_CR1_PECEN			BIT(23)
+#define STM32F7_I2C_CR1_WUPEN			BIT(18)
 #define STM32F7_I2C_CR1_SBC			BIT(16)
 #define STM32F7_I2C_CR1_RXDMAEN			BIT(15)
 #define STM32F7_I2C_CR1_TXDMAEN			BIT(14)
@@ -301,6 +303,7 @@ struct stm32f7_i2c_msg {
  * @dma: dma data
  * @use_dma: boolean to know if dma is used in the current transfer
  * @regmap: holds SYSCFG phandle for Fast Mode Plus bits
+ * @wakeup_src: boolean to know if the device is a wakeup source
  */
 struct stm32f7_i2c_dev {
 	struct i2c_adapter adap;
@@ -323,6 +326,7 @@ struct stm32f7_i2c_dev {
 	struct stm32_i2c_dma *dma;
 	bool use_dma;
 	struct regmap *regmap;
+	bool wakeup_src;
 };
 
 /*
@@ -1691,6 +1695,9 @@ static int stm32f7_i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
 	return ret;
 }
 
+static void stm32f7_i2c_enable_wakeup(struct stm32f7_i2c_dev *i2c_dev,
+				      bool enable);
+
 static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
 {
 	struct stm32f7_i2c_dev *i2c_dev = i2c_get_adapdata(slave->adapter);
@@ -1717,6 +1724,9 @@ static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
 	if (ret < 0)
 		return ret;
 
+	if (!stm32f7_i2c_is_slave_registered(i2c_dev))
+		stm32f7_i2c_enable_wakeup(i2c_dev, true);
+
 	if (id == 0) {
 		/* Configure Own Address 1 */
 		oar1 = readl_relaxed(i2c_dev->base + STM32F7_I2C_OAR1);
@@ -1758,6 +1768,9 @@ static int stm32f7_i2c_reg_slave(struct i2c_client *slave)
 
 	ret = 0;
 pm_free:
+	if (!stm32f7_i2c_is_slave_registered(i2c_dev))
+		stm32f7_i2c_enable_wakeup(i2c_dev, false);
+
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
@@ -1791,8 +1804,10 @@ static int stm32f7_i2c_unreg_slave(struct i2c_client *slave)
 
 	i2c_dev->slave[id] = NULL;
 
-	if (!(stm32f7_i2c_is_slave_registered(i2c_dev)))
+	if (!stm32f7_i2c_is_slave_registered(i2c_dev)) {
 		stm32f7_i2c_disable_irq(i2c_dev, STM32F7_I2C_ALL_IRQ_MASK);
+		stm32f7_i2c_enable_wakeup(i2c_dev, false);
+	}
 
 	pm_runtime_mark_last_busy(i2c_dev->dev);
 	pm_runtime_put_autosuspend(i2c_dev->dev);
@@ -1879,6 +1894,9 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 		return irq_error ? : -ENOENT;
 	}
 
+	i2c_dev->wakeup_src = of_property_read_bool(pdev->dev.of_node,
+						    "wakeup-source");
+
 	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(i2c_dev->clk)) {
 		dev_err(&pdev->dev, "Error: Missing controller clock\n");
@@ -1985,6 +2003,16 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 		goto clk_free;
 	}
 
+	if (i2c_dev->wakeup_src) {
+		device_set_wakeup_capable(i2c_dev->dev, true);
+
+		ret = dev_pm_set_wake_irq(i2c_dev->dev, irq_event);
+		if (ret) {
+			dev_err(i2c_dev->dev, "Failed to set wake up irq\n");
+			goto clr_wakeup_capable;
+		}
+	}
+
 	platform_set_drvdata(pdev, i2c_dev);
 
 	pm_runtime_set_autosuspend_delay(i2c_dev->dev,
@@ -2014,6 +2042,13 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	pm_runtime_set_suspended(i2c_dev->dev);
 	pm_runtime_dont_use_autosuspend(i2c_dev->dev);
 
+	if (i2c_dev->wakeup_src)
+		dev_pm_clear_wake_irq(i2c_dev->dev);
+
+clr_wakeup_capable:
+	if (i2c_dev->wakeup_src)
+		device_set_wakeup_capable(i2c_dev->dev, false);
+
 	if (i2c_dev->dma) {
 		stm32_i2c_dma_free(i2c_dev->dma);
 		i2c_dev->dma = NULL;
@@ -2032,6 +2067,15 @@ static int stm32f7_i2c_remove(struct platform_device *pdev)
 	i2c_del_adapter(&i2c_dev->adap);
 	pm_runtime_get_sync(i2c_dev->dev);
 
+	if (i2c_dev->wakeup_src) {
+		dev_pm_clear_wake_irq(i2c_dev->dev);
+		/*
+		 * enforce that wakeup is disabled and that the device
+		 * is marked as non wakeup capable
+		 */
+		device_init_wakeup(i2c_dev->dev, false);
+	}
+
 	pm_runtime_put_noidle(i2c_dev->dev);
 	pm_runtime_disable(i2c_dev->dev);
 	pm_runtime_set_suspended(i2c_dev->dev);
@@ -2127,20 +2171,41 @@ stm32f7_i2c_regs_restore(struct stm32f7_i2c_dev *i2c_dev)
 	return ret;
 }
 
+static void stm32f7_i2c_enable_wakeup(struct stm32f7_i2c_dev *i2c_dev,
+				      bool enable)
+{
+	void __iomem *base = i2c_dev->base;
+	u32 mask = STM32F7_I2C_CR1_WUPEN;
+
+	if (!i2c_dev->wakeup_src)
+		return;
+
+	if (enable) {
+		device_set_wakeup_enable(i2c_dev->dev, true);
+		stm32f7_i2c_set_bits(base + STM32F7_I2C_CR1, mask);
+	} else {
+		device_set_wakeup_enable(i2c_dev->dev, false);
+		stm32f7_i2c_clr_bits(base + STM32F7_I2C_CR1, mask);
+	}
+}
+
 static int __maybe_unused stm32f7_i2c_suspend(struct device *dev)
 {
 	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
 	int ret;
 
 	i2c_mark_adapter_suspended(&i2c_dev->adap);
-	ret = stm32f7_i2c_regs_backup(i2c_dev);
-	if (ret < 0) {
-		i2c_mark_adapter_resumed(&i2c_dev->adap);
-		return ret;
-	}
 
-	pinctrl_pm_select_sleep_state(dev);
-	pm_runtime_force_suspend(dev);
+	if (!device_may_wakeup(dev) && !dev->power.wakeup_path) {
+		ret = stm32f7_i2c_regs_backup(i2c_dev);
+		if (ret < 0) {
+			i2c_mark_adapter_resumed(&i2c_dev->adap);
+			return ret;
+		}
+
+		pinctrl_pm_select_sleep_state(dev);
+		pm_runtime_force_suspend(dev);
+	}
 
 	return 0;
 }
@@ -2150,14 +2215,17 @@ static int __maybe_unused stm32f7_i2c_resume(struct device *dev)
 	struct stm32f7_i2c_dev *i2c_dev = dev_get_drvdata(dev);
 	int ret;
 
-	ret = pm_runtime_force_resume(dev);
-	if (ret < 0)
-		return ret;
-	pinctrl_pm_select_default_state(dev);
+	if (!device_may_wakeup(dev) && !dev->power.wakeup_path) {
+		ret = pm_runtime_force_resume(dev);
+		if (ret < 0)
+			return ret;
+		pinctrl_pm_select_default_state(dev);
+
+		ret = stm32f7_i2c_regs_restore(i2c_dev);
+		if (ret < 0)
+			return ret;
+	}
 
-	ret = stm32f7_i2c_regs_restore(i2c_dev);
-	if (ret < 0)
-		return ret;
 	i2c_mark_adapter_resumed(&i2c_dev->adap);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
