Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E33A0D8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 19:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiak4SL2s/t0Mtct2d9x7RhPnZL18DrOfc+nnh9P+h8=; b=bZFXBYRKAyVNer
	xzmPyV2dAyiOTDh5JkwpmHqtpWEd6MmHkDLHLQoLWfCI3AB6q/BFjeDqCt+Xos8SgHDUxbOHRjzsn
	kpe9bxI4j2GY+/noaLxnNH/AJLrAlxgI9rqbTIgYyWCN0+AQT2YDIWTp3DDEEyR73NGMwgzd9dXgS
	yfOOqKOX81K8q/poXI4ospX0k9fHnx9RtEzDs7ToY4J1mSJPjg1rF8fU1bjH9ZQLWwPDRgL+wyc1J
	G3sToJ71jC7/LnndlCo9XwEqnPYC7VQ623Qv5mGbhnKq/iJuSy5ys4Gn5LhHyxs7pnaBTsqbpXmHh
	5w4Ir+Uyok93oYsmSzqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZevw-0004Tn-Vi; Sat, 08 Jun 2019 17:15:12 +0000
Received: from smtp89.iad3b.emailsrvr.com ([146.20.161.89])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZevi-0004ME-MN; Sat, 08 Jun 2019 17:15:00 +0000
Received: from smtp20.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp20.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id 2CF47A011E;
 Sat,  8 Jun 2019 13:14:53 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1560014093;
 bh=62VJIzi/w9Y0UDf+Jm9ZsQDn7D2dL7w0n8SllVU4zbg=;
 h=From:To:Subject:Date:From;
 b=Rfa3eKhVHffJQI9ZsM4OBNy1AD6kBdeGpeKNTKFuIv97mzxm9rUWPzsRP2op4drEV
 MdihSGkRPd/tMZ2+z9ZFQWou09U73E6/ID/KA2uZHN/zA9vGptpird4HIIyjObZRSO
 0i8TKU4PRawXIPyG2o2vsyY64sik8CmAZvkbFIos=
X-Auth-ID: mcdermj@xenotropic.com
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp20.relay.iad3b.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id B0C38A00F8; 
 Sat,  8 Jun 2019 13:14:51 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:25 (trex/5.7.12); Sat, 08 Jun 2019 13:14:53 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com,
 wsa@the-dreams.de, swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4] i2c: bcm2835: Model Divider in CCF
Date: Sat,  8 Jun 2019 10:14:43 -0700
Message-Id: <20190608171443.14484-1-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190529042912.12956-1-nh6z@nh6z.net>
References: <20190529042912.12956-1-nh6z@nh6z.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_101458_867941_7B482905 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.89 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: team@nwdigitalradio.com, Annaliese McDermond <nh6z@nh6z.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Model the I2C bus clock divider as a part of the Core Clock Framework.
Primarily this removes the clk_get_rate() call from each transfer.
This call causes problems for slave drivers that themselves have
internal clock components that are controlled by an I2C interface.
When the slave's internal clock component is prepared, the prepare
lock is obtained, and it makes calls to the I2C subsystem to
command the hardware to activate the clock.  In order to perform
the I2C transfer, this driver sets the divider, which requires
it to get the parent clock rate, which it does with clk_get_rate().
Unfortunately, this function will try to take the clock prepare
lock, which is already held by the slave's internal clock calls
creating a deadlock.

Modeling the divider in the CCF natively removes this dependency
and the divider value is only set upon changing the bus clock
frequency or changes in the parent clock that cascade down to this
divisor.  This obviates the need to set the divider with every
transfer and avoids the deadlock described above.  It also should
provide better clock debugging and save a few cycles on each
transfer due to not having to recalcuate the divider value.

Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Eric Anholt <eric@anholt.net>
---
Changes in v4:
 - Removed unneccessary devm_clk_unregister() call

Changes in v3:
 - Changed name of clock to include the i2c device name to make
   for easier debugging when using /sys/kernel/debug/clk/clk_summary

Changes in v2:
 - Remove empty whitespace between declarations
 - Preserve comment regarding register rounding
 - Consolodate declarations and initial assignments
 - Return proper error pointer from bcm2835_i2c_register_div()
 - Properly handle return value from bcm2835_i2c_register_div()
   in bcm2835_i2c_probe()
 - Refactor divider calulation code into separate function
 - Use clk_set_rate_exclusive() to ensure the clock is not
   modified by other consumers
 - Deregister clock in bcm2835_i2c_remove() to properly clean up
   after ourselves

 drivers/i2c/busses/i2c-bcm2835.c | 145 ++++++++++++++++++++++++-------
 1 file changed, 114 insertions(+), 31 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index d2fbb4bb4a43..5b556274cdb6 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -4,6 +4,8 @@
  */
 
 #include <linux/clk.h>
+#include <linux/clkdev.h>
+#include <linux/clk-provider.h>
 #include <linux/completion.h>
 #include <linux/err.h>
 #include <linux/i2c.h>
@@ -51,9 +53,7 @@
 struct bcm2835_i2c_dev {
 	struct device *dev;
 	void __iomem *regs;
-	struct clk *clk;
 	int irq;
-	u32 bus_clk_rate;
 	struct i2c_adapter adapter;
 	struct completion completion;
 	struct i2c_msg *curr_msg;
@@ -74,12 +74,17 @@ static inline u32 bcm2835_i2c_readl(struct bcm2835_i2c_dev *i2c_dev, u32 reg)
 	return readl(i2c_dev->regs + reg);
 }
 
-static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
+#define to_clk_bcm2835_i2c(_hw) container_of(_hw, struct clk_bcm2835_i2c, hw)
+struct clk_bcm2835_i2c {
+	struct clk_hw hw;
+	struct bcm2835_i2c_dev *i2c_dev;
+};
+
+static int clk_bcm2835_i2c_calc_divider(unsigned long rate,
+				unsigned long parent_rate)
 {
-	u32 divider, redl, fedl;
+	u32 divider = DIV_ROUND_UP(parent_rate, rate);
 
-	divider = DIV_ROUND_UP(clk_get_rate(i2c_dev->clk),
-			       i2c_dev->bus_clk_rate);
 	/*
 	 * Per the datasheet, the register is always interpreted as an even
 	 * number, by rounding down. In other words, the LSB is ignored. So,
@@ -88,12 +93,23 @@ static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
 	if (divider & 1)
 		divider++;
 	if ((divider < BCM2835_I2C_CDIV_MIN) ||
-	    (divider > BCM2835_I2C_CDIV_MAX)) {
-		dev_err_ratelimited(i2c_dev->dev, "Invalid clock-frequency\n");
+	    (divider > BCM2835_I2C_CDIV_MAX))
 		return -EINVAL;
-	}
 
-	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DIV, divider);
+	return divider;
+}
+
+static int clk_bcm2835_i2c_set_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
+	u32 redl, fedl;
+	u32 divider = clk_bcm2835_i2c_calc_divider(rate, parent_rate);
+
+	if (divider == -EINVAL)
+		return -EINVAL;
+
+	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DIV, divider);
 
 	/*
 	 * Number of core clocks to wait after falling edge before
@@ -108,12 +124,62 @@ static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
 	 */
 	redl = max(divider / 4, 1u);
 
-	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DEL,
+	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DEL,
 			   (fedl << BCM2835_I2C_FEDL_SHIFT) |
 			   (redl << BCM2835_I2C_REDL_SHIFT));
 	return 0;
 }
 
+static long clk_bcm2835_i2c_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *parent_rate)
+{
+	u32 divider = clk_bcm2835_i2c_calc_divider(rate, *parent_rate);
+
+	return DIV_ROUND_UP(*parent_rate, divider);
+}
+
+static unsigned long clk_bcm2835_i2c_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
+	u32 divider = bcm2835_i2c_readl(div->i2c_dev, BCM2835_I2C_DIV);
+
+	return DIV_ROUND_UP(parent_rate, divider);
+}
+
+static const struct clk_ops clk_bcm2835_i2c_ops = {
+	.set_rate = clk_bcm2835_i2c_set_rate,
+	.round_rate = clk_bcm2835_i2c_round_rate,
+	.recalc_rate = clk_bcm2835_i2c_recalc_rate,
+};
+
+static struct clk *bcm2835_i2c_register_div(struct device *dev,
+					const char *mclk_name,
+					struct bcm2835_i2c_dev *i2c_dev)
+{
+	struct clk_init_data init;
+	struct clk_bcm2835_i2c *priv;
+	char name[32];
+
+	snprintf(name, sizeof(name), "%s_div", dev_name(dev));
+
+	init.ops = &clk_bcm2835_i2c_ops;
+	init.name = name;
+	init.parent_names = (const char* []) { mclk_name };
+	init.num_parents = 1;
+	init.flags = 0;
+
+	priv = devm_kzalloc(dev, sizeof(struct clk_bcm2835_i2c), GFP_KERNEL);
+	if (priv == NULL)
+		return ERR_PTR(-ENOMEM);
+
+	priv->hw.init = &init;
+	priv->i2c_dev = i2c_dev;
+
+	clk_hw_register_clkdev(&priv->hw, "div", dev_name(dev));
+	return devm_clk_register(dev, &priv->hw);
+}
+
 static void bcm2835_fill_txfifo(struct bcm2835_i2c_dev *i2c_dev)
 {
 	u32 val;
@@ -271,7 +337,7 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
 {
 	struct bcm2835_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 	unsigned long time_left;
-	int i, ret;
+	int i;
 
 	for (i = 0; i < (num - 1); i++)
 		if (msgs[i].flags & I2C_M_RD) {
@@ -280,10 +346,6 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
 			return -EOPNOTSUPP;
 		}
 
-	ret = bcm2835_i2c_set_divider(i2c_dev);
-	if (ret)
-		return ret;
-
 	i2c_dev->curr_msg = msgs;
 	i2c_dev->num_msgs = num;
 	reinit_completion(&i2c_dev->completion);
@@ -338,6 +400,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct resource *mem, *irq;
 	int ret;
 	struct i2c_adapter *adap;
+	const char *mclk_name;
+	struct clk *bus_clk;
+	u32 bus_clk_rate;
 
 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 	if (!i2c_dev)
@@ -351,21 +416,6 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c_dev->regs))
 		return PTR_ERR(i2c_dev->regs);
 
-	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(i2c_dev->clk)) {
-		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Could not get clock\n");
-		return PTR_ERR(i2c_dev->clk);
-	}
-
-	ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
-				   &i2c_dev->bus_clk_rate);
-	if (ret < 0) {
-		dev_warn(&pdev->dev,
-			 "Could not read clock-frequency property\n");
-		i2c_dev->bus_clk_rate = 100000;
-	}
-
 	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 	if (!irq) {
 		dev_err(&pdev->dev, "No IRQ resource\n");
@@ -380,6 +430,35 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
+
+	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);
+
+	if (IS_ERR(bus_clk)) {
+		dev_err(&pdev->dev, "Could not register clock\n");
+		return PTR_ERR(bus_clk);
+	}
+
+	ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
+				   &bus_clk_rate);
+	if (ret < 0) {
+		dev_warn(&pdev->dev,
+			 "Could not read clock-frequency property\n");
+		bus_clk_rate = 100000;
+	}
+
+	ret = clk_set_rate_exclusive(bus_clk, bus_clk_rate);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Could not set clock frequency\n");
+		return ret;
+	}
+
+	ret = clk_prepare_enable(bus_clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Couldn't prepare clock");
+		return ret;
+	}
+
 	adap = &i2c_dev->adapter;
 	i2c_set_adapdata(adap, i2c_dev);
 	adap->owner = THIS_MODULE;
@@ -402,6 +481,10 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 static int bcm2835_i2c_remove(struct platform_device *pdev)
 {
 	struct bcm2835_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
+	struct clk *bus_clk = devm_clk_get(i2c_dev->dev, "div");
+
+	clk_rate_exclusive_put(bus_clk);
+	clk_disable_unprepare(bus_clk);
 
 	free_irq(i2c_dev->irq, i2c_dev);
 	i2c_del_adapter(&i2c_dev->adapter);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
