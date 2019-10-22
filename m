Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABABEE0C7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 21:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GABAe9S2vhB43t1Qhvljg7cFT7Cua3Mlv73677X/Bxo=; b=A5C
	KUrMUeAqStgRX6UefB3PBqctouN10mtUtpkusdKD9b1CfbiuzKGnec2D0WeGaszCy7UhqOLV7Nsdc
	B7hFeMeUdIGc0SOo00F9Q+ZCcAV97Lr/J/B/eUI1zCXxcztktYUqv/yWEkrbblzi007pzqYzZrpUu
	T2jfkoLrMX6HOtmG2crWPgUyM6SXkHAgToLiMgzvd3HzfpU9CqFbqzl9g62O7R1qCPoforudnFtdY
	gqblVHBfmL45qNiTIUjEQ5LMhLr531Dek6P7tFlLtkJuAFnjtkfTcXobOPARFg5ABi7sNwq2IEBjS
	vnLW1gS8m7hWqvxcGcAqEnNrAgbE6zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMzj1-0007ZS-QJ; Tue, 22 Oct 2019 19:21:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMzir-0007Ym-OP
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 19:21:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 26B362001B9;
 Tue, 22 Oct 2019 21:21:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 181192000AC;
 Tue, 22 Oct 2019 21:21:32 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 92BC42060F;
 Tue, 22 Oct 2019 21:21:31 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] clk: imx8m: Use SYS_PLL1_800M as intermediate parent of
 CLK_ARM
Date: Tue, 22 Oct 2019 22:21:28 +0300
Message-Id: <f5d2b9c53f1ed5ccb1dd3c6624f56759d92e1689.1571771777.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_122137_930601_14117E37 
X-CRM114-Status: UNSURE (   9.13  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During cpu frequency switching the main "CLK_ARM" is reparented to an
intermediate "step" clock. On imx8mm and imx8mn the 24M oscillator is
used for this purpose but it is extremely slow, increasing wakeup
latencies to the point that i2c transactions can timeout and system
becomes unresponsive.

Fix by switching the "step" clk to SYS_PLL1_800M, matching the behavior
of imx8m cpufreq drivers in imx vendor tree.

This bug was not immediately apparent because upstream arm64 defconfig
uses the "performance" governor by default so no cpufreq transitions
happen.

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")

Cc: stable@vger.kernel.org
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 2 +-
 drivers/clk/imx/clk-imx8mn.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

This is marked as "cc: stable" because it has a large impact on common
usecases and it's difficult to debug.

This was sent with a different email workaround so hope it arrives OK.

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index bbd212eb904e..a92942ea2045 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -588,11 +588,11 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
 					   clks[IMX8MM_CLK_A53_DIV],
 					   clks[IMX8MM_CLK_A53_SRC],
 					   clks[IMX8MM_ARM_PLL_OUT],
-					   clks[IMX8MM_CLK_24M]);
+					   clks[IMX8MM_SYS_PLL1_800M]);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index ad7f2e527c70..3cd38eba58df 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -544,11 +544,11 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	clks[IMX8MN_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
 					   clks[IMX8MN_CLK_A53_DIV],
 					   clks[IMX8MN_CLK_A53_SRC],
 					   clks[IMX8MN_ARM_PLL_OUT],
-					   clks[IMX8MN_CLK_24M]);
+					   clks[IMX8MN_SYS_PLL1_800M]);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
