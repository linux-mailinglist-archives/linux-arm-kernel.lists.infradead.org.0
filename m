Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4A8D6555
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:39:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5zAqCYJOYzX/s/XDAmQi1JgY15qvPeW3Ir9GcCP61rg=; b=I+lpbHfYXES3bS
	2QW2mQcz/upWP2XAZPHSWL3hTXsStn81pY9RhZXtbQW3uRhL5e4zBQwZ7/Adt/SFyG2AJ96F70KUE
	kfPVSH/xUVQ8kaOekF8w1etCN/AUrtMkhb1oUgN41pn24TQ4OWomw2TFIIWkUa784KqdNYO8y9ITu
	Mo8tCyQ518dYhEE8L+PSKZkq1BvSs+vGUix64vpCCrxZBsQJss5UwqrGdVEvTM9kqSitrPSUaZqPW
	4w5z3LW6W+WlXh0T3ppkaoI2Dr2axGEiiRmZo3VlklLIltytSOoUk81ZpzPmVt/RsYWRxk7TShhce
	doLDyoGROQ+tkOPAzasg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1VN-0003Oa-D9; Mon, 14 Oct 2019 14:39:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1VD-0003NG-04; Mon, 14 Oct 2019 14:39:16 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5D7614E7280617369737;
 Mon, 14 Oct 2019 22:39:01 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 14 Oct 2019
 22:38:52 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <eric@anholt.net>,
 <wahrenst@gmx.net>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <mripard@kernel.org>, <heiko@sntech.de>,
 <yuehaibing@huawei.com>, <mbrugger@suse.com>, <broonie@kernel.org>,
 <nsaenzjulienne@suse.de>
Subject: [PATCH -next] clk: bcm2835: use devm_platform_ioremap_resource() to
 simplify code
Date: Mon, 14 Oct 2019 22:36:42 +0800
Message-ID: <20191014143642.24552-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_073915_208194_A08D4EA8 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/clk/bcm/clk-bcm2835-aux.c | 4 +---
 drivers/clk/bcm/clk-bcm2835.c     | 4 +---
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835-aux.c b/drivers/clk/bcm/clk-bcm2835-aux.c
index b6d07ca..290a284 100644
--- a/drivers/clk/bcm/clk-bcm2835-aux.c
+++ b/drivers/clk/bcm/clk-bcm2835-aux.c
@@ -19,7 +19,6 @@ static int bcm2835_aux_clk_probe(struct platform_device *pdev)
 	struct clk_hw_onecell_data *onecell;
 	const char *parent;
 	struct clk *parent_clk;
-	struct resource *res;
 	void __iomem *reg, *gate;
 
 	parent_clk = devm_clk_get(dev, NULL);
@@ -27,8 +26,7 @@ static int bcm2835_aux_clk_probe(struct platform_device *pdev)
 		return PTR_ERR(parent_clk);
 	parent = __clk_get_name(parent_clk);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	reg = devm_ioremap_resource(dev, res);
+	reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(reg))
 		return PTR_ERR(reg);
 
diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 802e488..ded13cc 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -2192,7 +2192,6 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct clk_hw **hws;
 	struct bcm2835_cprman *cprman;
-	struct resource *res;
 	const struct bcm2835_clk_desc *desc;
 	const size_t asize = ARRAY_SIZE(clk_desc_array);
 	const struct cprman_plat_data *pdata;
@@ -2211,8 +2210,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 
 	spin_lock_init(&cprman->regs_lock);
 	cprman->dev = dev;
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	cprman->regs = devm_ioremap_resource(dev, res);
+	cprman->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(cprman->regs))
 		return PTR_ERR(cprman->regs);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
