Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE42CD11A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lz/Wn3bjjCet6TQjktaJaFL7CJlm/PLhzSjRHPHupu0=; b=giEikm4LcMYBvD
	bnEWeHRiju3pDCU1SEwsSOAJjk9sJCuLx5vfB/V6PoqSd7Tkl/W04shwXMF5LL7oGCshJIg2PfmK3
	k//JdySEI5x7c5dGMO0CBlUAFK0QdEXEtJpuESZhgIzPIaH7hQV1JQKC6cLvPcRxaSFxESgTJF+0A
	6vjgPjN12dJlq+p5dkFl+fhEdPenZQ///UpTZFMcxPOzqOkXzgDyQW1MWkPTpbfmb4FGFX8e5x46o
	Q3j6r57Y1e6A85RAaRIw/T6Vxdi+XW6jzqQbtiyZeqiM2oxcundi4Wit7PQkUW9B59RUiXRkSCxz9
	KD4/40dk/wRlSzhCkPAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3vB-0003Sa-F7; Sun, 06 Oct 2019 10:37:49 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3qT-0006Sh-Fo; Sun, 06 Oct 2019 10:32:59 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 65E1162F2BF2303E363C;
 Sun,  6 Oct 2019 18:32:55 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 18:32:45 +0800
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
Subject: [PATCH -next 13/34] rtc: jz4740: use devm_platform_ioremap_resource()
 to simplify code
Date: Sun, 6 Oct 2019 18:29:32 +0800
Message-ID: <20191006102953.57536-14-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191006102953.57536-1-yuehaibing@huawei.com>
References: <20191006102953.57536-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_033257_789653_EFB0234B 
X-CRM114-Status: UNSURE (   8.17  )
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
 drivers/rtc/rtc-jz4740.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-jz4740.c b/drivers/rtc/rtc-jz4740.c
index 3089645..18023e4 100644
--- a/drivers/rtc/rtc-jz4740.c
+++ b/drivers/rtc/rtc-jz4740.c
@@ -307,7 +307,6 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 {
 	int ret;
 	struct jz4740_rtc *rtc;
-	struct resource *mem;
 	const struct platform_device_id *id = platform_get_device_id(pdev);
 	const struct of_device_id *of_id = of_match_device(
 			jz4740_rtc_of_match, &pdev->dev);
@@ -326,8 +325,7 @@ static int jz4740_rtc_probe(struct platform_device *pdev)
 	if (rtc->irq < 0)
 		return -ENOENT;
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	rtc->base = devm_ioremap_resource(&pdev->dev, mem);
+	rtc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rtc->base))
 		return PTR_ERR(rtc->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
