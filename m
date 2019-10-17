Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B01DAD60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2mSzh1xLyWpAznHaMxcp79OoHcZBll9xdFgIxm6zDE=; b=DW6i0bSldCl3bV
	6QciQFsiyndUeIIOdNhAS0cJK46IQAhBFdA0RQ1qmo+vxvTgvSuB2aSVriK1+ZK6PmQHpFwOc7PhP
	/+1M4B5iMYj0/y/RpUNaF7MLOM+KqEjh+L0d5rlhvn/T4DabkQmsSiLiudsetcm40orgnGVKyddZn
	FYptwl0vjtKnN56U/ybK8yjaiy5H1U03aPeeyISP50W/F9p4GEWuOaJ9AUoDI/6pDv5q7t/e4pA94
	YQS7ruc9mIcvr90Io/XUYr3cxdsTRZj+OoZ5b7xDXorAcqvrRtrXstv5Y/h8g8QtWsJJ0iTyRZmOK
	lvALyGYW/ply660E1DDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5GK-00007Y-Pf; Thu, 17 Oct 2019 12:52:16 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Co-0004WC-5b
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:41 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C0D9B979CB2B58CDF78E;
 Thu, 17 Oct 2019 20:48:34 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 10/30] pinctrl: tegra: use
 devm_platform_ioremap_resource() to simplify code
Date: Thu, 17 Oct 2019 20:26:20 +0800
Message-ID: <20191017122640.22976-11-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191017122640.22976-1-yuehaibing@huawei.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054838_808863_A047ED8B 
X-CRM114-Status: UNSURE (   9.75  )
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
 drivers/pinctrl/tegra/pinctrl-tegra-xusb.c | 4 +---
 drivers/pinctrl/tegra/pinctrl-tegra.c      | 3 +--
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
index f2fa1f7..6f7b376 100644
--- a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
+++ b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
@@ -873,7 +873,6 @@ int tegra_xusb_padctl_legacy_probe(struct platform_device *pdev)
 {
 	struct tegra_xusb_padctl *padctl;
 	const struct of_device_id *match;
-	struct resource *res;
 	struct phy *phy;
 	int err;
 
@@ -894,8 +893,7 @@ int tegra_xusb_padctl_legacy_probe(struct platform_device *pdev)
 	match = of_match_node(tegra_xusb_padctl_of_match, pdev->dev.of_node);
 	padctl->soc = match->data;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	padctl->regs = devm_ioremap_resource(&pdev->dev, res);
+	padctl->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(padctl->regs))
 		return PTR_ERR(padctl->regs);
 
diff --git a/drivers/pinctrl/tegra/pinctrl-tegra.c b/drivers/pinctrl/tegra/pinctrl-tegra.c
index e9a7cbb..692d8b3 100644
--- a/drivers/pinctrl/tegra/pinctrl-tegra.c
+++ b/drivers/pinctrl/tegra/pinctrl-tegra.c
@@ -781,8 +781,7 @@ int tegra_pinctrl_probe(struct platform_device *pdev,
 		return -ENOMEM;
 
 	for (i = 0; i < pmx->nbanks; i++) {
-		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
-		pmx->regs[i] = devm_ioremap_resource(&pdev->dev, res);
+		pmx->regs[i] = devm_platform_ioremap_resource(pdev, i);
 		if (IS_ERR(pmx->regs[i]))
 			return PTR_ERR(pmx->regs[i]);
 	}
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
