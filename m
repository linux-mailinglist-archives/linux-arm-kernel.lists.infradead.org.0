Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4736DAD89
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWejERZsyGvzJjVBd0mW1mWhsAFc6OA5OICVdlWcsP4=; b=dCMFgwBwPO1htm
	LkuMNzTtrivsovccmdpIJgjgp5VBPtX8KJfLHA/xWNZcmFXMSTztJ5DG5ncbOtnMdjmkVV+e+ynob
	AMr0V/d6Vtqv//KBS06MILw4pZxxR7yiLhebN3m/wTMnct42e//7Oy++kOd77rmy1gBQKdxVCL4kQ
	63cCwKf1op+uoiKLX63o24p0z5S5rgWQwBw5uiTj4NqA/u9RkvK6MsF1PD+mECMOjmJixv0PDwnmG
	/6i9P7QXROPYnrI8nEgjXtNByYZnZ9+cNvxBe+de6PU0Df1JR8PoB1oHsrdQhbgHB59YtPZjs0ek8
	qh7/KHlFLjFiU0Jxk1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Jx-0004iA-4Y; Thu, 17 Oct 2019 12:56:01 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5DI-0004xb-4N
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:49:09 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2A57B420EF2CCB0F76C4;
 Thu, 17 Oct 2019 20:49:05 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:54 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 21/30] pinctrl: vt8500: use
 devm_platform_ioremap_resource() to simplify code
Date: Thu, 17 Oct 2019 20:26:31 +0800
Message-ID: <20191017122640.22976-22-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054908_347708_21915D4A 
X-CRM114-Status: UNSURE (   8.39  )
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
 drivers/pinctrl/vt8500/pinctrl-wmt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pinctrl/vt8500/pinctrl-wmt.c b/drivers/pinctrl/vt8500/pinctrl-wmt.c
index 4d5cd7d..ea910a1 100644
--- a/drivers/pinctrl/vt8500/pinctrl-wmt.c
+++ b/drivers/pinctrl/vt8500/pinctrl-wmt.c
@@ -553,10 +553,8 @@ int wmt_pinctrl_probe(struct platform_device *pdev,
 		      struct wmt_pinctrl_data *data)
 {
 	int err;
-	struct resource *res;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->base = devm_ioremap_resource(&pdev->dev, res);
+	data->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->base))
 		return PTR_ERR(data->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
