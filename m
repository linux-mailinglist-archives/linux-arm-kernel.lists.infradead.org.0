Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C70DACDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZKBAPxJckb62UQecV8LlOUQzYQEiF1ShcC25UWDBUA=; b=YLP94e5BvaCwfH
	lHIm0IpAA86/hjRvcPpbhnab2nEMEcNhZjcMe9/cz4lOMz3sUZJg9NAfvNfoP48Gz8ohbYPk4+KTt
	Ba/Naf/H2tokc5XVvPvHtlkoZJzoGrERc+njqSRScyj3ZHiLKQ3U0rX8LmhSDBZBKJ7vuANHNaviN
	QppsoGYQJHnSUPkaluY/9eKRAqzwrs028DfxObsTaa4K3VZ4zkyJqR/w/4DRHzCVyj1dXAgvcHFVt
	BlrZFks+W5JXxvQJwIXHWKFqCYoeOZHrdlHBfzQLE1+ba4GIpHx5sPElIaQuLFkaziNf/BknkLWPj
	eAd8XLZd+/g33OmMUoZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5DS-0004rT-Bm; Thu, 17 Oct 2019 12:49:18 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5CW-0004GH-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DB37F1BC907B28B1DAF3;
 Thu, 17 Oct 2019 20:48:15 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:08 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 03/30] pinctrl: cygnus-mux: use
 devm_platform_ioremap_resource() to simplify code
Date: Thu, 17 Oct 2019 20:26:13 +0800
Message-ID: <20191017122640.22976-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054820_337785_B652EAD4 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
 drivers/pinctrl/bcm/pinctrl-cygnus-mux.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
index dcab220..4344c57 100644
--- a/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
+++ b/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c
@@ -940,7 +940,6 @@ static int cygnus_mux_log_init(struct cygnus_pinctrl *pinctrl)
 static int cygnus_pinmux_probe(struct platform_device *pdev)
 {
 	struct cygnus_pinctrl *pinctrl;
-	struct resource *res;
 	int i, ret;
 	struct pinctrl_pin_desc *pins;
 	unsigned num_pins = ARRAY_SIZE(cygnus_pins);
@@ -953,15 +952,13 @@ static int cygnus_pinmux_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pinctrl);
 	spin_lock_init(&pinctrl->lock);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	pinctrl->base0 = devm_ioremap_resource(&pdev->dev, res);
+	pinctrl->base0 = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pinctrl->base0)) {
 		dev_err(&pdev->dev, "unable to map I/O space\n");
 		return PTR_ERR(pinctrl->base0);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	pinctrl->base1 = devm_ioremap_resource(&pdev->dev, res);
+	pinctrl->base1 = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(pinctrl->base1)) {
 		dev_err(&pdev->dev, "unable to map I/O space\n");
 		return PTR_ERR(pinctrl->base1);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
