Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0FAD9371
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QJcQeSilGn7b+YBAYQINGEXDdPEBybZcwUu6f0o0pDw=; b=QGqiZET9n6W/2Q
	ChI46bNBU49ubFCd4Y18h83gihp2t1gfHJlOPMd4K0EsuunyaoAMsa4hCXt9GqAI8FPHznIAscilp
	wvJSIsCJKGhd5e4DYZuHNHTJxLSEg+UraUHHPmlTHhaQZ6RDl0h8l+YdGzMWLfcbqDUjdvbAu8M5/
	/DSuO9hWcojkpq8AwqZNxPub7g/E1sBxGFJ4yZGFvD6+ZvAttAKRdvD2ogEIIW7EMtIdf0DpziWDt
	mFOJjAJt3YU3wtH9fwexLfxtrNMb0u9A9+H7VLtsOcl9eyC8vVgRh0RlqNH0leRl/tXkephS5kLm7
	/KC8J1oWi1Hoxi5Zdp9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKk3Z-0007yA-HJ; Wed, 16 Oct 2019 14:13:41 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKk3R-0007xM-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:13:35 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 667E687B94C88BDDAF7F;
 Wed, 16 Oct 2019 22:13:32 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 16 Oct 2019
 22:13:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jason@lakedaemon.net>, <andrew@lunn.ch>, <gregory.clement@bootlin.com>,
 <sebastian.hesselbarth@gmail.com>, <linus.walleij@linaro.org>
Subject: [PATCH -next] pinctrl: mvebu: use devm_platform_ioremap_resource() to
 simplify code
Date: Wed, 16 Oct 2019 22:12:17 +0800
Message-ID: <20191016141217.21520-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_071333_995930_02D8BCEC 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-gpio@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/pinctrl/mvebu/pinctrl-mvebu.c | 4 +---
 drivers/pinctrl/mvebu/pinctrl-orion.c | 7 ++-----
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-mvebu.c b/drivers/pinctrl/mvebu/pinctrl-mvebu.c
index 00cfaf2..a1f9385 100644
--- a/drivers/pinctrl/mvebu/pinctrl-mvebu.c
+++ b/drivers/pinctrl/mvebu/pinctrl-mvebu.c
@@ -759,12 +759,10 @@ int mvebu_pinctrl_simple_mmio_probe(struct platform_device *pdev)
 {
 	struct mvebu_pinctrl_soc_info *soc = dev_get_platdata(&pdev->dev);
 	struct mvebu_mpp_ctrl_data *mpp_data;
-	struct resource *res;
 	void __iomem *base;
 	int i;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/pinctrl/mvebu/pinctrl-orion.c b/drivers/pinctrl/mvebu/pinctrl-orion.c
index 29bb9d8..cc97d27 100644
--- a/drivers/pinctrl/mvebu/pinctrl-orion.c
+++ b/drivers/pinctrl/mvebu/pinctrl-orion.c
@@ -220,17 +220,14 @@ static int orion_pinctrl_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match =
 		of_match_device(orion_pinctrl_of_match, &pdev->dev);
-	struct resource *res;
 
 	pdev->dev.platform_data = (void*)match->data;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mpp_base = devm_ioremap_resource(&pdev->dev, res);
+	mpp_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mpp_base))
 		return PTR_ERR(mpp_base);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	high_mpp_base = devm_ioremap_resource(&pdev->dev, res);
+	high_mpp_base = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(high_mpp_base))
 		return PTR_ERR(high_mpp_base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
