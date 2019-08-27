Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126F9E9D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MhO8U3YQiSTmBs6U2iSYpfkogiA3rMwULB5JIwMJmb8=; b=PbHFkhAaKratkW
	z6xCHtuH0qT5p1vHZNnBlttfow9jRVCcS0KVU0AwIZQHA3sGog/QinhTde4iBW47x2ZpznzgwKelf
	drSg0sCcDuY29C7qfT4fYHQAoPxXm14mKY/1UJY593wab++8NIRSpFdP5s+fqPux9AKAGJ8gC87lb
	DGk9rNEMLv9+ts9Sm4an5d/vaRQfXZ6KasTfbjohYM0v59kweiJIE/Y6p0iEtrIxbrrXIvbS2y1x8
	Z3sxXMVJrz3UfVp6cPU8a9y7uFYhiU7+7RvSf7sx+JeGMgsH5wEAL8dH4UkRMrW3AzByKjFz3oaDG
	DFynnO49v533F8QsOfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2boT-0003wr-CT; Tue, 27 Aug 2019 13:47:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2boH-0003wY-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:46:59 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4E9F1FE82E5AD00B06AC;
 Tue, 27 Aug 2019 21:46:54 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 21:46:45 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <andrew@lunn.ch>, <f.fainelli@gmail.com>, <hkallweit1@gmail.com>,
 <davem@davemloft.net>, <rjui@broadcom.com>, <sbranden@broadcom.com>
Subject: [PATCH net-next] phy: mdio-bcm-iproc: use
 devm_platform_ioremap_resource() to simplify code
Date: Tue, 27 Aug 2019 21:46:16 +0800
Message-ID: <20190827134616.11396-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_064657_927231_D7F8FE0E 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/phy/mdio-bcm-iproc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/phy/mdio-bcm-iproc.c b/drivers/net/phy/mdio-bcm-iproc.c
index 7d0f388..7e9975d 100644
--- a/drivers/net/phy/mdio-bcm-iproc.c
+++ b/drivers/net/phy/mdio-bcm-iproc.c
@@ -123,15 +123,13 @@ static int iproc_mdio_probe(struct platform_device *pdev)
 {
 	struct iproc_mdio_priv *priv;
 	struct mii_bus *bus;
-	struct resource *res;
 	int rc;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->base = devm_ioremap_resource(&pdev->dev, res);
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->base)) {
 		dev_err(&pdev->dev, "failed to ioremap register\n");
 		return PTR_ERR(priv->base);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
