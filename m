Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8286DACCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEgton0f2swL4APzgVAG6Tj1zL5oNf8fNVfwhqNxhVw=; b=IZYjQiXiODLnFA
	aE+JUf9Vqh7KIg9Ozzfjon956TbdjwF2ia0KdVlS8Lgwg10OvQwbmbMm7+ULZyb0QuoIJkg/0w52D
	/+p+TmlQFuozuaIYvBlAmOOjxMepLE21GRG2m56dcE6QqWN51cpPOhD7H/vtxmKFnYxKBlmATKLiM
	0k5f5gmPwkBdauoOVuX/v/4YHY+JKPr9aQmYZ0zDlcfowx4PlBSYD6I5K86tIaCpGnMFgjEMyeKdk
	wvMWi458WUslmMiaUsZQSlR70Hq3PiMEZ38A7y+T52uR6DzGkasuEGYE+7u/+kwXP+eDYnO9czgan
	hPanXRwI773L9Gz7spQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5D7-0004Wd-GI; Thu, 17 Oct 2019 12:48:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5CU-0004Gc-6H
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:20 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B8427EC39B2F6B85D09E;
 Thu, 17 Oct 2019 20:48:16 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:06 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 02/30] pinctrl: pxa27x: use
 devm_platform_ioremap_resource() to simplify code
Date: Thu, 17 Oct 2019 20:26:12 +0800
Message-ID: <20191017122640.22976-3-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054818_812905_8A8FE4D9 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
 drivers/pinctrl/pxa/pinctrl-pxa27x.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/pinctrl/pxa/pinctrl-pxa27x.c b/drivers/pinctrl/pxa/pinctrl-pxa27x.c
index 64943e8..48ccfb5 100644
--- a/drivers/pinctrl/pxa/pinctrl-pxa27x.c
+++ b/drivers/pinctrl/pxa/pinctrl-pxa27x.c
@@ -508,25 +508,20 @@ static int pxa27x_pinctrl_probe(struct platform_device *pdev)
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
