Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1AE1C6D63
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyDZbXFLpfZ8KomhpU1nPUIX/yVXSMg9MnnxzD5Mz4U=; b=W2Kh3lGEC1MS+h
	YYF9ghizdMOpiEaRcsQ1bJ+Jvftgz7p5BVv3P8S8FAyrRpRE4b+l8rWKZ0cdJrAVIZgHtiyJ23pTe
	SKU63Bg9o/67F3INTn9MJlIpidBns8WAPG88fe3akvcf90Zmvt3TgRUUGlwJ+KRd+AcFlitZs8b1S
	KYP11mW88ViFU2htx8F11fPOs8c1bkeRRbNvTJyHzu+DGU57W8y0stjVkbz07CNj3N9YMVQU2tevy
	CSIEaQtcGSXoOcs+QITjkw8br+qNz+FZ7pWSWh33neaGbLa6ZQeGDjb4XeHs6E14RSLxf/5g5pa7G
	H3AVEtT5lG1I6ge6hlHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGa0-0005xI-F1; Wed, 06 May 2020 09:43:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGZq-00042D-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:42:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=igfHHLT9Lsvlc6wsZWGGqnCegmlNg2TkVdUfdxxutBg=; b=ZfYS1xqjwdUOeLFwcFDf1BeVT2
 IMnI2EfhjgSn7Q5rCt8nMCtfVsdh53SaG6oSqqjaIwVFlzslXAiTnzgNpd0lS++uJzxzVOOmIjCtU
 HM+Aauqc/clXiosFS9Pvb2De9HG019/9CpORucssVIr4SioZ3RyzwpOpG09OxWjzMkBXz/Ybjkh5C
 VC4aDKx9NTKAvUURkkuU2SQO19XcPzHsIP5u7oILTche1O/5kCre3zORBp5LffspXbvX8NfDnfM79
 NK2GpOVMaVbPb6BJNWSRKRtcK/unufooWxkKldbFvjNkm3l2fbKDdcMr7hx0QJdnm09qW0LcBKukU
 ap6nwfew==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:36052 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jWGXY-0007pk-J3; Wed, 06 May 2020 10:40:32 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jWGXX-0000Yx-UL; Wed, 06 May 2020 10:40:31 +0100
In-Reply-To: <20200506094001.GP1551@shell.armlinux.org.uk>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-i2c@vger.kernel.org
Subject: [PATCH 1/2] i2c: pxa: implement generic i2c bus recovery
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jWGXX-0000Yx-UL@rmk-PC.armlinux.org.uk>
Date: Wed, 06 May 2020 10:40:31 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_024254_561210_294BDD43 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/i2c/busses/i2c-pxa.c | 176 +++++++++++++++++++++++++++++++----
 1 file changed, 159 insertions(+), 17 deletions(-)

diff --git a/drivers/i2c/busses/i2c-pxa.c b/drivers/i2c/busses/i2c-pxa.c
index 0e194d6cd1b5..da15ab2a519e 100644
--- a/drivers/i2c/busses/i2c-pxa.c
+++ b/drivers/i2c/busses/i2c-pxa.c
@@ -20,6 +20,7 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/errno.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
@@ -28,6 +29,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/platform_data/i2c-pxa.h>
 #include <linux/slab.h>
@@ -260,6 +262,11 @@ struct pxa_i2c {
 	bool			highmode_enter;
 	u32			fm_mask;
 	u32			hs_mask;
+
+	struct i2c_bus_recovery_info recovery;
+	struct pinctrl		*pinctrl;
+	struct pinctrl_state	*pinctrl_default;
+	struct pinctrl_state	*pinctrl_recovery;
 };
 
 #define _IBMR(i2c)	((i2c)->reg_ibmr)
@@ -559,13 +566,8 @@ static void i2c_pxa_set_slave(struct pxa_i2c *i2c, int errcode)
 #define i2c_pxa_set_slave(i2c, err)	do { } while (0)
 #endif
 
-static void i2c_pxa_reset(struct pxa_i2c *i2c)
+static void i2c_pxa_do_reset(struct pxa_i2c *i2c)
 {
-	pr_debug("Resetting I2C Controller Unit\n");
-
-	/* abort any transfer currently under way */
-	i2c_pxa_abort(i2c);
-
 	/* reset according to 9.8 */
 	writel(ICR_UR, _ICR(i2c));
 	writel(I2C_ISR_INIT, _ISR(i2c));
@@ -584,12 +586,25 @@ static void i2c_pxa_reset(struct pxa_i2c *i2c)
 #endif
 
 	i2c_pxa_set_slave(i2c, 0);
+}
 
+static void i2c_pxa_enable(struct pxa_i2c *i2c)
+{
 	/* enable unit */
 	writel(readl(_ICR(i2c)) | ICR_IUE, _ICR(i2c));
 	udelay(100);
 }
 
+static void i2c_pxa_reset(struct pxa_i2c *i2c)
+{
+	pr_debug("Resetting I2C Controller Unit\n");
+
+	/* abort any transfer currently under way */
+	i2c_pxa_abort(i2c);
+	i2c_pxa_do_reset(i2c);
+	i2c_pxa_enable(i2c);
+}
+
 
 #ifdef CONFIG_I2C_PXA_SLAVE
 /*
@@ -1043,6 +1058,7 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
 	ret = i2c_pxa_wait_bus_not_busy(i2c);
 	if (ret) {
 		dev_err(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
+		i2c_recover_bus(&i2c->adap);
 		goto out;
 	}
 
@@ -1088,6 +1104,7 @@ static int i2c_pxa_do_xfer(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
 
 	if (!timeout && i2c->msg_num) {
 		i2c_pxa_scream_blue_murder(i2c, "timeout with active message");
+		i2c_recover_bus(&i2c->adap);
 		ret = I2C_RETRY;
 	}
 
@@ -1277,6 +1294,129 @@ static int i2c_pxa_probe_pdata(struct platform_device *pdev,
 	return 0;
 }
 
+static void i2c_pxa_prepare_recovery(struct i2c_adapter *adap)
+{
+	struct pxa_i2c *i2c = adap->algo_data;
+	u32 ibmr = readl(_IBMR(i2c));
+
+	/*
+	 * Program the GPIOs to reflect the current I2C bus state while
+	 * we transition to recovery; this avoids glitching the bus.
+	 */
+	gpiod_set_value(i2c->recovery.scl_gpiod, ibmr & IBMR_SCLS);
+	gpiod_set_value(i2c->recovery.sda_gpiod, ibmr & IBMR_SDAS);
+
+	WARN_ON(pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_recovery));
+}
+
+static void i2c_pxa_unprepare_recovery(struct i2c_adapter *adap)
+{
+	struct pxa_i2c *i2c = adap->algo_data;
+	u32 isr;
+
+	/*
+	 * The bus should now be free. Clear up the I2C controller before
+	 * handing control of the bus back to avoid the bus changing state.
+	 */
+	isr = readl(_ISR(i2c));
+	if (isr & (ISR_UB | ISR_IBB)) {
+		dev_dbg(&i2c->adap.dev,
+			"recovery: resetting controller, ISR=0x%08x\n", isr);
+		i2c_pxa_do_reset(i2c);
+	}
+
+	WARN_ON(pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_default));
+
+	dev_dbg(&i2c->adap.dev, "recovery: IBMR 0x%08x ISR 0x%08x\n",
+	        readl(_IBMR(i2c)), readl(_ISR(i2c)));
+
+	i2c_pxa_enable(i2c);
+}
+
+static int i2c_pxa_init_recovery(struct pxa_i2c *i2c)
+{
+	struct i2c_bus_recovery_info *bri = &i2c->recovery;
+	struct device *dev = i2c->adap.dev.parent;
+
+	/*
+	 * When slave mode is enabled, we are not the only master on the bus.
+	 * Bus recovery can only be performed when we are the master, which
+	 * we can't be certain of. Therefore, when slave mode is enabled, do
+	 * not configure bus recovery.
+	 */
+	if (IS_ENABLED(CONFIG_I2C_PXA_SLAVE))
+		return 0;
+
+	i2c->pinctrl = devm_pinctrl_get(dev);
+	if (IS_ERR(i2c->pinctrl))
+		return PTR_ERR(i2c->pinctrl);
+
+	if (!i2c->pinctrl)
+		return 0;
+
+	i2c->pinctrl_default = pinctrl_lookup_state(i2c->pinctrl,
+						    PINCTRL_STATE_DEFAULT);
+	i2c->pinctrl_recovery = pinctrl_lookup_state(i2c->pinctrl, "recovery");
+
+	if (IS_ERR(i2c->pinctrl_default) || IS_ERR(i2c->pinctrl_recovery)) {
+		dev_info(dev, "missing pinmux recovery information: %ld %ld\n",
+			 PTR_ERR(i2c->pinctrl_default),
+			 PTR_ERR(i2c->pinctrl_recovery));
+		return 0;
+	}
+
+	/*
+	 * Claiming GPIOs can influence the pinmux state, and may glitch the
+	 * I2C bus. Do this carefully.
+	 */
+	bri->scl_gpiod = devm_gpiod_get(dev, "scl", GPIOD_OUT_HIGH_OPEN_DRAIN);
+	if (bri->scl_gpiod == ERR_PTR(-EPROBE_DEFER))
+		return -EPROBE_DEFER;
+	if (IS_ERR(bri->scl_gpiod)) {
+		dev_info(dev, "missing scl gpio recovery information: %pe\n",
+			 bri->scl_gpiod);
+		return 0;
+	}
+
+	/*
+	 * We have SCL. Pull SCL low and wait a bit so that SDA glitches
+	 * have no effect.
+	 */
+	gpiod_direction_output(bri->scl_gpiod, 0);
+	udelay(10);
+	bri->sda_gpiod = devm_gpiod_get(dev, "sda", GPIOD_OUT_HIGH_OPEN_DRAIN);
+
+	/* Wait a bit in case of a SDA glitch, and then release SCL. */
+	udelay(10);
+	gpiod_direction_output(bri->scl_gpiod, 1);
+
+	if (bri->sda_gpiod == ERR_PTR(-EPROBE_DEFER))
+		return -EPROBE_DEFER;
+
+	if (IS_ERR(bri->sda_gpiod)) {
+		dev_info(dev, "missing sda gpio recovery information: %pe\n",
+			 bri->sda_gpiod);
+		return 0;
+	}
+
+	bri->prepare_recovery = i2c_pxa_prepare_recovery;
+	bri->unprepare_recovery = i2c_pxa_unprepare_recovery;
+	bri->recover_bus = i2c_generic_scl_recovery;
+
+	i2c->adap.bus_recovery_info = bri;
+
+	/*
+	 * Claiming GPIOs can change the pinmux state, which confuses the
+	 * pinctrl since since pinctrl's idea of the current setting is
+	 * unaffected by the pinmux change caused by claiming the GPIO.
+	 * Work around that by switching pinctrl to the GPIO state here.
+	 * We do it this way to avoid glitching the I2C bus.
+	 */
+	pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_recovery);
+
+	return pinctrl_select_state(i2c->pinctrl, i2c->pinctrl_default);
+}
+
 static int i2c_pxa_probe(struct platform_device *dev)
 {
 	struct i2c_pxa_platform_data *plat = dev_get_platdata(&dev->dev);
@@ -1289,6 +1429,16 @@ static int i2c_pxa_probe(struct platform_device *dev)
 	if (!i2c)
 		return -ENOMEM;
 
+	/* Default adapter num to device id; i2c_pxa_probe_dt can override. */
+	i2c->adap.nr = dev->id;
+	i2c->adap.owner   = THIS_MODULE;
+	i2c->adap.retries = 5;
+	i2c->adap.algo_data = i2c;
+	i2c->adap.dev.parent = &dev->dev;
+#ifdef CONFIG_OF
+	i2c->adap.dev.of_node = dev->dev.of_node;
+#endif
+
 	res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 	i2c->reg_base = devm_ioremap_resource(&dev->dev, res);
 	if (IS_ERR(i2c->reg_base))
@@ -1298,8 +1448,9 @@ static int i2c_pxa_probe(struct platform_device *dev)
 	if (irq < 0)
 		return irq;
 
-	/* Default adapter num to device id; i2c_pxa_probe_dt can override. */
-	i2c->adap.nr = dev->id;
+	ret = i2c_pxa_init_recovery(i2c);
+	if (ret)
+		return ret;
 
 	ret = i2c_pxa_probe_dt(dev, i2c, &i2c_type);
 	if (ret > 0)
@@ -1307,9 +1458,6 @@ static int i2c_pxa_probe(struct platform_device *dev)
 	if (ret < 0)
 		return ret;
 
-	i2c->adap.owner   = THIS_MODULE;
-	i2c->adap.retries = 5;
-
 	spin_lock_init(&i2c->lock);
 	init_waitqueue_head(&i2c->wait);
 
@@ -1375,12 +1523,6 @@ static int i2c_pxa_probe(struct platform_device *dev)
 
 	i2c_pxa_reset(i2c);
 
-	i2c->adap.algo_data = i2c;
-	i2c->adap.dev.parent = &dev->dev;
-#ifdef CONFIG_OF
-	i2c->adap.dev.of_node = dev->dev.of_node;
-#endif
-
 	ret = i2c_add_numbered_adapter(&i2c->adap);
 	if (ret < 0)
 		goto ereqirq;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
