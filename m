Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D0719B6D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 22:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ri/FBDztfYQQXkQ2a1qmRR8BJawKB5dHl7I7Ma6Oq1c=; b=u/Tw/S5+E/pepN
	alldivsrsjEJzSrByOb4PiiHsv0Lr3qUZs1kDpx8yia5mV354acjegGtgzSMSToC/F9zrls2+5cCN
	UzfJNU3DNXhBXArCQ88WcrF0M9EdWsXD6uMg3bbI61XMniXCjhpwTzEipSuaykQcYL3CAh6QYk2GY
	ea3q0Ocbq1wICNjNbgV9QADlm2kYe7GoPrxJEuG5sqwJZ41BZ5i0tZvjRPRmUp6v1xZeR5p0Eehph
	YXcEd7mvFsc5WGoFQZ7kY4q0FSycB+PpKV1xa2fUU+1T7oaCurJszC40PgGBAWUmuF7fbYvzEdkt6
	U2Yt7+wlCX5oqCoBQyBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjoO-0006WK-0g; Wed, 01 Apr 2020 20:18:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjoD-0006Ut-1L; Wed, 01 Apr 2020 20:17:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 8667D297617
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: mark.rutland@arm.com, ck.hu@mediatek.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com
Subject: [PATCH v2 2/4] clk / soc: mediatek: Bind clock and gpu driver for
 mt2712
Date: Wed,  1 Apr 2020 22:17:34 +0200
Message-Id: <20200401201736.2980433-2-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401201736.2980433-1-enric.balletbo@collabora.com>
References: <20200401201736.2980433-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_131757_209688_B9E4231F 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, matthias.bgg@kernel.org,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 Allison Randal <allison@lohutok.net>, hsinyi@chromium.org,
 matthias.bgg@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the mmsys driver is the top-level entry point for the
multimedia subsystem, we could bind the clock and the gpu driver on
those devices that is expected to work, so the drm driver is
intantiated by the mmsys driver and display, hopefully, working again on
those devices.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
If you have this hardware, please kindly provide your tested tag. Only
build tested.

Changes in v2:
- Remove of_match_table

 drivers/clk/mediatek/clk-mt2712-mm.c | 9 ++-------
 drivers/soc/mediatek/mtk-mmsys.c     | 8 ++++++++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt2712-mm.c b/drivers/clk/mediatek/clk-mt2712-mm.c
index 1c5948be35f3..5519c3d68c1f 100644
--- a/drivers/clk/mediatek/clk-mt2712-mm.c
+++ b/drivers/clk/mediatek/clk-mt2712-mm.c
@@ -128,9 +128,10 @@ static const struct mtk_gate mm_clks[] = {
 
 static int clk_mt2712_mm_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->parent->of_node;
 	struct clk_onecell_data *clk_data;
 	int r;
-	struct device_node *node = pdev->dev.of_node;
 
 	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
 
@@ -146,16 +147,10 @@ static int clk_mt2712_mm_probe(struct platform_device *pdev)
 	return r;
 }
 
-static const struct of_device_id of_match_clk_mt2712_mm[] = {
-	{ .compatible = "mediatek,mt2712-mmsys", },
-	{}
-};
-
 static struct platform_driver clk_mt2712_mm_drv = {
 	.probe = clk_mt2712_mm_probe,
 	.driver = {
 		.name = "clk-mt2712-mm",
-		.of_match_table = of_match_clk_mt2712_mm,
 	},
 };
 
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 05e322c9c301..c7d3b7bcfa32 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -80,6 +80,10 @@ struct mtk_mmsys_driver_data {
 	const char *clk_driver;
 };
 
+static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
+	.clk_driver = "clk-mt2712-mm",
+};
+
 static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
 	.clk_driver = "clk-mt8173-mm",
 };
@@ -319,6 +323,10 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id of_match_mtk_mmsys[] = {
+	{
+		.compatible = "mediatek,mt2712-mmsys",
+		.data = &mt2712_mmsys_driver_data,
+	},
 	{
 		.compatible = "mediatek,mt8173-mmsys",
 		.data = &mt8173_mmsys_driver_data,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
