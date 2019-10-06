Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F8DCD0DD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdPwadmN3dflzSV1yReYUAshuYOVfZ8E3yV4JdnEnAE=; b=b6S56CSpB4NBB1
	efwA07F/K3OTBzIs3lTi9wpDu8hPYCVuXGzvGqVCc7RxlwCUuymuMlQ26ML34xX2XdC6Fzg5JaZyB
	Kk0zOH7KTGsWjvsjzKyAxKigg7Q+8NOtxmFkYnNr+wuDwN8kcL8r2pF/wbVTyKds7Iwk5b6BYv4LS
	lteFCbc17Au9GnM/JULibZh3uzK9r5D1z2sng8fOEb5hubSyXIqx3uYQW9Pgf958oG1JDoQYkasF2
	akC+UqlRdhqMYwowLl3Ad/1bo4kqf3+pk4zT8J4yBdBioxgE7hwrIoKjB0pDUpxrnl5p06tIwclT6
	5Duq0rM81hdMA9FNLfww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3rR-000771-Hj; Sun, 06 Oct 2019 10:33:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3pt-0005xR-1H; Sun, 06 Oct 2019 10:32:24 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 80E9C68B6D1A82F02FA8;
 Sun,  6 Oct 2019 18:32:13 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 18:32:05 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>, <joel@jms.id.au>, 
 <andrew@aj.id.au>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <computersforpeace@gmail.com>,
 <gregory.0xf0@gmail.com>, <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <linus.walleij@linaro.org>,
 <baruch@tkos.co.il>, <paul@crapouillou.net>, <vz@mleia.com>,
 <slemieux.tyco@gmail.com>, <khilman@baylibre.com>,
 <eddie.huang@mediatek.com>, <sean.wang@mediatek.com>,
 <matthias.bgg@gmail.com>, <patrice.chotard@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <linux@prisktech.co.nz>, <michal.simek@xilinx.com>
Subject: [PATCH -next 02/34] rtc: rtc-aspeed: use
 devm_platform_ioremap_resource() to simplify code
Date: Sun, 6 Oct 2019 18:29:21 +0800
Message-ID: <20191006102953.57536-3-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191006102953.57536-1-yuehaibing@huawei.com>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_033221_240048_F5A38254 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/rtc/rtc-aspeed.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-aspeed.c b/drivers/rtc/rtc-aspeed.c
index e351d35..eacdd06 100644
--- a/drivers/rtc/rtc-aspeed.c
+++ b/drivers/rtc/rtc-aspeed.c
@@ -85,14 +85,12 @@ static const struct rtc_class_ops aspeed_rtc_ops = {
 static int aspeed_rtc_probe(struct platform_device *pdev)
 {
 	struct aspeed_rtc *rtc;
-	struct resource *res;
 
 	rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 	if (!rtc)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	rtc->base = devm_ioremap_resource(&pdev->dev, res);
+	rtc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rtc->base))
 		return PTR_ERR(rtc->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
