Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43A84E67E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k3uhPCStx/Hcmer3YFvkqSWkExd15bFYavbPfop+63s=; b=k7gDqzZy7f6REf
	fSdzrQcwCnjRraVsxu3JMK5VBAPys8rF85O27rwhHQCHOLRTwDQGw+RD1OJfXj21iBAfcDAO8tiER
	6UN3GULO81Nr/MnqzpKzF4A9yWL+XCAC9pVwPnsVC8egxB88ASWY/ZRgoO1hV/37tbfFtL8d/Iasd
	3YYGI13qWHJ2RP5t61L0RUT+zgUocILw/TnSYJsv814g7otq5rom+qqoRios40nka4KwYyGslDbY3
	3qtvlC7cIqAdl6A+B34r5nH4wHLAGTB8rKvaluEYMna9H37iYjngHg6wbYN3+uIj8+97Dn13UmOur
	gAZSfm5tChMCmpkSqFAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHBM-0007PT-4w; Fri, 21 Jun 2019 10:54:12 +0000
Received: from smtp121.iad3b.emailsrvr.com ([146.20.161.121])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHAW-0006rW-LY; Fri, 21 Jun 2019 10:53:22 +0000
Received: from smtp24.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp24.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id 6605C4014B;
 Fri, 21 Jun 2019 06:53:18 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561114398;
 bh=drA647kOQx3Qy/hXufrYD6fGVPB9NJiYqLYUgqB2t/Q=;
 h=From:To:Subject:Date:From;
 b=IkmriXzHvteJZa2JQprZRtdaMBggXmTpoZyWcy4vxRT67cduTKkVSnzGx6usJbSBb
 nZFi9gUyTDOe5dy8944y60lJi5xYqFmnV//qoYjCuBphkYPJUiJasi05lyxQ5WDbuY
 H4656XNlxqIGflPxJDmkehUWEs9FW6RWQoqqABB4=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp24.relay.iad3b.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 1E59440127; 
 Fri, 21 Jun 2019 06:53:17 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:25 (trex/5.7.12); Fri, 21 Jun 2019 06:53:18 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, wahrenst@gmx.net, f.fainelli@gmail.com, wsa@the-dreams.de,
 swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] i2c: bcm2835: Ensure clock exists when probing
Date: Fri, 21 Jun 2019 03:52:50 -0700
Message-Id: <20190621105250.19858-3-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621105250.19858-1-nh6z@nh6z.net>
References: <20190621105250.19858-1-nh6z@nh6z.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035320_762337_3C3978A5 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.121 listed in list.dnswl.org]
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

Probe function fails to recognize that upstream clock actually
doesn't yet exist because clock driver has not been initialized.
Actually try to go get the clock and test for its existence
before trying to set up a downstream clock based upon it.

This fixes a bug that causes the i2c driver not to work with
monolithic kernels.

Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")

Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index 27b2f204c693..79d06286b926 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -244,15 +244,18 @@ static const struct clk_ops clk_bcm2835_i2c_ops = {
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
@@ -505,8 +508,8 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	struct resource *mem, *irq;
 	int ret;
 	struct i2c_adapter *adap;
-	const char *mclk_name;
 	struct clk *bus_clk;
+	struct clk *mclk;
 	u32 bus_clk_rate;
 
 	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
@@ -521,9 +524,14 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c_dev->regs))
 		return PTR_ERR(i2c_dev->regs);
 
-	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
+	mclk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(mclk)) {
+		if (PTR_ERR(mclk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Could not get clock\n");
+		return PTR_ERR(mclk);
+	}
 
-	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);
+	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk, i2c_dev);
 
 	if (IS_ERR(bus_clk)) {
 		dev_err(&pdev->dev, "Could not register clock\n");
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
