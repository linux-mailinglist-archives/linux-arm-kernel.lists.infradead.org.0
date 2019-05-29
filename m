Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C1F2D7AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZcxcVTAFNAfvC7gQpajqQWjDxJhdt0LCXGS1JU1pvI=; b=Qy8ps95yNa2JT/
	qISI/qet4vCg9jdbZPOxDZSfBQpNfsaeB1hbvKnUj07mggB0J4uPCMJh/HMbBbh4PPz71KvezFA3s
	BQyxsRpPQ/Pv21HI2ctml16nLgPq6Hmko71KfiKd21jwQVK7VP8rBptN0otCfx+LlUvBasmxwKfiH
	GJHQ06v8jFKflI0Ke1VntYXEr2JkEPJzDrDUj0oWy2GbLIVf6zYM6t+yMIx42kfbT7b9X4iseUHaW
	ABYkYU08RvIuPWir9JoUoXr3u4mt4022d6tpJAZJ9pQFpDW1yjf/pxuf6dCo4NUDGF8FuEkTtqgjN
	wn1v03/wYaJwvab236Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVts8-0000XE-Ix; Wed, 29 May 2019 08:23:44 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtqb-0007Zo-1r
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:22:12 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cee41280000>; Wed, 29 May 2019 01:22:00 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 01:22:08 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 29 May 2019 01:22:08 -0700
Received: from HQMAIL103.nvidia.com (172.20.187.11) by HQMAIL108.nvidia.com
 (172.18.146.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:22:08 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL103.nvidia.com
 (172.20.187.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 29 May 2019 08:22:08 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cee412e0002>; Wed, 29 May 2019 01:22:08 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Rob
 Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V4 7/8] clk: tegra: Remove the old emc_mux clock for Tegra210
Date: Wed, 29 May 2019 16:21:38 +0800
Message-ID: <20190529082139.5581-8-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529082139.5581-1-josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559118120; bh=EY5mlT8ZlvKOnTYMN0loWZYtEz2EsBsQclJSzJbdsGM=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=Fi78obL0SREI5MJySSZlbMKTPqgfO7oInVOMlgCyEl4n+1rTMCPus94jnBCHwYsFi
 l2zDkyxzPI3TTyHbybKLSsG0lWrjQUOCBzodntVZxb+lTGHEmuaDY28UbwpCt9ms3s
 C+9gorkqKCM2Z/1zFMpdVaLHRbes7l9n0KZWaJotrfDrTHxtcBaQB2V7FwJYnYhZmB
 aRtK1LmlM458gFpA56PyxUQIwhBZsS+WCP2zGTKz8idUd0cCwhE1WF66pYNLX7kn52
 Gl/FH1NVGZheNWjUNECyuLARjpy+G1Oep3qxb89S5EiwMieJbf1JLXaYMUoFJMVlR2
 h3IKBRNM0wXdg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012209_231273_20BFBCA4 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the old emc_mux clock and don't use the common EMC clock
definition. This will be replaced by a new clock defined in the
EMC driver.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v4:
- make sure the behavior is compatible with case if the kernel still
  uses the older DTB which doesn't have EMC node. And the MC and EMC
  clock can still be registered successuflly.
v3:
- split to 3 patches from the previous version
---
 drivers/clk/tegra/clk-tegra210.c | 42 ++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 1d52354820ca..8b209e8b5eaf 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -28,6 +28,7 @@
 #include <dt-bindings/reset/tegra210-car.h>
 #include <linux/iopoll.h>
 #include <linux/sizes.h>
+#include <soc/tegra/emc.h>
 #include <soc/tegra/pmc.h>
 
 #include "clk.h"
@@ -324,12 +325,6 @@ static unsigned long tegra210_input_freq[] = {
 	[8] = 12000000,
 };
 
-static const char *mux_pllmcp_clkm[] = {
-	"pll_m", "pll_c", "pll_p", "clk_m", "pll_m_ud", "pll_mb", "pll_mb",
-	"pll_p",
-};
-#define mux_pllmcp_clkm_idx NULL
-
 #define PLL_ENABLE			(1 << 30)
 
 #define PLLCX_MISC1_IDDQ		(1 << 27)
@@ -2346,7 +2341,6 @@ static struct tegra_clk tegra210_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_i2c2] = { .dt_id = TEGRA210_CLK_I2C2, .present = true },
 	[tegra_clk_uartc_8] = { .dt_id = TEGRA210_CLK_UARTC, .present = true },
 	[tegra_clk_mipi_cal] = { .dt_id = TEGRA210_CLK_MIPI_CAL, .present = true },
-	[tegra_clk_emc] = { .dt_id = TEGRA210_CLK_EMC, .present = true },
 	[tegra_clk_usb2] = { .dt_id = TEGRA210_CLK_USB2, .present = true },
 	[tegra_clk_bsev] = { .dt_id = TEGRA210_CLK_BSEV, .present = true },
 	[tegra_clk_uartd_8] = { .dt_id = TEGRA210_CLK_UARTD, .present = true },
@@ -2957,6 +2951,27 @@ static int tegra210_init_pllu(void)
 	return 0;
 }
 
+static const struct clk_div_table mc_div_table_tegra210[] = {
+	{ .val = 0, .div = 2 },
+	{ .val = 1, .div = 4 },
+	{ .val = 2, .div = 1 },
+	{ .val = 3, .div = 2 },
+	{ .val = 0, .div = 0 },
+};
+
+static void tegra210_clk_register_mc(const char *name,
+				     const char *parent_name)
+{
+	struct clk *clk;
+
+	clk = clk_register_divider_table(NULL, name, parent_name,
+					 CLK_IS_CRITICAL,
+					 clk_base + CLK_SOURCE_EMC,
+					 15, 2, CLK_DIVIDER_READ_ONLY,
+					 mc_div_table_tegra210, &emc_lock);
+	clks[TEGRA210_CLK_MC] = clk;
+}
+
 static const char * const sor1_out_parents[] = {
 	/*
 	 * Bit 0 of the mux selects sor1_pad_clkout, irrespective of bit 1, so
@@ -3040,15 +3055,12 @@ static __init void tegra210_periph_clk_init(void __iomem *clk_base,
 			CLK_SOURCE_LA, 0);
 	clks[TEGRA210_CLK_LA] = clk;
 
-	/* emc mux */
-	clk = clk_register_mux(NULL, "emc_mux", mux_pllmcp_clkm,
-			       ARRAY_SIZE(mux_pllmcp_clkm), 0,
-			       clk_base + CLK_SOURCE_EMC,
-			       29, 3, 0, &emc_lock);
+	/* emc */
+	clk = tegra210_clk_register_emc();
+	clks[TEGRA210_CLK_EMC] = clk;
 
-	clk = tegra_clk_register_mc("mc", "emc_mux", clk_base + CLK_SOURCE_EMC,
-				    &emc_lock);
-	clks[TEGRA210_CLK_MC] = clk;
+	/* mc */
+	tegra210_clk_register_mc("mc", "emc");
 
 	/* cml0 */
 	clk = clk_register_gate(NULL, "cml0", "pll_e", 0, clk_base + PLLE_AUX,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
