Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF857DBAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=14h0X5dfNaEqZsiaNt0YxWrHx1aTcOG+PQGhkq8vl5c=; b=fWGMjtAMkglZrl
	zMKu46MhthOVkX3TapCPWZaO8LYiVH5CGOSsLwCMEHY2cqGveUzsxqhDavpZQPrXkhLT/XhLSnD49
	cqn+RGMzyinWqG7fm1offimb6F+j4KtXUOQ5sbhkwiZ3gT/jzBhp7P0rD3Yo4KdwyGnPBPKmIJ9+5
	a0z2kzQUB0D/JsU6aY5o36yjTBxlu8mMgyv6LuruVQBEi42y8eSPPjdyEk6odcD/xdf9l9UXisJae
	b6WWbfXSsUuqUoJxesSV8D55CNZL+2VkVZ4A5KUeJvRdHjmhv5ZBp2Yyks0Cs4D//wTudEduZqLht
	bisv9ycWb7fCrlMGS71Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htANu-00020d-Dk; Thu, 01 Aug 2019 12:40:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htANk-00020E-4K
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:40:33 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A512C8B9F84EAAE75344;
 Thu,  1 Aug 2019 20:40:30 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 1 Aug 2019
 20:40:22 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <andrew@lunn.ch>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH net-next] bcm63xx_enet: use devm_platform_ioremap_resource()
 to simplify code
Date: Thu, 1 Aug 2019 20:39:08 +0800
Message-ID: <20190801123908.62396-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_054032_771236_17D8435C 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/broadcom/bcm63xx_enet.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcm63xx_enet.c b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
index 291e4af..620cd3f 100644
--- a/drivers/net/ethernet/broadcom/bcm63xx_enet.c
+++ b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
@@ -1693,7 +1693,7 @@ static int bcm_enet_probe(struct platform_device *pdev)
 	struct bcm_enet_priv *priv;
 	struct net_device *dev;
 	struct bcm63xx_enet_platform_data *pd;
-	struct resource *res_mem, *res_irq, *res_irq_rx, *res_irq_tx;
+	struct resource *res_irq, *res_irq_rx, *res_irq_tx;
 	struct mii_bus *bus;
 	int i, ret;
 
@@ -1719,8 +1719,7 @@ static int bcm_enet_probe(struct platform_device *pdev)
 	if (ret)
 		goto out;
 
-	res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->base = devm_ioremap_resource(&pdev->dev, res_mem);
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base)) {
 		ret = PTR_ERR(priv->base);
 		goto out;
@@ -2762,15 +2761,13 @@ struct platform_driver bcm63xx_enetsw_driver = {
 /* reserve & remap memory space shared between all macs */
 static int bcm_enet_shared_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	void __iomem *p[3];
 	unsigned int i;
 
 	memset(bcm_enet_shared_base, 0, sizeof(bcm_enet_shared_base));
 
 	for (i = 0; i < 3; i++) {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		p[i] = devm_ioremap_resource(&pdev->dev, res);
+		p[i] = devm_platform_ioremap_resource(pdev, i);
 		if (IS_ERR(p[i]))
 			return PTR_ERR(p[i]);
 	}
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
