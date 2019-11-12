Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF97F9C98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 22:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t8VpLrS3cC7M1F3ZhMwuNt14SOZbYXqKWaprpv9thRc=; b=V3plZ2LMIKaZzCqUihTCx5F8x9
	hIy73c2fzZ31UaL+QPsys1WUT86+6dUxPmXXBdORIM2yVTJGAhWQ9jw3Y55QKPMpc4D9t7xQSv3rP
	q7VE70FnE0/yB7b++uQhn0EkyRmoWmLxTtLl8MKWsQCG/j4+69fuWdIMyAcrBMF/AFVcudl4Gcgql
	KL33G65JaFAKlAopqDVpsP4KjOz7MumrcEwFzNFSN6rygoVohgZyPDv6QRAtfJjwgflb0lDO01THC
	wVAwctZCycPHVwOuPENZt3G+AP1aRYkJh+AiT5Jb1PQ23wBfbg5OuTgrqBJz0Gqnkz3xLr7XezGEh
	8ERoj6mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUe4q-0004ds-QP; Tue, 12 Nov 2019 21:51:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUe48-0004DA-Up
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 21:51:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 54CB1200301;
 Tue, 12 Nov 2019 22:51:11 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B9F3200191;
 Tue, 12 Nov 2019 22:51:11 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C39A205E9;
 Tue, 12 Nov 2019 22:51:10 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Date: Tue, 12 Nov 2019 23:50:52 +0200
Message-Id: <65d08f34741f1ffa94a53bc128433e6c958091d2.1573595319.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573595318.git.leonard.crestez@nxp.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573595318.git.leonard.crestez@nxp.com>
References: <cover.1573595318.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_135113_269005_D870F25F 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DRAM frequency switches are executed in firmware and can change the
configuration of the DRAM PLL outside linux. Mark these CLKs with
CLK_GET_RATE_NOCACHE so we always read back the PLL config registers and
recalculate rates.

In current DRAM frequency tables on 8mm/8mn only the maximum frequency
uses the PLL so it's always configured in the same way. However reading
back the PLL configuration is the correct behavior and allows additional
setpoints in the future.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c  | 2 +-
 drivers/clk/imx/clk-imx8mn.c  | 2 +-
 drivers/clk/imx/clk-pll14xx.c | 7 +++++++
 drivers/clk/imx/clk.h         | 1 +
 4 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index e2bc3c90d93c..9246e89bb5fd 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -326,11 +326,11 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
 	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
 	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
-	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
+	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
 	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
 	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
 	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index de905e278b80..4749beab9fc8 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -323,11 +323,11 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
 	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
 	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
-	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
+	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
 	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
 	clks[IMX8MN_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
 	clks[IMX8MN_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 5c458199060a..a6d31a7262ef 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -65,10 +65,17 @@ struct imx_pll14xx_clk imx_1443x_pll = {
 	.type = PLL_1443X,
 	.rate_table = imx_pll1443x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
 };
 
+struct imx_pll14xx_clk imx_1443x_dram_pll = {
+	.type = PLL_1443X,
+	.rate_table = imx_pll1443x_tbl,
+	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
+	.flags = CLK_GET_RATE_NOCACHE,
+};
+
 struct imx_pll14xx_clk imx_1416x_pll = {
 	.type = PLL_1416X,
 	.rate_table = imx_pll1416x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
 };
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index bc5bb6ac8636..81122c9ab842 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -50,10 +50,11 @@ struct imx_pll14xx_clk {
 	int flags;
 };
 
 extern struct imx_pll14xx_clk imx_1416x_pll;
 extern struct imx_pll14xx_clk imx_1443x_pll;
+extern struct imx_pll14xx_clk imx_1443x_dram_pll;
 
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
 	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
 
 #define clk_register_gate2(dev, name, parent_name, flags, reg, bit_idx, \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
