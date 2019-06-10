Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1837B3AEA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 07:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=stJXgAVMqXxZzZq87T7fRZjZYhrW8AF75xGDfBK2I3o=; b=DSvsKmmW6cSEPhgkDS/m6FZmR0
	qAtiIfJ5shGC2MWN/0mVBZhOTR1P8ZiAbiTW9cc+iheB7Gz1TaXg1JeKs7cdDAdoP96djeobcvCzX
	6gCSRh6QW3B5ud0YYXF87Ijm4bpBoRq55Y67T7MHLrUAWq9yV78oIC2US6TRDF4R1Uy9LAjzFqJJw
	YU7L2y2rhfHu/zoLYiE8DSQ9mlzYNO77KDI6NsjuGx65UHDUhF1dp6rdlrUprlSA5dCxeAbbXxbq4
	jNmAedndXKDsCjL/nsM5xJ3V5sgcjr5RY3+/3S3JKbN1Gwju2ErOOJ31/e2DqPzJ0c9dbBs7ZZ2aF
	lZZSr0Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haCxu-0004r1-5k; Mon, 10 Jun 2019 05:35:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haCxL-0003T9-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 05:34:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 988682006ED;
 Mon, 10 Jun 2019 07:34:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 283522006F6;
 Mon, 10 Jun 2019 07:34:48 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E8E1440310;
 Mon, 10 Jun 2019 13:34:39 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, l.stach@pengutronix.de, ccaione@baylibre.com,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] clk: imx8mq: Use imx_check_clocks() API directly
Date: Mon, 10 Jun 2019 13:36:34 +0800
Message-Id: <20190610053634.14339-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610053634.14339-1-Anson.Huang@nxp.com>
References: <20190610053634.14339-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_223456_000486_5A277846 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Use imx_check_clocks() API to check clocks directly.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 7da1edb..5fbc2a7 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -278,7 +278,6 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	void __iomem *base;
 	int err;
-	int i;
 
 	clks[IMX8MQ_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
 	clks[IMX8MQ_CLK_32K] = of_clk_get_by_name(np, "ckil");
@@ -548,10 +547,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 					   clks[IMX8MQ_ARM_PLL_OUT],
 					   clks[IMX8MQ_SYS1_PLL_800M]);
 
-	for (i = 0; i < IMX8MQ_CLK_END; i++)
-		if (IS_ERR(clks[i]))
-			pr_err("i.MX8mq clk %u register failed with %ld\n",
-			       i, PTR_ERR(clks[i]));
+	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
