Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D879FCDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOxN2wef0Nx7y4KLaxCO7Fr3MFIHRWX55lm68Nh5PNU=; b=NYkOyLsEFYTC+3
	YIdAq5RqU6uMYaqxM9dSCQuyhsadHTKaqGcx0z++MG7h1QnXvjPgKdBQG84I3lEphtOtl6U/SINEI
	dZsr6mdU/4MNEAzCCjbWZ8MSR3Zy8En93FkPJywzQgcHqQRb1y9FZT2E+CQzUUwXvi5eCO+jX4JE5
	L7SyWYH0P5BY4TjuTCk/DmDDfbNWqI2Ec+rXNNS6VWkXf+pPYNsrfxh7CcKiOBfABGJaZ5sbsnec0
	HARw975Q0j4ZzCLUrilq8+aqSpW1cLoYckWg9jTJJRbzJITHrEtyg9sCt5/DZgCvyCw7L8KeEUb4W
	qeLQPs9BoqrCOhzoVj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tEn-0006ud-3G; Wed, 28 Aug 2019 08:23:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tE5-0006MT-HV; Wed, 28 Aug 2019 08:22:47 +0000
X-UUID: 0b052f3070bc4d259d088c1fc47a2e4f-20190828
X-UUID: 0b052f3070bc4d259d088c1fc47a2e4f-20190828
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 74432937; Wed, 28 Aug 2019 00:22:47 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 01:22:45 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 16:22:37 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 16:22:36 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 2/2] clk: mediatek: add pericfg clocks for MT8183
Date: Wed, 28 Aug 2019 16:22:13 +0800
Message-ID: <1566980533-28282-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6DC754C66BDCD856598D92120E25C2ECC60FDFB513228A16B278547B46FB24CC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_012245_583506_25452E09 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Erin Lo <erin.lo@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pericfg clocks for MT8183, it's used when support USB
remote wakeup

Cc: Weiyi Lu <weiyi.lu@mediatek.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2:
   use GATE_MTK to define GATE_PERI suggested by Weiyi
---
 drivers/clk/mediatek/clk-mt8183.c      | 30 ++++++++++++++++++++++++++
 include/dt-bindings/clock/mt8183-clk.h |  4 ++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
index 1aa5f4059251..f3765bbdbe85 100644
--- a/drivers/clk/mediatek/clk-mt8183.c
+++ b/drivers/clk/mediatek/clk-mt8183.c
@@ -999,6 +999,20 @@ static const struct mtk_gate infra_clks[] = {
 		"msdc50_0_sel", 24),
 };
 
+static const struct mtk_gate_regs peri_cg_regs = {
+	.set_ofs = 0x20c,
+	.clr_ofs = 0x20c,
+	.sta_ofs = 0x20c,
+};
+
+#define GATE_PERI(_id, _name, _parent, _shift)			\
+	GATE_MTK(_id, _name, _parent, &peri_cg_regs, _shift,	\
+		&mtk_clk_gate_ops_no_setclr_inv)
+
+static const struct mtk_gate peri_clks[] = {
+	GATE_PERI(CLK_PERI_AXI, "peri_axi", "axi_sel", 31),
+};
+
 static const struct mtk_gate_regs apmixed_cg_regs = {
 	.set_ofs = 0x20,
 	.clr_ofs = 0x20,
@@ -1194,6 +1208,19 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
 	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 }
 
+static int clk_mt8183_peri_probe(struct platform_device *pdev)
+{
+	struct clk_onecell_data *clk_data;
+	struct device_node *node = pdev->dev.of_node;
+
+	clk_data = mtk_alloc_clk_data(CLK_PERI_NR_CLK);
+
+	mtk_clk_register_gates(node, peri_clks, ARRAY_SIZE(peri_clks),
+			       clk_data);
+
+	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+}
+
 static int clk_mt8183_mcu_probe(struct platform_device *pdev)
 {
 	struct clk_onecell_data *clk_data;
@@ -1223,6 +1250,9 @@ static const struct of_device_id of_match_clk_mt8183[] = {
 	}, {
 		.compatible = "mediatek,mt8183-infracfg",
 		.data = clk_mt8183_infra_probe,
+	}, {
+		.compatible = "mediatek,mt8183-pericfg",
+		.data = clk_mt8183_peri_probe,
 	}, {
 		.compatible = "mediatek,mt8183-mcucfg",
 		.data = clk_mt8183_mcu_probe,
diff --git a/include/dt-bindings/clock/mt8183-clk.h b/include/dt-bindings/clock/mt8183-clk.h
index 0046506eb24c..a7b470b0ec8a 100644
--- a/include/dt-bindings/clock/mt8183-clk.h
+++ b/include/dt-bindings/clock/mt8183-clk.h
@@ -284,6 +284,10 @@
 #define CLK_INFRA_FBIST2FPC		100
 #define CLK_INFRA_NR_CLK		101
 
+/* PERICFG */
+#define CLK_PERI_AXI			0
+#define CLK_PERI_NR_CLK			1
+
 /* MFGCFG */
 #define CLK_MFG_BG3D			0
 #define CLK_MFG_NR_CLK			1
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
