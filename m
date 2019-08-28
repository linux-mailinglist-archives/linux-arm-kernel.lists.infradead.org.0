Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13209FA18
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 07:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbMJXi0An8/VlkeLp9yzRBJhfo9qhzztLYxGdB2J0DA=; b=duGx4NUDLZxRGR
	8knGlHX3Vz1AciCF8+NsJsCxUJnT3cv1eZUmadjN+lgVSa9iUI4mZpxmR0xy/pZG3Z/hdgvfoJlMC
	xohefx6QEYwbIq9el/6lsq9Z82OYJ4rE0xAs/T5RV/OwebbS8QkCKOWuPQn02rmLzZeT/sYSPJzei
	4DPQi8a8XBXDrdukdQdvYFHayH3WbFj6khGgkisEYv2VCbnQoYDG/+i2h5amfTGIZMYsQlSnHSd16
	Mo7ME5G6oGyYfpyw0uoMFHeGZXGmPkCl18eTZmUQbtQWJu8oqPYx7bd9H2rYe8hXbwJPJ2vdznu+x
	duR+B0nYD7v3b61LLd9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2qxB-0001la-KC; Wed, 28 Aug 2019 05:57:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2qwb-0001WQ-Cu; Wed, 28 Aug 2019 05:56:35 +0000
X-UUID: e349e834e1874760818b1dc6572c3faf-20190827
X-UUID: e349e834e1874760818b1dc6572c3faf-20190827
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 982429888; Tue, 27 Aug 2019 21:56:36 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 22:56:35 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 13:56:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 13:56:26 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 2/2] clk: mediatek: add pericfg clocks for MT8183
Date: Wed, 28 Aug 2019 13:55:55 +0800
Message-ID: <1566971755-21217-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566971755-21217-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566971755-21217-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D64A18BE0E67B75CFF0178547373DF7B913A420C3974F69A674CFB0CE0B7E9842000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_225633_448619_4E34F805 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 drivers/clk/mediatek/clk-mt8183.c      | 35 ++++++++++++++++++++++++++
 include/dt-bindings/clock/mt8183-clk.h |  4 +++
 2 files changed, 39 insertions(+)

diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
index 1aa5f4059251..b19221bad0c9 100644
--- a/drivers/clk/mediatek/clk-mt8183.c
+++ b/drivers/clk/mediatek/clk-mt8183.c
@@ -999,6 +999,25 @@ static const struct mtk_gate infra_clks[] = {
 		"msdc50_0_sel", 24),
 };
 
+static const struct mtk_gate_regs peri_cg_regs = {
+	.set_ofs = 0x20c,
+	.clr_ofs = 0x20c,
+	.sta_ofs = 0x20c,
+};
+
+#define GATE_PERI(_id, _name, _parent, _shift) {	\
+	.id = _id,				\
+	.name = _name,				\
+	.parent_name = _parent,			\
+	.regs = &peri_cg_regs,			\
+	.shift = _shift,			\
+	.ops = &mtk_clk_gate_ops_no_setclr_inv,	\
+}
+
+static const struct mtk_gate peri_clks[] = {
+	GATE_PERI(CLK_PERI_AXI, "periaxi", "axi_sel", 31),
+};
+
 static const struct mtk_gate_regs apmixed_cg_regs = {
 	.set_ofs = 0x20,
 	.clr_ofs = 0x20,
@@ -1194,6 +1213,19 @@ static int clk_mt8183_infra_probe(struct platform_device *pdev)
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
@@ -1223,6 +1255,9 @@ static const struct of_device_id of_match_clk_mt8183[] = {
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
