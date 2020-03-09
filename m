Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C4217EA84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTuBpEc06Jr1j4GiyxICnZSdmCA6ajangFUgxgfGiKI=; b=Wt8n6ovCB4zIoi
	b4h8TUlXZsrM7kglwHWzpyAHDWnqa29mW8OydfYCmcdxSqVQnRIvK6DUo7IxMhFcF+E35B+KPE/ts
	yiB/WpDZO3MJjd0l6dTOewYHavXj359wNHhSy2c+G8Jrbst0EtcOT+OxRpowjTRjX4ls1FaVhy2LO
	tydhXTr2vzh7PrgJEpIvXSCFyMiqM6cnkRB1TJzHn+hRd2QbvIuqA/FbBkSZShHwRVRfmn6MLQYjj
	0gfAZ8Z1pb5m0Bw32OyN+9J8pAddKMh9g/jql0yiMIsMvq7pKXACbAoVdexEshC25Edgfm03DlcFg
	ayw0LR2PzlS+vKMfUglw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPPp-0006ns-9o; Mon, 09 Mar 2020 20:54:21 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPPJ-0006X7-CN; Mon, 09 Mar 2020 20:53:50 +0000
Received: from localhost (unknown [82.66.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 44922240003;
 Mon,  9 Mar 2020 20:53:29 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] clk: meson: axg: Remove MIPI enable clock gate
Date: Mon,  9 Mar 2020 22:01:56 +0100
Message-Id: <20200309210157.29860-2-repk@triplefau.lt>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200309210157.29860-1-repk@triplefau.lt>
References: <20200309210157.29860-1-repk@triplefau.lt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_135349_553092_3F8EF562 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, Remi Pommarel <repk@triplefau.lt>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On AXG platforms HHI_MIPI_CNTL0 is part of the MIPI/PCIe analog PHY
region and is not related to clock one and can be removed from it.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 drivers/clk/meson/axg.c | 3 ---
 drivers/clk/meson/axg.h | 1 -
 2 files changed, 4 deletions(-)

diff --git a/drivers/clk/meson/axg.c b/drivers/clk/meson/axg.c
index 13fc0006f63d..870e90a863fa 100644
--- a/drivers/clk/meson/axg.c
+++ b/drivers/clk/meson/axg.c
@@ -1141,7 +1141,6 @@ static MESON_GATE(axg_mmc_pclk, HHI_GCLK_MPEG2, 11);
 static MESON_GATE(axg_vpu_intr, HHI_GCLK_MPEG2, 25);
 static MESON_GATE(axg_sec_ahb_ahb3_bridge, HHI_GCLK_MPEG2, 26);
 static MESON_GATE(axg_gic, HHI_GCLK_MPEG2, 30);
-static MESON_GATE(axg_mipi_enable, HHI_MIPI_CNTL0, 29);
 
 /* Always On (AO) domain gates */
 
@@ -1236,7 +1235,6 @@ static struct clk_hw_onecell_data axg_hw_onecell_data = {
 		[CLKID_PCIE_REF]		= &axg_pcie_ref.hw,
 		[CLKID_PCIE_CML_EN0]		= &axg_pcie_cml_en0.hw,
 		[CLKID_PCIE_CML_EN1]		= &axg_pcie_cml_en1.hw,
-		[CLKID_MIPI_ENABLE]		= &axg_mipi_enable.hw,
 		[CLKID_GEN_CLK_SEL]		= &axg_gen_clk_sel.hw,
 		[CLKID_GEN_CLK_DIV]		= &axg_gen_clk_div.hw,
 		[CLKID_GEN_CLK]			= &axg_gen_clk.hw,
@@ -1331,7 +1329,6 @@ static struct clk_regmap *const axg_clk_regmaps[] = {
 	&axg_pcie_ref,
 	&axg_pcie_cml_en0,
 	&axg_pcie_cml_en1,
-	&axg_mipi_enable,
 	&axg_gen_clk_sel,
 	&axg_gen_clk_div,
 	&axg_gen_clk,
diff --git a/drivers/clk/meson/axg.h b/drivers/clk/meson/axg.h
index 0431dabac629..fafe31739d0d 100644
--- a/drivers/clk/meson/axg.h
+++ b/drivers/clk/meson/axg.h
@@ -16,7 +16,6 @@
  * Register offsets from the data sheet must be multiplied by 4 before
  * adding them to the base address to get the right value.
  */
-#define HHI_MIPI_CNTL0			0x00
 #define HHI_GP0_PLL_CNTL		0x40
 #define HHI_GP0_PLL_CNTL2		0x44
 #define HHI_GP0_PLL_CNTL3		0x48
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
