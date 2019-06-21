Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764C34DFBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 06:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n7V8d2WJNLOrcUAvQJXszYxMHD9VsL3ZqnvdXuUZwX8=; b=YaI8j3SkrrL56/
	iMxpbrV24VcBZj+68zw7qvD1WE7HzyB80PrW9WZsjKWr+JyIgPHyXx0Rz+dSIav52wxHWCY7+kjsu
	+L407z9nPmQt0AyHYE2KAR4QBqBJlJzdpjAIROLQr2coy1riahCq6x0jykvZBU0rFt7ppELw6/oSL
	aP6M7U4DEsbDdf8YZBrHXBEYHslMROGnmAc1oWkGHEllEdKYz2gllk3iPkPhqz9MTyWpzbR0kOC5L
	h0AavJWTCJoVqkEj77fudxWtCVe7lt4d1zqtc0ch/nDONjs3VHLjUwKKsjcCtleAjEucwfZqVE2YE
	U8kn5F2ct1AiFf1bzcxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heB8Y-0005Rb-2I; Fri, 21 Jun 2019 04:26:54 +0000
Received: from smtp105.ord1c.emailsrvr.com ([108.166.43.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heB8N-0005RD-QZ; Fri, 21 Jun 2019 04:26:45 +0000
Received: from smtp6.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
 by smtp6.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id 9DB05A014F;
 Fri, 21 Jun 2019 00:26:39 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561091199;
 bh=qdhEEK+CGgnwWL1Jgxssg6QnapUvwbHY5tOCD5FG6Gk=;
 h=From:To:Subject:Date:From;
 b=eHztZ41eZPbrdGsVtslKh6VmZfIrXyNpHA3bTxJaVxW+YlUGy1znbrwfgB/IG25kv
 iOP08R+H8fLsDidiZB7KLW7B9ZI9YanRWIZ8LmQKM6JSi6UbhhUCypp2cxWui7llN4
 xD0dWDXJE+h/SrAeboDzC9GOm+kRpAVu3pfBuqzQ=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 66A98A0136; 
 Fri, 21 Jun 2019 00:26:38 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:587 (trex/5.7.12); Fri, 21 Jun 2019 00:26:39 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, stefan.wahren@i2se.com, f.fainelli@gmail.com,
 wsa@the-dreams.de, swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] i2c: bcm2835: Ensure clock exists when probing
Date: Thu, 20 Jun 2019 21:26:26 -0700
Message-Id: <20190621042626.19998-1-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_212643_974185_5B3E3A03 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [108.166.43.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

Probe function fails to recognize that upstram clock actually
doesn't yet exist because clock driver has not been initialized.
Actually try to go get the clock and test for its existence
before trying to set up a downstream clock based upon it.

This fixes a bug that causes the i2c driver not to work with
monolithic kernels.

Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 42 +++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index 5b556274cdb6..67752f7b0371 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -154,15 +154,18 @@ static const struct clk_ops clk_bcm2835_i2c_ops = {
 };
 
 static struct clk *bcm2835_i2c_register_div(struct device *dev,
-					const char *mclk_name,
+					struct clk *mclk,
 					struct bcm2835_i2c_dev *i2c_dev)
 {
 	struct clk_init_data init;
 	struct clk_bcm2835_i2c *priv;
 	char name[32];
+	const char *mclk_name;
 
 	snprintf(name, sizeof(name), "%s_div", dev_name(dev));
 
+	mclk_name = __clk_get_name(mclk);
+
 	init.ops = &clk_bcm2835_i2c_ops;
 	init.name = name;
 	init.parent_names = (const char* []) { mclk_name };
@@ -400,8 +403,8 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct resource *mem, *irq;
 	int ret;
 	struct i2c_adapter *adap;
-	const char *mclk_name;
 	struct clk *bus_clk;
+	struct clk *mclk;
 	u32 bus_clk_rate;
 
 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
@@ -416,23 +419,14 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c_dev->regs))
 		return PTR_ERR(i2c_dev->regs);
 
-	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
-	if (!irq) {
-		dev_err(&pdev->dev, "No IRQ resource\n");
-		return -ENODEV;
-	}
-	i2c_dev->irq = irq->start;
-
-	ret = request_irq(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
-			  dev_name(&pdev->dev), i2c_dev);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not request IRQ\n");
-		return -ENODEV;
+	mclk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(mclk)) {
+		if (PTR_ERR(mclk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Could not get clock\n");
+		return PTR_ERR(mclk);
 	}
 
-	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
-
-	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);
+	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk, i2c_dev);
 
 	if (IS_ERR(bus_clk)) {
 		dev_err(&pdev->dev, "Could not register clock\n");
@@ -459,6 +453,20 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!irq) {
+		dev_err(&pdev->dev, "No IRQ resource\n");
+		return -ENODEV;
+	}
+	i2c_dev->irq = irq->start;
+
+	ret = request_irq(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
+			  dev_name(&pdev->dev), i2c_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not request IRQ\n");
+		return -ENODEV;
+	}
+
 	adap = &i2c_dev->adapter;
 	i2c_set_adapdata(adap, i2c_dev);
 	adap->owner = THIS_MODULE;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
