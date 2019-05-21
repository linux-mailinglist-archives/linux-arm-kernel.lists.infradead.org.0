Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D5724F47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OStKu/6TWct4b4rOPV5REG+nYIdWyII8YS7DviEGfL0=; b=VOv0J9ZxqTq3k2
	a4y6IdYc1paSWX/020D6G9JZAbLeCOHU3Ka3zUhE/m2H5TpulTN5aNCtjLoGXtXYP7Z5QdTZiEcRJ
	QhJmq5eFo6lORkQPYwipbYSf2WJkgHOdzn8/gXa5xeZ2O/K/O3bg07ZgL54T4zOnewRWK+Axc5enV
	BKBp6itLC/g4QlQP96X3wXnTZrNwNJK/nbg3sjve0XFfX9G5INKR5rOWP1wENY1wZ+krf2E5GHC2x
	z+KA7coHXYp/3a98dOWYWRtaCze/rTKZnctYhQwxMJu7WCJ5OE7qJg3HQK07U8NSK00dw+O5YrESz
	2pHX2lBM0TfUQlkjQB/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4F6-0007sB-14; Tue, 21 May 2019 12:51:44 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Eo-0007hd-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:51:28 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E6D661C001A;
 Tue, 21 May 2019 12:51:19 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH v5 2/4] clk: mvebu: armada-37xx-tbg: fix error message
Date: Tue, 21 May 2019 14:51:11 +0200
Message-Id: <20190521125114.20357-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521125114.20357-1-miquel.raynal@bootlin.com>
References: <20190521125114.20357-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_055127_168701_12BF6C27 
X-CRM114-Status: GOOD (  12.95  )
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

The error message should state that the driver failed to get the
parent clock, not the opposite.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/clk/mvebu/armada-37xx-tbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mvebu/armada-37xx-tbg.c b/drivers/clk/mvebu/armada-37xx-tbg.c
index 585a02e0b330..992f2d1130b3 100644
--- a/drivers/clk/mvebu/armada-37xx-tbg.c
+++ b/drivers/clk/mvebu/armada-37xx-tbg.c
@@ -99,7 +99,7 @@ static int armada_3700_tbg_clock_probe(struct platform_device *pdev)
 
 	parent = clk_get(dev, NULL);
 	if (IS_ERR(parent)) {
-		dev_err(dev, "Could get the clock parent\n");
+		dev_err(dev, "Could not get the clock parent\n");
 		return -EINVAL;
 	}
 	parent_name = __clk_get_name(parent);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
