Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC4113D02
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 05:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=edZX/5OvtFykiBnintt85+mA8Wml3uzPGJiIzOtdI18=; b=lGXBngPxy+KLi2
	+dXJxuxyhozDJHZqO4qn7FK5XpJ79UUSpuxc6ahuawTfTg5OWWJqTBySRVHdaPKyIqOb9OC+vTbDq
	Cp2XEsl0m2iSeQhSMxd5Yg/vJyxkQAw1r5u+brQtjVL1bFctHCh7Asvn85yL8Hw7W65XyQw2EOnzH
	0V4zQKWbBVCgN/4ugRQnuX1FM6rvLbKdm8X3baj6i2rOt5NmBZghSWzVknO46c9XcgU43BLOShq8s
	lVB9aBJsxeJHXQbXpv+e6eT/PDiUuke9SlncYzuK58MN7tCeUe7fIW3DfcuSTQwgP88LetHrnWzvB
	3ZTVhp8TL3IEZ/Qt/m5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN84i-0001Ae-3n; Sun, 05 May 2019 03:44:28 +0000
Received: from smtp89.ord1c.emailsrvr.com ([108.166.43.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN84W-0001AE-CX; Sun, 05 May 2019 03:44:18 +0000
Received: from smtp4.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp4.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 0CA4DA00CB;
 Sat,  4 May 2019 23:44:12 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
Received: from smtp4.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp4.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id F32CDA00E9;
 Sat,  4 May 2019 23:44:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1557027851;
 bh=6SNpQmwhlm6RpW3KuQ6I3uRaXLfsjnFJ4EXjeNjnVW4=;
 h=From:To:Subject:Date:From;
 b=IUHNY9OLIGM2I0msokGd8Surh+6CLy2JMlK6BtclZUZWjOo7M+4m31Ctg3bCl3jfr
 IoyfVXlN9RUcOhgIL7f6k5IXSaIOP2M7xsUQJkoAJP0cs/r2P1FnIKKQwmsx5ZNe2n
 zQQYmSFuFoQkEhEEdr9ULWBU0hLsP4TRI/HiRinE=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp4.relay.ord1c.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id B4794A00CB; 
 Sat,  4 May 2019 23:44:10 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:587 (trex/5.7.12); Sat, 04 May 2019 23:44:11 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com,
 wsa@the-dreams.de, swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: bcm2835: Model Divider in CCF
Date: Sat,  4 May 2019 20:43:39 -0700
Message-Id: <20190505034339.30778-1-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_204416_535347_7346B560 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [108.166.43.89 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
---
 drivers/i2c/busses/i2c-bcm2835.c | 143 +++++++++++++++++++++++--------
 1 file changed, 108 insertions(+), 35 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index d2fbb4bb4a43..1f9f60b80618 100644
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
@@ -74,26 +74,28 @@ static inline u32 bcm2835_i2c_readl(struct bcm2835_i2c_dev *i2c_dev, u32 reg)
 	return readl(i2c_dev->regs + reg);
 }
 
-static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
+#define to_clk_bcm2835_i2c(_hw) container_of(_hw, struct clk_bcm2835_i2c, hw)
+struct clk_bcm2835_i2c {
+	struct clk_hw hw;
+	struct bcm2835_i2c_dev *i2c_dev;
+};
+
+static int clk_bcm2835_i2c_set_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long parent_rate)
 {
+	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
+
 	u32 divider, redl, fedl;
 
-	divider = DIV_ROUND_UP(clk_get_rate(i2c_dev->clk),
-			       i2c_dev->bus_clk_rate);
-	/*
-	 * Per the datasheet, the register is always interpreted as an even
-	 * number, by rounding down. In other words, the LSB is ignored. So,
-	 * if the LSB is set, increment the divider to avoid any issue.
-	 */
+	divider = DIV_ROUND_UP(parent_rate, rate);
 	if (divider & 1)
 		divider++;
+
 	if ((divider < BCM2835_I2C_CDIV_MIN) ||
-	    (divider > BCM2835_I2C_CDIV_MAX)) {
-		dev_err_ratelimited(i2c_dev->dev, "Invalid clock-frequency\n");
+	    (divider > BCM2835_I2C_CDIV_MAX))
 		return -EINVAL;
-	}
 
-	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DIV, divider);
+	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DIV, divider);
 
 	/*
 	 * Number of core clocks to wait after falling edge before
@@ -108,12 +110,72 @@ static int bcm2835_i2c_set_divider(struct bcm2835_i2c_dev *i2c_dev)
 	 */
 	redl = max(divider / 4, 1u);
 
-	bcm2835_i2c_writel(i2c_dev, BCM2835_I2C_DEL,
+	bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DEL,
 			   (fedl << BCM2835_I2C_FEDL_SHIFT) |
 			   (redl << BCM2835_I2C_REDL_SHIFT));
+
 	return 0;
 }
 
+static long clk_bcm2835_i2c_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *parent_rate)
+{
+	u32 divider;
+
+	divider = DIV_ROUND_UP(*parent_rate, rate);
+	if (divider & 1)
+		divider++;
+
+	if ((divider < BCM2835_I2C_CDIV_MIN) ||
+	    (divider > BCM2835_I2C_CDIV_MAX))
+		return -EINVAL;
+
+	return DIV_ROUND_UP(*parent_rate, divider);
+}
+
+static unsigned long clk_bcm2835_i2c_recalc_rate(struct clk_hw *hw,
+						unsigned long parent_rate)
+{
+	struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
+
+	u32 divider;
+
+	divider = bcm2835_i2c_readl(div->i2c_dev, BCM2835_I2C_DIV);
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
+	const char *devname = dev_name(dev);
+
+	init.ops = &clk_bcm2835_i2c_ops;
+	init.name = "bcm2835-i2c";
+	init.parent_names = (const char* []) { mclk_name };
+	init.num_parents = 1;
+	init.flags = 0;
+
+	priv = devm_kzalloc(dev, sizeof(struct clk_bcm2835_i2c), GFP_KERNEL);
+	if (priv == NULL)
+		return (struct clk *) -ENOMEM;
+
+	priv->hw.init = &init;
+	priv->i2c_dev = i2c_dev;
+
+	clk_hw_register_clkdev(&priv->hw, init.name, devname);
+	return devm_clk_register(dev, &priv->hw);
+}
+
 static void bcm2835_fill_txfifo(struct bcm2835_i2c_dev *i2c_dev)
 {
 	u32 val;
@@ -271,7 +333,7 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
 {
 	struct bcm2835_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 	unsigned long time_left;
-	int i, ret;
+	int i;
 
 	for (i = 0; i < (num - 1); i++)
 		if (msgs[i].flags & I2C_M_RD) {
@@ -280,10 +342,6 @@ static int bcm2835_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
 			return -EOPNOTSUPP;
 		}
 
-	ret = bcm2835_i2c_set_divider(i2c_dev);
-	if (ret)
-		return ret;
-
 	i2c_dev->curr_msg = msgs;
 	i2c_dev->num_msgs = num;
 	reinit_completion(&i2c_dev->completion);
@@ -338,6 +396,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct resource *mem, *irq;
 	int ret;
 	struct i2c_adapter *adap;
+	const char *mclk_name;
+	struct clk *bus_clk;
+	u32 bus_clk_rate;
 
 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
 	if (!i2c_dev)
@@ -351,21 +412,6 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
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
@@ -380,6 +426,30 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
+
+	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);
+
+	ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
+				   &bus_clk_rate);
+	if (ret < 0) {
+		dev_warn(&pdev->dev,
+			 "Could not read clock-frequency property\n");
+		bus_clk_rate = 100000;
+	}
+
+	ret = clk_set_rate(bus_clk, bus_clk_rate);
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
@@ -402,6 +472,9 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 static int bcm2835_i2c_remove(struct platform_device *pdev)
 {
 	struct bcm2835_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
+	struct clk *bus_clk = devm_clk_get(i2c_dev->dev, "bcm2835-i2c");
+
+	clk_disable_unprepare(bus_clk);
 
 	free_irq(i2c_dev->irq, i2c_dev);
 	i2c_del_adapter(&i2c_dev->adapter);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
