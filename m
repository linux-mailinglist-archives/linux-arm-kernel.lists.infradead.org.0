Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41562D6571
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pmbDDP1IWE3p8FD9hc/LYuNwYhrVGlZPj32Ir2f8L7E=; b=kX78Pk6iwFyRvT
	C34MxQu2DCRTBr1JSUL9kObXrXTzS6YRfq27RcCgfWaDk4P4Ac58nft75OjrToOE2myh87z8FPLXw
	tb2kuEL5YQj9UOL/PXYFu9oq6yztNjI5dGT5x6m8BuCLxvt+25sRiB5T0uu72n5XzU21VlEVSNdbu
	zsFuyDrNmfIr1ORgJv/zQTCJ1+nf32AvnAWn+KU9fMTfaVtcv3MXz48d0uocMK2GI88ZxIgogCCtd
	YuL0zCLeQXPOhk0flVNb4iENcM4GbrdVs1b/GjUW5bsMexEUrVF/ph1oj20MtVaF8EX8Eemf6CGg6
	umjCbsY4JbVjtmqWmYRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1Zp-0005TJ-CH; Mon, 14 Oct 2019 14:44:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1ZP-0005H2-Un; Mon, 14 Oct 2019 14:43:37 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 10FAAC7B7A72E24E84C1;
 Mon, 14 Oct 2019 22:43:31 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Mon, 14 Oct 2019
 22:43:21 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <narmstrong@baylibre.com>, <jbrunet@baylibre.com>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>, <khilman@baylibre.com>
Subject: [PATCH -next] clk: meson: axg-audio: use
 devm_platform_ioremap_resource() to simplify code
Date: Mon, 14 Oct 2019 22:43:16 +0800
Message-ID: <20191014144316.18696-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074336_172007_603242B5 
X-CRM114-Status: UNSURE (   8.04  )
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
Cc: linux-amlogic@lists.infradead.org, YueHaibing <yuehaibing@huawei.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/clk/meson/axg-audio.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/clk/meson/axg-audio.c b/drivers/clk/meson/axg-audio.c
index 18b23cd..d7d7cff 100644
--- a/drivers/clk/meson/axg-audio.c
+++ b/drivers/clk/meson/axg-audio.c
@@ -1016,7 +1016,6 @@ static int axg_audio_clkc_probe(struct platform_device *pdev)
 	const struct audioclk_data *data;
 	struct axg_audio_reset_data *rst;
 	struct regmap *map;
-	struct resource *res;
 	void __iomem *regs;
 	struct clk_hw *hw;
 	int ret, i;
@@ -1025,8 +1024,7 @@ static int axg_audio_clkc_probe(struct platform_device *pdev)
 	if (!data)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	regs = devm_ioremap_resource(dev, res);
+	regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
