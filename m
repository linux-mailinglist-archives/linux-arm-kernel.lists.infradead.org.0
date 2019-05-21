Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08C24668
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 05:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mo1luWkmh9b65cs8c3VCU/rp+onpgpNRqdd0SCE6U/g=; b=lPZtJOu9AU5bJW
	BtkTHzLSPT7A8e5GTiYpdF7AjNjs8/I4bobKu9y1YMtHwg/5wEa3uVFVGmJf4rcuiFc0amu4Om8aC
	sGwq5K7GshmbxC9lCRnZFVsc8JQMq40aHxIuzN6zGV0VbMzof9p+5pLFjMoB+zYuAzAzrWV8hYI6X
	xa+xKSSTl325do1SuF7ffzbaX+I3prI+zDiUKT9j4sA29Bk4f6ONDi9m7jvbXbISqTdRbGrXHJtzE
	15xaPRwP2DBCC4uaPWBLWzugAhve1yRzNZb+uHZq6ucpG3GEm1Ku37seHioQMtyoEO5OPBtEVBB/9
	5F8F0V5wdblMISv0WG+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSvdk-0007Ao-MJ; Tue, 21 May 2019 03:40:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSvdc-00079t-M6; Tue, 21 May 2019 03:40:30 +0000
X-UUID: 7b6e34a3dea44a0a88127e79f10d1961-20190520
X-UUID: 7b6e34a3dea44a0a88127e79f10d1961-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 47128751; Mon, 20 May 2019 19:40:16 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 20:40:14 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 11:40:12 +0800
Received: from mtkslt303.mediatek.inc (10.21.14.116) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 11:40:12 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: mediatek: Remove MT8183 unused clock
Date: Tue, 21 May 2019 11:40:01 +0800
Message-ID: <20190521034001.53365-1-erin.lo@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 97CAF9D7C80D56F8BE6033CF8E65B654151A3B10C79D90FE75D003E4E7EEA6182000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_204028_730482_712A761F 
X-CRM114-Status: UNSURE (   6.78  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Erin Lo <erin.lo@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove MT8183 sspm clock

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
---
This clock should only be set in secure world.
---
 drivers/clk/mediatek/clk-mt8183.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt8183.c b/drivers/clk/mediatek/clk-mt8183.c
index 9d8651033ae9..1aa5f4059251 100644
--- a/drivers/clk/mediatek/clk-mt8183.c
+++ b/drivers/clk/mediatek/clk-mt8183.c
@@ -395,14 +395,6 @@ static const char * const atb_parents[] = {
 	"syspll_d5"
 };
 
-static const char * const sspm_parents[] = {
-	"clk26m",
-	"univpll_d2_d4",
-	"syspll_d2_d2",
-	"univpll_d2_d2",
-	"syspll_d3"
-};
-
 static const char * const dpi0_parents[] = {
 	"clk26m",
 	"tvdpll_d2",
@@ -606,9 +598,6 @@ static const struct mtk_mux top_muxes[] = {
 	MUX_GATE_CLR_SET_UPD(CLK_TOP_MUX_ATB, "atb_sel",
 		atb_parents, 0xa0,
 		0xa4, 0xa8, 0, 2, 7, 0x004, 24),
-	MUX_GATE_CLR_SET_UPD(CLK_TOP_MUX_SSPM, "sspm_sel",
-		sspm_parents, 0xa0,
-		0xa4, 0xa8, 8, 3, 15, 0x004, 25),
 	MUX_GATE_CLR_SET_UPD(CLK_TOP_MUX_DPI0, "dpi0_sel",
 		dpi0_parents, 0xa0,
 		0xa4, 0xa8, 16, 4, 23, 0x004, 26),
@@ -947,12 +936,8 @@ static const struct mtk_gate infra_clks[] = {
 		"fufs_sel", 13),
 	GATE_INFRA2(CLK_INFRA_MD32_BCLK, "infra_md32_bclk",
 		"axi_sel", 14),
-	GATE_INFRA2(CLK_INFRA_SSPM, "infra_sspm",
-		"sspm_sel", 15),
 	GATE_INFRA2(CLK_INFRA_UNIPRO_MBIST, "infra_unipro_mbist",
 		"axi_sel", 16),
-	GATE_INFRA2(CLK_INFRA_SSPM_BUS_HCLK, "infra_sspm_bus_hclk",
-		"axi_sel", 17),
 	GATE_INFRA2(CLK_INFRA_I2C5, "infra_i2c5",
 		"i2c_sel", 18),
 	GATE_INFRA2(CLK_INFRA_I2C5_ARBITER, "infra_i2c5_arbiter",
@@ -986,10 +971,6 @@ static const struct mtk_gate infra_clks[] = {
 		"msdc50_0_sel", 1),
 	GATE_INFRA3(CLK_INFRA_MSDC2_SELF, "infra_msdc2_self",
 		"msdc50_0_sel", 2),
-	GATE_INFRA3(CLK_INFRA_SSPM_26M_SELF, "infra_sspm_26m_self",
-		"f_f26m_ck", 3),
-	GATE_INFRA3(CLK_INFRA_SSPM_32K_SELF, "infra_sspm_32k_self",
-		"f_f26m_ck", 4),
 	GATE_INFRA3(CLK_INFRA_UFS_AXI, "infra_ufs_axi",
 		"axi_sel", 5),
 	GATE_INFRA3(CLK_INFRA_I2C6, "infra_i2c6",
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
