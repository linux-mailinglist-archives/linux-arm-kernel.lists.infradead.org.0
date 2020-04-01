Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F38319B6DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 22:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9fzM+6JLLAeXpkYWuNwHuLNre5uhL+9gpMkkSkpeQQ=; b=aVmSt1U3NRsNg0
	VGG8X/BsZwo9/XJFETERWnxwt+pB3DiDz6D+gJumiO7XwLdTwXya4ShoS7Mi2bizqBX658q6fu4xg
	6hXLWcrZ7zqDYpXwBsJqshbl8XZ7CFA2sZdSt5+ZDm1abyMyN5aRsVftL6aMRL6NjSUReQeEWN8Dx
	G096x83SPgI64nQmihbAw0wFipFnL8J7oz3HIKyEWO61Y54BG+y1S4I5k84dNB5WVHDI9zKvwcqqe
	N623ljjTWhmTb7O+fwc47u08dauKqsJ9ZACMqbwqBScntHoyWrsSw7hCt15dml/zp3ZItUMLa3rIx
	Els3+XldRh4wUl2uUOAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJjof-0006sQ-JZ; Wed, 01 Apr 2020 20:18:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJjoD-0006VJ-Hk; Wed, 01 Apr 2020 20:17:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id CB035297613
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: mark.rutland@arm.com, ck.hu@mediatek.com, sboyd@kernel.org,
 ulrich.hecht+renesas@gmail.com
Subject: [PATCH v2 3/4] clk / soc: mediatek: Bind clock and gpu driver for
 mt2701
Date: Wed,  1 Apr 2020 22:17:35 +0200
Message-Id: <20200401201736.2980433-3-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401201736.2980433-1-enric.balletbo@collabora.com>
References: <20200401201736.2980433-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_131757_713347_FFE5DB9B 
X-CRM114-Status: GOOD (  13.61  )
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
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
intantiated by the mmsys driver and display, hopefully, working again.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
If you have this hardware, please kindly provide your tested tag. Only
build tested.

Changes in v2:
- Remove of_match_table

 drivers/clk/mediatek/clk-mt2701-mm.c | 9 ++-------
 drivers/soc/mediatek/mtk-mmsys.c     | 8 ++++++++
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt2701-mm.c b/drivers/clk/mediatek/clk-mt2701-mm.c
index 054b597d4a73..cb18e1849492 100644
--- a/drivers/clk/mediatek/clk-mt2701-mm.c
+++ b/drivers/clk/mediatek/clk-mt2701-mm.c
@@ -79,16 +79,12 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_DISP1(CLK_MM_TVE_FMM, "mm_tve_fmm", "mm_sel", 14),
 };
 
-static const struct of_device_id of_match_clk_mt2701_mm[] = {
-	{ .compatible = "mediatek,mt2701-mmsys", },
-	{}
-};
-
 static int clk_mt2701_mm_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->parent->of_node;
 	struct clk_onecell_data *clk_data;
 	int r;
-	struct device_node *node = pdev->dev.of_node;
 
 	clk_data = mtk_alloc_clk_data(CLK_MM_NR);
 
@@ -108,7 +104,6 @@ static struct platform_driver clk_mt2701_mm_drv = {
 	.probe = clk_mt2701_mm_probe,
 	.driver = {
 		.name = "clk-mt2701-mm",
-		.of_match_table = of_match_clk_mt2701_mm,
 	},
 };
 
diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index c7d3b7bcfa32..cacafe23c823 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -80,6 +80,10 @@ struct mtk_mmsys_driver_data {
 	const char *clk_driver;
 };
 
+static const struct mtk_mmsys_driver_data mt2701_mmsys_driver_data = {
+	.clk_driver = "clk-mt2701-mm",
+};
+
 static const struct mtk_mmsys_driver_data mt2712_mmsys_driver_data = {
 	.clk_driver = "clk-mt2712-mm",
 };
@@ -323,6 +327,10 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id of_match_mtk_mmsys[] = {
+	{
+		.compatible = "mediatek,mt2701-mmsys",
+		.data = &mt2701_mmsys_driver_data,
+	},
 	{
 		.compatible = "mediatek,mt2712-mmsys",
 		.data = &mt2712_mmsys_driver_data,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
