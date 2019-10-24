Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5938E3CFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hy9nm7XWENhlLb5MD2N45XHTCs00c/4TcftGwO8/YFo=; b=GMi6/u7HySSLJS
	WrXnTYdZg0o/OOJ8nxedpXG+QHUu7wtzcxAryd+5LIlVEASzg0NBxQaz3vBs3Iq9QF9HpDXB9umaT
	G4BLGuaKz3BWp2m9WxlIuJqU/yk3cUyGuKBhIjnktwLDiMP5GidUD4i+XU0s8YdYL499ny/ELIl3t
	UQuOMNLG1Dj12/TwptiE7Ub2LfsVQosOXvm1uwx+sVRZ59W8Mq3UppzawSjpmZL/Ru4PmzFGrnxxM
	NqkoJUgRUDd9KLTjxriAvWh70qdWq9QtwwR3cpvGryCqqF6XIOx4hFhL7x7XgvhTUhjFgFuOqEEzv
	EnUXUJWpA2ACCxzpvLhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjVm-0008Mf-2e; Thu, 24 Oct 2019 20:15:10 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjUF-0007Lb-GB
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:13:37 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 41AD6240005;
 Thu, 24 Oct 2019 20:13:30 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] i2c: at91: implement i2c bus recovery
Date: Thu, 24 Oct 2019 22:13:00 +0200
Message-Id: <20191024201302.23376-4-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024201302.23376-1-kamel.bouhara@bootlin.com>
References: <20191024201302.23376-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131335_808797_CE0C7A6F 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement i2c bus recovery when slaves devices might hold SDA low.
In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
until the slave release SDA.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
Changes in v2:
==============
	- Add missing call to i2c_bus_recover() when a i2c transfer
	  timeout.

 drivers/i2c/busses/i2c-at91-master.c | 64 ++++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-at91.h        |  8 ++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index 12d4fa946a82..8116f3cd373b 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -18,11 +18,13 @@
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
 #include <linux/err.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/platform_data/dma-atmel.h>
 #include <linux/pm_runtime.h>
@@ -555,6 +557,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	if (time_left == 0) {
 		dev->transfer_status |= at91_twi_read(dev, AT91_TWI_SR);
 		dev_err(dev->dev, "controller timed out\n");
+		i2c_recover_bus(&dev->adapter);
 		at91_init_twi_bus(dev);
 		ret = -ETIMEDOUT;
 		goto error;
@@ -790,6 +793,63 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
 	return ret;
 }

+static void at91_prepare_twi_recovery(struct i2c_adapter *adap)
+{
+	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
+
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
+}
+
+static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
+{
+	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
+
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
+}
+
+static int at91_init_twi_recovery_info(struct platform_device *pdev,
+				       struct at91_twi_dev *dev)
+{
+	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
+
+	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
+		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
+		return PTR_ERR(dev->pinctrl);
+	}
+
+	dev->pinctrl_pins_default = pinctrl_lookup_state(dev->pinctrl,
+							 PINCTRL_STATE_DEFAULT);
+	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
+						      "gpio");
+	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
+	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
+	rinfo->scl_gpiod = devm_gpiod_get(&pdev->dev, "scl",
+					  GPIOD_OUT_HIGH_OPEN_DRAIN);
+	if (PTR_ERR(rinfo->scl_gpiod) == -EPROBE_DEFER)
+		return -EPROBE_DEFER;
+
+	if (IS_ERR(rinfo->sda_gpiod) ||
+	    IS_ERR(rinfo->scl_gpiod) ||
+	    IS_ERR(dev->pinctrl_pins_default) ||
+	    IS_ERR(dev->pinctrl_pins_gpio)) {
+		dev_info(&pdev->dev, "recovery information incomplete\n");
+		return -EINVAL;
+	}
+
+	dev_info(&pdev->dev, "using scl%s for recovery\n",
+		 rinfo->sda_gpiod ? ",sda" : "");
+
+	rinfo->prepare_recovery = at91_prepare_twi_recovery;
+	rinfo->unprepare_recovery = at91_unprepare_twi_recovery;
+	rinfo->recover_bus = i2c_generic_scl_recovery;
+	dev->adapter.bus_recovery_info = rinfo;
+
+	return 0;
+}
+
 int at91_twi_probe_master(struct platform_device *pdev,
 			  u32 phy_addr, struct at91_twi_dev *dev)
 {
@@ -817,6 +877,10 @@ int at91_twi_probe_master(struct platform_device *pdev,

 	at91_calc_twi_clock(dev);

+	rc = at91_init_twi_recovery_info(pdev, dev);
+	if (rc == -EPROBE_DEFER)
+		return rc;
+
 	dev->adapter.algo = &at91_twi_algorithm;
 	dev->adapter.quirks = &at91_twi_quirks;

diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 0827c28a84db..167be7aa8e67 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -146,6 +146,10 @@ struct at91_twi_dev {
 	u32 fifo_size;
 	struct at91_twi_dma dma;
 	bool slave_detected;
+	struct i2c_bus_recovery_info rinfo;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_pins_default;
+	struct pinctrl_state *pinctrl_pins_gpio;
 #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
 	unsigned smr;
 	struct i2c_client *slave;
@@ -163,6 +167,10 @@ void at91_init_twi_bus_master(struct at91_twi_dev *dev);
 int at91_twi_probe_master(struct platform_device *pdev, u32 phy_addr,
 			  struct at91_twi_dev *dev);

+void at91_twi_prepare_recovery(struct i2c_adapter *adap);
+void at91_twi_unprepare_recovery(struct i2c_adapter *adap);
+void at91_twi_init_recovery_info(struct at91_twi_dev *dev);
+
 #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
 void at91_init_twi_bus_slave(struct at91_twi_dev *dev);
 int at91_twi_probe_slave(struct platform_device *pdev, u32 phy_addr,
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
