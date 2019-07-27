Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693A0779EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 17:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mT0QNBRW4Fkg5kEpY+13JKUQzlqmQye0xhlWQy2Pjv4=; b=XDulGADtAPcXWK
	LeUB98kBRrOeQJsvJfP9SPmDoSewsV1KdLXTBeYRnCjiE1cjYHsEaTSr3CkjITL4/IGXqJ/NJlwHC
	nof4Hkbl31l/PA0pQGWAGKm8/pRa5/0gdiBFsMdbecoQaq+OrKXXKayZM7QpzuyHEN+rHbOMvHtKe
	4ssT6AkP16nkZfbgNuxiDFeOeMPUhzrrMHtyAbE7CfXhw4sP5SldLGUxL+HORT/d0xAXO7KBn+v0a
	vpt6rcGEdU47V7/0DbsYkn92rSbdbfklN2xcXPtXKeljiphHHRhLrqLJ3Um9ABsQOYlAqrrLaPhyd
	lsHG+qxCBF3mLhXxvF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOPG-0000XI-VH; Sat, 27 Jul 2019 15:14:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOKl-0004hc-D3; Sat, 27 Jul 2019 15:10:08 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5847837D049430CC0E55;
 Sat, 27 Jul 2019 23:10:02 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 27 Jul 2019
 23:09:55 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <paul@crapouillou.net>,
 <timur@kernel.org>, <nicoleotsuka@gmail.com>, <Xiubo.Lee@gmail.com>,
 <festevam@gmail.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <linux-imx@nxp.com>, <matthias.bgg@gmail.com>,
 <jbrunet@baylibre.com>, <khilman@baylibre.com>, <daniel@zonque.org>,
 <haojian.zhuang@gmail.com>, <robert.jarzmik@free.fr>, <baohua@kernel.org>,
 <olivier.moysan@st.com>, <arnaud.pouliquen@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <yamada.masahiro@socionext.com>, <michal.simek@xilinx.com>,
 <jcmvbkbc@gmail.com>
Subject: [PATCH -next 11/34] ASoC: mxs-saif: use
 devm_platform_ioremap_resource() to simplify code
Date: Sat, 27 Jul 2019 23:07:15 +0800
Message-ID: <20190727150738.54764-12-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190727150738.54764-1-yuehaibing@huawei.com>
References: <20190727150738.54764-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_081007_629783_55303D88 
X-CRM114-Status: UNSURE (   7.89  )
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
Cc: linux-xtensa@linux-xtensa.org, alsa-devel@alsa-project.org,
 gregkh@linuxfoundation.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/mxs/mxs-saif.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/sound/soc/mxs/mxs-saif.c b/sound/soc/mxs/mxs-saif.c
index 269b6d6..a2c7942 100644
--- a/sound/soc/mxs/mxs-saif.c
+++ b/sound/soc/mxs/mxs-saif.c
@@ -732,7 +732,6 @@ static int mxs_saif_mclk_init(struct platform_device *pdev)
 static int mxs_saif_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct resource *iores;
 	struct mxs_saif *saif;
 	int irq, ret = 0;
 	struct device_node *master;
@@ -786,9 +785,7 @@ static int mxs_saif_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-
-	saif->base = devm_ioremap_resource(&pdev->dev, iores);
+	saif->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(saif->base))
 		return PTR_ERR(saif->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
