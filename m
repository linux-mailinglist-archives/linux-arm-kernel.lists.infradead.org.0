Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62135A98F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4J9idOGGTAwZ1x8eOhz5vsObze0mRmdsgN4x99Qdp18=; b=sBB
	remHkz8Qbfgq5CYIB0W6TBUUHi8dFvS+92FTsPJ5iLZW/hKjPJr9tF6l2l2uwoEuzPLz8dx9BuxPN
	hmdSa6efErUIkDtjZ0xZim/boYUg0gG1Ks+oxXd7SA90PinB/rEYDm/AGEK0IEJkKkV2AQbMXrseh
	12ualuGJ3eemYJ9T3pNZn8o/lvvsGpjRazhTrOHfi8KxVYBBHO69nNjWXarpiCBpYzyz65IMASZ+s
	V2ObIubU3ei3CT4nNXtek4UfbNjaafBgDtcAykI2ZF5wVxB4gydtsVE0/AwP+2SuJcCv+Yj3hHI+X
	i1W+g7WNZqoo3XISbyz/7XuPULUDylQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5iih-0006rd-Cf; Thu, 05 Sep 2019 03:46:03 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5iiZ-0006rM-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:45:57 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x853jcTH003166;
 Thu, 5 Sep 2019 12:45:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x853jcTH003166
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567655140;
 bh=7gaxoylNrSTAPifaXUMFJFcVml5WuDbSfw0bNdNYgYM=;
 h=From:To:Cc:Subject:Date:From;
 b=H2oqbZYUpS6xDMhaK5PhpPyCGgywVffCJmhNpiMupiVr7p6Xmid33GiuiI3bVqEHz
 QlUAC6hZHOSnIoOY9NFTEUP4r5IqpM7bwuCFB4DcfY4fumrIUAZXg+9t6hfu209rqe
 hNUp76bDcw31kvFpjY7Zc+mFrIoIW5rOniPZ4AZdLDGmB8kZurgrhtQS6LX+DRLdv6
 /BrKTX/5mc1KUp832Cx2zheldE8ijvghFp5i/bwNjDlIai/8c9/1/RuQQH058Y6v7f
 far3P6PeQsx3xlNLIY4ZlulKjoDVYE+6LxU2d6w+gGntBWRP5xxqsUY6Nygd8MH+gl
 jTdm/yKKxuCgg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
Subject: [PATCH] i2c: uniphier(-f): use devm_platform_ioremap_resource()
Date: Thu,  5 Sep 2019 12:45:32 +0900
Message-Id: <20190905034533.9842-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_204555_828877_01F4C431 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the chain of platform_get_resource() and devm_ioremap_resource()
with devm_platform_ioremap_resource().

This allows to remove the local variable for (struct resource *), and
have one function call less.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/i2c/busses/i2c-uniphier-f.c | 4 +---
 drivers/i2c/busses/i2c-uniphier.c   | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-uniphier-f.c b/drivers/i2c/busses/i2c-uniphier-f.c
index 7acca2599f04..fc5354845ffa 100644
--- a/drivers/i2c/busses/i2c-uniphier-f.c
+++ b/drivers/i2c/busses/i2c-uniphier-f.c
@@ -538,7 +538,6 @@ static int uniphier_fi2c_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct uniphier_fi2c_priv *priv;
-	struct resource *regs;
 	u32 bus_speed;
 	unsigned long clk_rate;
 	int irq, ret;
@@ -547,8 +546,7 @@ static int uniphier_fi2c_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->membase = devm_ioremap_resource(dev, regs);
+	priv->membase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->membase))
 		return PTR_ERR(priv->membase);
 
diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
index 0173840c32af..a6d7a3709051 100644
--- a/drivers/i2c/busses/i2c-uniphier.c
+++ b/drivers/i2c/busses/i2c-uniphier.c
@@ -326,7 +326,6 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct uniphier_i2c_priv *priv;
-	struct resource *regs;
 	u32 bus_speed;
 	unsigned long clk_rate;
 	int irq, ret;
@@ -335,8 +334,7 @@ static int uniphier_i2c_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->membase = devm_ioremap_resource(dev, regs);
+	priv->membase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->membase))
 		return PTR_ERR(priv->membase);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
