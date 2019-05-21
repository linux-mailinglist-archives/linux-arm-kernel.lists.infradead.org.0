Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215CE24F48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8qpphzB7cyc+I12tnqZeY16WxB6PZb/U41UHyjpMsA=; b=BMwkVO94wb/r+/
	+g0MbZyE1koHRjQtjIUc7QLcsua6gjU/6GCFTawi5m5o+hKNb4bUXPLIR6ZdO8SeRBObFGuz43dMr
	UGTFuFvcv9eiY6qZXeFd2R+edRrFW9gFsXFuXm6LkfVmoriHCbCkkty+LIQecfL0pM3aPL7+cKskh
	XoDPS/Y5rEGQV9rfGmPSyzQ4wcN4zxAFY8J3n2m/OoHkyoPx1dBg72eO7yaQtSlmyxGABu7LfsKeu
	KlgNaxXnN9EyqPoj32bfZIrTQbZTsSM6hYBpYYW7WzFOsXPysXoIAIanfplrtVMp6R39ZeUj9PmXY
	JAcZXi4R45zKf2iJWwaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4FM-0008DU-6u; Tue, 21 May 2019 12:52:00 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Ep-0007iY-Ge
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:51:30 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2C2041C0019;
 Tue, 21 May 2019 12:51:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH v5 4/4] clk: mvebu: armada-37xx-xtal: fill the device entry
 when registering the clock
Date: Tue, 21 May 2019 14:51:13 +0200
Message-Id: <20190521125114.20357-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521125114.20357-1-miquel.raynal@bootlin.com>
References: <20190521125114.20357-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_055127_696359_AD5338BF 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far the clk_hw_register_fixed_factor() call was not providing any
device structure. While doing so is harmless for regular use, the
missing device structure may be a problem for suspend to RAM support.

Since, device links have been added to clocks, links created during
probe will enforce the suspend/resume orders. When the device is
missing during the registration, no link can be established, hence the
order between parent and child clocks are not enforced.

Adding the device structure here will create a link between the XTAL
clock (this one) and the four TBG clocks that are derived from it.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/clk/mvebu/armada-37xx-xtal.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/mvebu/armada-37xx-xtal.c b/drivers/clk/mvebu/armada-37xx-xtal.c
index e9e306d4e9af..0e74bcd83d1a 100644
--- a/drivers/clk/mvebu/armada-37xx-xtal.c
+++ b/drivers/clk/mvebu/armada-37xx-xtal.c
@@ -57,7 +57,8 @@ static int armada_3700_xtal_clock_probe(struct platform_device *pdev)
 		rate = 25000000;
 
 	of_property_read_string_index(np, "clock-output-names", 0, &xtal_name);
-	xtal_hw = clk_hw_register_fixed_rate(NULL, xtal_name, NULL, 0, rate);
+	xtal_hw = clk_hw_register_fixed_rate(&pdev->dev, xtal_name, NULL, 0,
+					     rate);
 	if (IS_ERR(xtal_hw))
 		return PTR_ERR(xtal_hw);
 	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, xtal_hw);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
