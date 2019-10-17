Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83483DAA54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ZnjdNifFq393c9V1gltpBWgM8JJ/jwQXEJokKzFUL4=; b=ILSihGpUzJHRtv
	445lH7BLYFwWZBcbfQjzNP9hagjlhCa4QAJvcHiU1yrOpQsqJNNLl2zERcmTL9tmJeTJtQAPh2y8k
	Ed1nTemHEu9BuLIbWv84a46BEIV6hvgxvkttNx94Y4rnjS5vcPzTKKEcrDpQNBRilnQB5iuWVVw8D
	mb6TM4fUwnLEO+LRlrEn8goeF23mh/bFJPhsLr4VVJcWt9LTLgE5GluJvbaqV7fzzwoyUmf7gx7NP
	tXyWQN8nQkiGp/VwafzmQ18jBdfknNhPuRRcF8PBiYAUw6KQFgw9H3Ks054UqkeB5RcPyqZiZjZvz
	OBhEbBn2+DH6z6KgJ+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL3LK-0004NU-Tj; Thu, 17 Oct 2019 10:49:18 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3Kw-0004LF-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:49:10 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A2180ED5B096681864B1;
 Thu, 17 Oct 2019 18:48:44 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Thu, 17 Oct 2019 18:48:43 +0800
From: Daode Huang <huangdaode@hisilicon.com>
To: <jason@lakedaemon.net>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <tglx@linutronix.de>, <maz@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <nm@ti.com>,
 <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH v2] use devm_platform_ioremap_resource() for irqchip drivers
Date: Thu, 17 Oct 2019 18:45:54 +0800
Message-ID: <1571309154-241085-1-git-send-email-huangdaode@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_034908_364788_DDD00C3A 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
changes in v2
    - address the commnents from Marc

---
 drivers/irqchip/irq-mvebu-icu.c   | 4 +---
 drivers/irqchip/irq-mvebu-pic.c   | 4 +---
 drivers/irqchip/irq-stm32-exti.c  | 4 +---
 drivers/irqchip/irq-ti-sci-inta.c | 4 +---
 drivers/irqchip/irq-ts4800.c      | 4 +---
 5 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/irqchip/irq-mvebu-icu.c b/drivers/irqchip/irq-mvebu-icu.c
index 547045d..a54e4cd 100644
--- a/drivers/irqchip/irq-mvebu-icu.c
+++ b/drivers/irqchip/irq-mvebu-icu.c
@@ -347,7 +347,6 @@ builtin_platform_driver(mvebu_icu_subset_driver);
 static int mvebu_icu_probe(struct platform_device *pdev)
 {
 	struct mvebu_icu *icu;
-	struct resource *res;
 	int i;
 
 	icu = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_icu),
@@ -357,8 +356,7 @@ static int mvebu_icu_probe(struct platform_device *pdev)
 
 	icu->dev = &pdev->dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	icu->base = devm_ioremap_resource(&pdev->dev, res);
+	icu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(icu->base)) {
 		dev_err(&pdev->dev, "Failed to map icu base address.\n");
 		return PTR_ERR(icu->base);
diff --git a/drivers/irqchip/irq-mvebu-pic.c b/drivers/irqchip/irq-mvebu-pic.c
index eec6395..d6ade62 100644
--- a/drivers/irqchip/irq-mvebu-pic.c
+++ b/drivers/irqchip/irq-mvebu-pic.c
@@ -124,14 +124,12 @@ static int mvebu_pic_probe(struct platform_device *pdev)
 	struct device_node *node = pdev->dev.of_node;
 	struct mvebu_pic *pic;
 	struct irq_chip *irq_chip;
-	struct resource *res;
 
 	pic = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_pic), GFP_KERNEL);
 	if (!pic)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pic->base = devm_ioremap_resource(&pdev->dev, res);
+	pic->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pic->base))
 		return PTR_ERR(pic->base);
 
diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa..0f9b949 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -811,7 +811,6 @@ static int stm32_exti_probe(struct platform_device *pdev)
 	struct irq_domain *parent_domain, *domain;
 	struct stm32_exti_host_data *host_data;
 	const struct stm32_exti_drv_data *drv_data;
-	struct resource *res;
 
 	host_data = devm_kzalloc(dev, sizeof(*host_data), GFP_KERNEL);
 	if (!host_data)
@@ -849,8 +848,7 @@ static int stm32_exti_probe(struct platform_device *pdev)
 	if (!host_data->chips_data)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	host_data->base = devm_ioremap_resource(dev, res);
+	host_data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(host_data->base)) {
 		dev_err(dev, "Unable to map registers\n");
 		return PTR_ERR(host_data->base);
diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index ef4d625..004cc8f 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -519,7 +519,6 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 	struct device_node *parent_node, *node;
 	struct ti_sci_inta_irq_domain *inta;
 	struct device *dev = &pdev->dev;
-	struct resource *res;
 	int ret;
 
 	node = dev_of_node(dev);
@@ -567,8 +566,7 @@ static int ti_sci_inta_irq_domain_probe(struct platform_device *pdev)
 		return PTR_ERR(inta->global_event);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	inta->base = devm_ioremap_resource(dev, res);
+	inta->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(inta->base))
 		return -ENODEV;
 
diff --git a/drivers/irqchip/irq-ts4800.c b/drivers/irqchip/irq-ts4800.c
index 2325fb3..589a8a1 100644
--- a/drivers/irqchip/irq-ts4800.c
+++ b/drivers/irqchip/irq-ts4800.c
@@ -94,15 +94,13 @@ static int ts4800_ic_probe(struct platform_device *pdev)
 	struct device_node *node = pdev->dev.of_node;
 	struct ts4800_irq_data *data;
 	struct irq_chip *irq_chip;
-	struct resource *res;
 	int parent_irq;
 
 	data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->base = devm_ioremap_resource(&pdev->dev, res);
+	data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->base))
 		return PTR_ERR(data->base);
 
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
