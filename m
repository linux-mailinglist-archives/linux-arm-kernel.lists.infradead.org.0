Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF39C8A86
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vXkA5cXLnwqj8OWXETi41my9RuCcnXvZelQ2Zq3M790=; b=CumzUiOHE3cX+709zODC6M4WXX
	qjbPB5TNuM5yfX4+o15b1D8msz4ampsXSHvH5IeX9PAREGB6zHSbBcq0n31Xi/46qKP3dga/TMDUf
	BxMVVfGg4bCB5LfpZO5TpzYaDLvrZlLCK+MOP3F7yzTz6ejFB2KFgJ3ZIpTmX/Ibngq6fGsKyfF45
	Fzps0DOIK5qLgngdEQPtXqeRwDfop2DOkuSnwC5K+kqnNGAJNYEzFzdI+3+Ox1bFz8dBEdn+ZvIP+
	J5RXbmu5YlKVVcuJ5smMDiQIB1yEsO3ugrgdyd6lWW3vK+F2YbzBwdEn9qzr4B61zcv41s+f/VAY9
	k5zFm2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFfGc-0005yB-C0; Wed, 02 Oct 2019 14:06:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfGD-0005ch-O3
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:05:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A8D741A02D1;
 Wed,  2 Oct 2019 16:05:41 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B3E01A0048;
 Wed,  2 Oct 2019 16:05:41 +0200 (CEST)
Received: from fsr-ub1664-121.ea.freescale.net
 (fsr-ub1664-121.ea.freescale.net [10.171.82.171])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0FE102060C;
 Wed,  2 Oct 2019 16:05:41 +0200 (CEST)
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 1/5] clk: imx8mq: Add VIDEO2_PLL clock
Date: Wed,  2 Oct 2019 17:04:53 +0300
Message-Id: <1570025100-5634-2-git-send-email-laurentiu.palcu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_070546_054325_870CE7BD 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This clock is needed by DCSS when high resolutions are used.

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@nxp.com>
CC: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c             | 4 ++++
 include/dt-bindings/clock/imx8mq-clock.h | 4 +++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 41fc9c6..05ece7b 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -38,6 +38,7 @@ static const char * const sys1_pll_out_sels[] = {"sys1_pll1_ref_sel", };
 static const char * const sys2_pll_out_sels[] = {"sys1_pll1_ref_sel", "sys2_pll1_ref_sel", };
 static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
 static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
+static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
 
 /* CCM ROOT */
 static const char * const imx8mq_a53_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
@@ -311,6 +312,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_SYS2_PLL1_REF_SEL]	= imx_clk_mux("sys2_pll1_ref_sel", base + 0x3c, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MQ_SYS3_PLL1_REF_SEL]	= imx_clk_mux("sys3_pll1_ref_sel", base + 0x48, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MQ_DRAM_PLL1_REF_SEL]	= imx_clk_mux("dram_pll1_ref_sel", base + 0x60, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	clks[IMX8MQ_VIDEO2_PLL1_REF_SEL] = imx_clk_mux("video2_pll1_ref_sel", base + 0x54, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	clks[IMX8MQ_ARM_PLL_REF_DIV]	= imx_clk_divider("arm_pll_ref_div", "arm_pll_ref_sel", base + 0x28, 5, 6);
 	clks[IMX8MQ_GPU_PLL_REF_DIV]	= imx_clk_divider("gpu_pll_ref_div", "gpu_pll_ref_sel", base + 0x18, 5, 6);
@@ -346,6 +348,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c, CLK_IS_CRITICAL);
 	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
 	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
+	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
+
 	/* SYS PLL fixed output */
 	clks[IMX8MQ_SYS1_PLL_40M] = imx_clk_fixed_factor("sys1_pll_40m", "sys1_pll_out", 1, 20);
 	clks[IMX8MQ_SYS1_PLL_80M] = imx_clk_fixed_factor("sys1_pll_80m", "sys1_pll_out", 1, 10);
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 6546367..35b9ed9 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -403,5 +403,7 @@
 #define IMX8MQ_CLK_SNVS_ROOT			264
 #define IMX8MQ_CLK_GIC				265
 
-#define IMX8MQ_CLK_END				266
+#define IMX8MQ_VIDEO2_PLL1_REF_SEL		266
+
+#define IMX8MQ_CLK_END				267
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
