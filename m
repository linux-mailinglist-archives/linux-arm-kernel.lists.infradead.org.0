Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14ACDA635
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ithZGFyB0WBwp3dcnTJ0Eqx9QZIO8FVvAtkMcuiuiSI=; b=Hw1mAGS2PCs7of
	7yX6NxpD+9ONIOtZQMICSsFMPQPY4Pzrtj46OAvXS5o1R3a9VEFs2Ugk9pRcjI/W+Fpm5ccOa70in
	8ncePcU+ZiD0c9XUN2FPbLfR6c9iQpyiYZKuJC8yXa8ymIxUQ0ALYHgRwSWa1nd4BDZnXYw7gQFs0
	cxXAAHok6M3cU1kXkHMXIl+X9g+bwHwsCcMqRe+nJrI6eJaRKwdNB717WYEIRVfzGnE2eplcdXbv+
	Zdj/Rug6bDf3r4nxsdlQLB8pU34oj27DYS2bj8rcd0kBo46IkOH2QEKg8BTOQ4JtIfAj2SOel7MFM
	oMohn4xVTVo6cU8xe9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL01o-0002dx-T8; Thu, 17 Oct 2019 07:16:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL01h-0002c3-40
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:16:51 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 928A792B0572A31F7EC2;
 Thu, 17 Oct 2019 15:16:36 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Thu, 17 Oct 2019 15:16:32 +0800
From: Daode Huang <huangdaode@hisilicon.com>
To: <jason@lakedaemon.net>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <tglx@linutronix.de>, <maz@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <nm@ti.com>,
 <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH] use devm_platform_ioremap_resource() for irqchip drivers
Date: Thu, 17 Oct 2019 15:13:43 +0800
Message-ID: <1571296423-208359-1-git-send-email-huangdaode@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_001649_334029_9E948D73 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daode Huang <huangdaode@hislicon.com>

Use the new helper that wraps the calls to platform_get_resource()
and devm_ioremap_resource() together

Signed-off-by: Daode Huang <huangdaode@hislicon.com>
---
 drivers/irqchip/irq-mvebu-icu.c   | 3 +--
 drivers/irqchip/irq-mvebu-pic.c   | 3 +--
 drivers/irqchip/irq-stm32-exti.c  | 3 +--
 drivers/irqchip/irq-ti-sci-inta.c | 3 +--
 drivers/irqchip/irq-ts4800.c      | 3 +--
 5 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/irqchip/irq-mvebu-icu.c b/drivers/irqchip/irq-mvebu-icu.c
index 547045d..ddf9b0d 100644
--- a/drivers/irqchip/irq-mvebu-icu.c
+++ b/drivers/irqchip/irq-mvebu-icu.c
@@ -357,8 +357,7 @@ static int mvebu_icu_probe(struct platform_device *pdev)
 
 	icu->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	icu->base = devm_ioremap_resource(&pdev->dev, res);
+	icu->base = devm_platform_ioremap_resource(pdev, res);
 	if (IS_ERR(icu->base)) {
 		dev_err(&pdev->dev, "Failed to map icu base address.\n");
 		return PTR_ERR(icu->base);
diff --git a/drivers/irqchip/irq-mvebu-pic.c b/drivers/irqchip/irq-mvebu-pic.c
index eec6395..0c3520d 100644
--- a/drivers/irqchip/irq-mvebu-pic.c
+++ b/drivers/irqchip/irq-mvebu-pic.c
@@ -130,8 +130,7 @@ static int mvebu_pic_probe(struct platform_device *pdev)
 	if (!pic)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pic->base = devm_ioremap_resource(&pdev->dev, res);
+	pic->base = devm_platform_ioremap_resource(pdev, res);
 	if (IS_ERR(pic->base))
 		return PTR_ERR(pic->base);
 
diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..7f5500e 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -849,8 +849,7 @@ static int stm32_exti_probe(struct platform_device *pdev)
 	if (!host_data->chips_data)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host_data->base = devm_ioremap_resource(dev, res);
+	host_data->base = devm_platform_ioremap_resource(pdev, res);
 	if (IS_ERR(host_data->base)) {
 		dev_err(dev, "Unable to map registers\n");
 		return PTR_ERR(host_data->base);
diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index ef4d625..d2ad3cc 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -567,8 +567,7 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 		return PTR_ERR(inta->global_event);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	inta->base = devm_ioremap_resource(dev, res);
+	inta->base = devm_platform_ioremap_resource(pdev, res);
 	if (IS_ERR(inta->base))
 		return -ENODEV;
 
diff --git a/drivers/irqchip/irq-ts4800.c b/drivers/irqchip/irq-ts4800.c
index 2325fb3..f1cefa9 100644
--- a/drivers/irqchip/irq-ts4800.c
+++ b/drivers/irqchip/irq-ts4800.c
@@ -101,8 +101,7 @@ static int ts4800_ic_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->base = devm_ioremap_resource(&pdev->dev, res);
+	data->base = devm_platform_ioremap_resource(pdev, res);
 	if (IS_ERR(data->base))
 		return PTR_ERR(data->base);
 
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
