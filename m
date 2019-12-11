Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8259D11A710
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ILtrDHsjV30RAlwDsOTr8O87RAIT6pVkYcren30XjH8=; b=XyurSJvAq3bdmInaXu+uf1nPum
	fCPfbQYV/GbRuJBc+OiSj2Y3cnYdanNqIRauuCKSq1NVXYae4DhZ1qyvuD2s7ONbljnhTEAU6n/7O
	/DSAbXHDPM7rxUU2Wh+IyArtWoW5XzaKnxGGwBPDhTIjEjPQI/yTPcXTY2eDmqRmriJjFst+RuiQE
	83t+JTx60XNJ5nrhAUFGCVDVeVZL5dJ+OshATg82cHBKzLgNmWf6gmNws3wGSvbn+o/GRI1ljRIHm
	wOucjQNIkKFzOwM+dbJ369q4b/Q4laOf++en7ZvvheYiRdz8qTrMLfQeIPySNAOnrFhnSRanUmy6F
	uNk8sbRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyIX-000164-5n; Wed, 11 Dec 2019 09:28:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyG1-0007GA-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:13 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 21B3D20098D;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 156882002FE;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 92A4E20568;
 Wed, 11 Dec 2019 10:26:06 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 09/11] clk: imx: Rename the imx_clk_pfdv2 to imply it's
 clk_hw based
Date: Wed, 11 Dec 2019 11:25:48 +0200
Message-Id: <1576056350-20715-10-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012609_560741_D7416F97 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Renaming the imx_clk_pfdv2 register function to imx_clk_hw_pfdv2 to be
more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 16 ++++++++--------
 drivers/clk/imx/clk-pfdv2.c   |  2 +-
 drivers/clk/imx/clk.h         |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 48bad87..88510f3 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -94,16 +94,16 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
-	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
-	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
-	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
-	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
+	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
+	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
+	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
+	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
 
 	/* SPLL PFDs */
-	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
-	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
-	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
-	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
+	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
+	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
+	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
+	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
 
 	/* PLL Mux */
 	clks[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
diff --git a/drivers/clk/imx/clk-pfdv2.c b/drivers/clk/imx/clk-pfdv2.c
index a03bbed..de93ce7 100644
--- a/drivers/clk/imx/clk-pfdv2.c
+++ b/drivers/clk/imx/clk-pfdv2.c
@@ -166,7 +166,7 @@ static const struct clk_ops clk_pfdv2_ops = {
 	.is_enabled     = clk_pfdv2_is_enabled,
 };
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx)
 {
 	struct clk_init_data init;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index ee71aa9..c7285db 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -200,7 +200,7 @@ struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
 struct clk_hw *imx_clk_hw_pfd(const char *name, const char *parent_name,
 		void __iomem *reg, u8 idx);
 
-struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx);
 
 struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
