Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2632C77A2F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 17:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vp2e9lEFf3/AaI4s91Nu/k+fYy12K0nzJQlZFrwAY4=; b=aNqn7pj67Bo+m7
	WvfqU8JWBDWzyV4RXMy/Px4ThskKDq8MgK9RMM5MI4RhjZP8AMjF1nSBFt6JSX1LQlrxZei5aLH2i
	501GltIscNcvuQPlI/gLvLCjNhYZkQyOjOagghw4kjBnWuws5yqTyPPOJQ6FwlfCWME/wyum+L4Mk
	5eR+WjUjyxPqd83wPLhTnlhv30VWUpTIkYV2S7MEem0b9xjRaebaIkkCBziJLhQAQVjLmwXa1zRXJ
	Y/Rmk6Ja2TOz6Cqg141uqcsEPMM1v0luWbCibvnQXiUs0/loLz3PtmVYW77Cbl069xuKzVXM2XhBB
	VUFxx3+rT6F4DfiytNuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOWm-0000yy-Iy; Sat, 27 Jul 2019 15:22:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOLk-0006S4-U9; Sat, 27 Jul 2019 15:11:10 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B0A695A81B1D25CD7AC0;
 Sat, 27 Jul 2019 23:11:06 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Sat, 27 Jul 2019
 23:11:00 +0800
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
Subject: [PATCH -next 32/34] ASoC: sun8i-codec-analog: use
 devm_platform_ioremap_resource() to simplify code
Date: Sat, 27 Jul 2019 23:07:36 +0800
Message-ID: <20190727150738.54764-33-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190727150738.54764-1-yuehaibing@huawei.com>
References: <20190727150738.54764-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_081109_209681_9767F4DE 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
 sound/soc/sunxi/sun8i-codec-analog.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec-analog.c b/sound/soc/sunxi/sun8i-codec-analog.c
index e92aeed..be872ee 100644
--- a/sound/soc/sunxi/sun8i-codec-analog.c
+++ b/sound/soc/sunxi/sun8i-codec-analog.c
@@ -819,12 +819,10 @@ MODULE_DEVICE_TABLE(of, sun8i_codec_analog_of_match);
 
 static int sun8i_codec_analog_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct regmap *regmap;
 	void __iomem *base;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base)) {
 		dev_err(&pdev->dev, "Failed to map the registers\n");
 		return PTR_ERR(base);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
