Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D746012CDD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 09:58:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/7eULShAlzeix6VxWPTgSgwwty0KvZTK8RjdtJhChLE=; b=ug6MmzS4GeDG2F
	E4GXWtK9huKfuwmQIj/5USvCh+P4jgddmKL2JWPz9dtM0FJTw1qrUoX689tHcFMQnVdoClEuF6UoC
	cn44hEavkfM1DBmqC4G2O046bYnYPz+P9e7R5xBrmXTtQRzJgMOnsE6Tf0rOVktzHVy8ubp6/d3P1
	MwfPtNzYsCSHPlTvkvmbskOUN0WBN6IhbNr9t5kxBWhShaNLyi86XOoXcFSHAo974E1MNoJla9OJK
	vq6n2yU2KwByqBhZzNRA6Lu79BMmDVrG7WUC28NkXqdhb0lX0uxBAjn2d/7uvuawgFm2vZ2M3BH2i
	gQcs9bewqUKnG+gN4V0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilqsU-0007Tc-Fc; Mon, 30 Dec 2019 08:58:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilqsJ-0007SR-6L
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 08:58:08 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0887C5C749BE4B0CB7FE;
 Mon, 30 Dec 2019 16:57:57 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Mon, 30 Dec 2019
 16:57:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <myungjoo.ham@samsung.com>, <kyungmin.park@samsung.com>,
 <cw00.choi@samsung.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>
Subject: [PATCH -next] PM / devfreq: imx8m-ddrc: Fix inconsistent IS_ERR and
 PTR_ERR
Date: Mon, 30 Dec 2019 16:47:31 +0800
Message-ID: <20191230084731.15776-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_005807_397708_8DF07607 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix inconsistent IS_ERR and PTR_ERR in imx8m_ddrc_probe().
Detected using Coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/devfreq/imx8m-ddrc.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
index 53df792..bc82d36 100644
--- a/drivers/devfreq/imx8m-ddrc.c
+++ b/drivers/devfreq/imx8m-ddrc.c
@@ -395,15 +395,27 @@ static int imx8m_ddrc_probe(struct platform_device *pdev)
 	}
 
 	priv->dram_core = devm_clk_get(dev, "core");
+	if (IS_ERR(priv->dram_core)) {
+		ret = PTR_ERR(priv->dram_core);
+		dev_err(dev, "failed to fetch core clock: %d\n", ret);
+		return ret;
+	}
 	priv->dram_pll = devm_clk_get(dev, "pll");
+	if (IS_ERR(priv->dram_pll)) {
+		ret = PTR_ERR(priv->dram_pll);
+		dev_err(dev, "failed to fetch pll clock: %d\n", ret);
+		return ret;
+	}
 	priv->dram_alt = devm_clk_get(dev, "alt");
+	if (IS_ERR(priv->dram_alt)) {
+		ret = PTR_ERR(priv->dram_alt);
+		dev_err(dev, "failed to fetch alt clock: %d\n", ret);
+		return ret;
+	}
 	priv->dram_apb = devm_clk_get(dev, "apb");
-	if (IS_ERR(priv->dram_core) ||
-		IS_ERR(priv->dram_pll) ||
-		IS_ERR(priv->dram_alt) ||
-		IS_ERR(priv->dram_apb)) {
-		ret = PTR_ERR(priv->devfreq);
-		dev_err(dev, "failed to fetch clocks: %d\n", ret);
+	if (IS_ERR(priv->dram_apb)) {
+		ret = PTR_ERR(priv->dram_apb);
+		dev_err(dev, "failed to fetch apb clock: %d\n", ret);
 		return ret;
 	}
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
