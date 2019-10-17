Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA52FDAD4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6tZeqlW8etHeB/Fj7C9Ma+o+3P8m0naMxVV6GT4TzQ=; b=cqmQ5kJK3/WSlX
	+aMcFequ3wg9GlycrQ994insJo7jBweHab9RHjQZbvUdjF29OlSQbA/yYe5b+U+8/Zqg2k93uX267
	e4OCfW7Liy3dRQkgLeVLsWU8+FfMQktQg9V62I2ofwd3MZt5QoU1VmCau//6izNjtKkcEYBaZoYLY
	D8osgAKYWJtMw4qUowhpvGpl+/40k+7CtLJtMBDwbNx5viRUdZTwz7za8QpwMn17wO14lC5U6GmzX
	TA6uGfBBtd/Q6ojRTuygP6fB80S/ssw/VczceEZ2Lm8zB5B6nkt5Xe5GG1AP1uEUHI2C80dLojQiI
	y2y3VJE8k9ttV0t558Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Es-0007F0-Qt; Thu, 17 Oct 2019 12:50:46 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Cb-0004HN-DR
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:27 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2EBA61F014ACEAE9646D;
 Thu, 17 Oct 2019 20:48:11 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:04 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 01/30] pinctrl: pxa25x: use
 devm_platform_ioremap_resource() to simplify code
Date: Thu, 17 Oct 2019 20:26:11 +0800
Message-ID: <20191017122640.22976-2-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054825_792583_A810D5E1 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
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
Cc: jonathanh@nvidia.com, geert+renesas@glider.be, narmstrong@baylibre.com,
 haojian.zhuang@gmail.com, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, vz@mleia.com, linux-renesas-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, wens@csie.org, thierry.reding@gmail.com,
 daniel@zonque.org, linux-tegra@vger.kernel.org, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/pinctrl/pxa/pinctrl-pxa25x.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/pxa/pinctrl-pxa25x.c b/drivers/pinctrl/pxa/pinctrl-pxa25x.c
index 8d12470..9564069 100644
--- a/drivers/pinctrl/pxa/pinctrl-pxa25x.c
+++ b/drivers/pinctrl/pxa/pinctrl-pxa25x.c
@@ -216,25 +216,20 @@ static int pxa25x_pinctrl_probe(struct platform_device *pdev)
 	void __iomem *base_af[8];
 	void __iomem *base_dir[4];
 	void __iomem *base_sleep[4];
-	struct resource *res;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base_af[0] = devm_ioremap_resource(&pdev->dev, res);
+	base_af[0] = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base_af[0]))
 		return PTR_ERR(base_af[0]);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	base_dir[0] = devm_ioremap_resource(&pdev->dev, res);
+	base_dir[0] = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(base_dir[0]))
 		return PTR_ERR(base_dir[0]);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 2);
-	base_dir[3] = devm_ioremap_resource(&pdev->dev, res);
+	base_dir[3] = devm_platform_ioremap_resource(pdev, 2);
 	if (IS_ERR(base_dir[3]))
 		return PTR_ERR(base_dir[3]);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 3);
-	base_sleep[0] = devm_ioremap_resource(&pdev->dev, res);
+	base_sleep[0] = devm_platform_ioremap_resource(pdev, 3);
 	if (IS_ERR(base_sleep[0]))
 		return PTR_ERR(base_sleep[0]);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
