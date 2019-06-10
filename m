Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7DA3ACDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UfzXrAXPcXO1M87/4eVf2ZZP+H+Q9mQAgSGEEGU7ris=; b=GqHaS2rhGJitks
	S8QRLhJ4VqtwyeKujrIeSfF/QWXJrrHF0CsxHJ8rgQ6k10+J1GKHAwj1NUHZNshL1c1G6BuyFNDsi
	Eu4fj9lGdEmExqQ0SwpAG3Z8hSO3cjgw/yIn06nRhBPOyXPRfduuVEGsS2RgipVapXogYS6Dni7cT
	ryU0Lt2aMWN99UoahUwxPleIwOwN75pfT/Q+wVHWgcdbcrPZ51so1xFsORxGOTtOB03EHjfq0MGQ8
	6FyW8vjb+lphyO4ALEmWL+GCt1O1nTKwJahWufyUe17JiPqJbz8S0DmbTApfagFExgNIdX6k2IQLF
	FLbXb+U/W0wPIpmTe4dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9rL-0006s4-0t; Mon, 10 Jun 2019 02:16:31 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9rD-0006rb-5s; Mon, 10 Jun 2019 02:16:24 +0000
X-UUID: 75c0c7475d6344b7978e1dcabbd1edf7-20190609
X-UUID: 75c0c7475d6344b7978e1dcabbd1edf7-20190609
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 987368370; Sun, 09 Jun 2019 18:16:19 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 19:16:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 10:16:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 10 Jun 2019 10:16:15 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>
Subject: [PATCH v2] clk: mediatek: mt8183: Register 13MHz clock earlier for
 clocksource
Date: Mon, 10 Jun 2019 10:16:09 +0800
Message-ID: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: CAC1BC70DE426AEAA8E799500347601E8B809F99947FB5D622F96AFBA05C332B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_191623_227411_93F5C827 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, James Liao <jamesjj.liao@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 13MHz clock should be registered before clocksource driver is
initialized. Use CLK_OF_DECLARE_DRIVER() to guarantee.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/clk/mediatek/clk-mt8183.c | 46 +++++++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
index 9d86510..bc01611 100644
--- a/drivers/clk/mediatek/clk-mt8183.c
+++ b/drivers/clk/mediatek/clk-mt8183.c
@@ -25,9 +25,11 @@
 	FIXED_CLK(CLK_TOP_UNIVP_192M, "univpll_192m", "univpll", 192000000),
 };
 
+static const struct mtk_fixed_factor top_early_divs[] = {
+	FACTOR(CLK_TOP_CLK13M, "clk13m", "clk26m", 1, 2),
+};
+
 static const struct mtk_fixed_factor top_divs[] = {
-	FACTOR(CLK_TOP_CLK13M, "clk13m", "clk26m", 1,
-		2),
 	FACTOR(CLK_TOP_F26M_CK_D2, "csw_f26m_ck_d2", "clk26m", 1,
 		2),
 	FACTOR(CLK_TOP_SYSPLL_CK, "syspll_ck", "mainpll", 1,
@@ -1167,37 +1169,57 @@ static int clk_mt8183_apmixed_probe(struct platform_device *pdev)
 	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 }
 
+static struct clk_onecell_data *top_clk_data;
+
+static void clk_mt8183_top_init_early(struct device_node *node)
+{
+	int i;
+
+	top_clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
+
+	for (i = 0; i < CLK_TOP_NR_CLK; i++)
+		top_clk_data->clks[i] = ERR_PTR(-EPROBE_DEFER);
+
+	mtk_clk_register_factors(top_early_divs, ARRAY_SIZE(top_early_divs),
+			top_clk_data);
+
+	of_clk_add_provider(node, of_clk_src_onecell_get, top_clk_data);
+}
+
+CLK_OF_DECLARE_DRIVER(mt8183_topckgen, "mediatek,mt8183-topckgen",
+			clk_mt8183_top_init_early);
+
 static int clk_mt8183_top_probe(struct platform_device *pdev)
 {
 	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	void __iomem *base;
-	struct clk_onecell_data *clk_data;
 	struct device_node *node = pdev->dev.of_node;
 
 	base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-	clk_data = mtk_alloc_clk_data(CLK_TOP_NR_CLK);
-
 	mtk_clk_register_fixed_clks(top_fixed_clks, ARRAY_SIZE(top_fixed_clks),
-		clk_data);
+		top_clk_data);
+
+	mtk_clk_register_factors(top_early_divs, ARRAY_SIZE(top_early_divs),
+		top_clk_data);
 
-	mtk_clk_register_factors(top_divs, ARRAY_SIZE(top_divs), clk_data);
+	mtk_clk_register_factors(top_divs, ARRAY_SIZE(top_divs), top_clk_data);
 
 	mtk_clk_register_muxes(top_muxes, ARRAY_SIZE(top_muxes),
-		node, &mt8183_clk_lock, clk_data);
+		node, &mt8183_clk_lock, top_clk_data);
 
 	mtk_clk_register_composites(top_aud_muxes, ARRAY_SIZE(top_aud_muxes),
-		base, &mt8183_clk_lock, clk_data);
+		base, &mt8183_clk_lock, top_clk_data);
 
 	mtk_clk_register_composites(top_aud_divs, ARRAY_SIZE(top_aud_divs),
-		base, &mt8183_clk_lock, clk_data);
+		base, &mt8183_clk_lock, top_clk_data);
 
 	mtk_clk_register_gates(node, top_clks, ARRAY_SIZE(top_clks),
-		clk_data);
+		top_clk_data);
 
-	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+	return of_clk_add_provider(node, of_clk_src_onecell_get, top_clk_data);
 }
 
 static int clk_mt8183_infra_probe(struct platform_device *pdev)
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
