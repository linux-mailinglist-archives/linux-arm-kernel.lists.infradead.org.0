Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A311D7728
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 13:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xh4zj8wttKVKU7Vrz0alvfruB9zqrzR3igPQkK87mSE=; b=gw3PKG3vue5TYZ
	hOSgQqYFNdAYAH7Zf1niFFQZ0SXnmlPT1Avt34HIynCWdb+KuXZbQrbeUtjudMQTO+129gLJ2dK3v
	gchYWBuJ8fkpuh74aJH4XWKW8aGfcM+qC1gi0XwLbO8rbnHmXv+7Clv/tGtyBpEFS2DlSJUFoPf5D
	Fo20cAI11SwpuDW8/hJKDCDk6zIj9uOILWumdvUXzd8ZVHfAuYlbMlgaeRvDF1UKRAkQY5Kk2gIdz
	Gh6C6cFgCYOXrvehpGQkSljk1twgnbw/kWfnoQQwcuuoZ6wUIV0ltMCu0r0rMlbgipkbT3e6Lx/wX
	c/8eyG1GuXstzeZpNtiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jae0c-0001by-LF; Mon, 18 May 2020 11:32:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jae07-0001NN-Cf; Mon, 18 May 2020 11:32:09 +0000
Received: from ziggy.de (unknown [213.195.113.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0888D20758;
 Mon, 18 May 2020 11:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589801527;
 bh=/Pkmjq+5ukSwok7Q7uIT9FHmblCVRx0IEIFAGu4D80g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UxUdicTOkvSNLnspCrQwKP/zaWN6QVAsPpDWThaRKjTlbE4xFDWrKeWCZaCLPf9ZQ
 t4tG9qHyone9m+no43gSy/hOJd0TTRUZwiPgU8GbOJDOtzI4XvK2r9HDGFtL6p/j65
 03fLDStbvepbgx3WahXjkGsoCP5iM0H/uUjW5YHg=
From: matthias.bgg@kernel.org
To: Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 2/4] clk/soc: mediatek: mt6797: Bind clock driver from
 platform device
Date: Mon, 18 May 2020 13:31:54 +0200
Message-Id: <20200518113156.25009-2-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200518113156.25009-1-matthias.bgg@kernel.org>
References: <20200518113156.25009-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_043207_472721_D59A2619 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>

The mmsys driver is now the top level entry point for the multimedia
system (mmsys), we bind the clock driver by creating a platform device.
We also bind the MediaTek DRM driver which is not yet implement and
therefor will errror out for now.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
---

 drivers/clk/mediatek/clk-mt6797-mm.c | 9 ++-------
 drivers/soc/mediatek/mtk-mmsys.c     | 8 ++++++++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt6797-mm.c b/drivers/clk/mediatek/clk-mt6797-mm.c
index 8f05653b387d..01fdce287247 100644
--- a/drivers/clk/mediatek/clk-mt6797-mm.c
+++ b/drivers/clk/mediatek/clk-mt6797-mm.c
@@ -92,16 +92,12 @@ static const struct mtk_gate mm_clks[] = {
 		 "clk26m", 3),
 };
 
-static const struct of_device_id of_match_clk_mt6797_mm[] = {
-	{ .compatible = "mediatek,mt6797-mmsys", },
-	{}
-};
-
 static int clk_mt6797_mm_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->parent->of_node;
 	struct clk_onecell_data *clk_data;
 	int r;
-	struct device_node *node = pdev->dev.of_node;
 
 	clk_data = mtk_alloc_clk_data(CLK_MM_NR);
 
@@ -121,7 +117,6 @@ static struct platform_driver clk_mt6797_mm_drv = {
 	.probe = clk_mt6797_mm_probe,
 	.driver = {
 		.name = "clk-mt6797-mm",
-		.of_match_table = of_match_clk_mt6797_mm,
 	},
 };
 
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 783c3dd008b2..fee64c8d3020 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -88,6 +88,10 @@ static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
 	.clk_driver = "clk-mt2712-mm",
 };
 
+static const struct mtk_mmsys_driver_data mt6797_mmsys_driver_data = {
+	.clk_driver = "clk-mt6797-mm",
+};
+
 static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
 	.clk_driver = "clk-mt8173-mm",
 };
@@ -339,6 +343,10 @@ static const struct of_device_id of_match_mtk_mmsys[] = {
 		.compatible = "mediatek,mt2712-mmsys",
 		.data = &mt2712_mmsys_driver_data,
 	},
+	{
+		.compatible = "mediatek,mt6797-mmsys",
+		.data = &mt6797_mmsys_driver_data,
+	},
 	{
 		.compatible = "mediatek,mt8173-mmsys",
 		.data = &mt8173_mmsys_driver_data,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
