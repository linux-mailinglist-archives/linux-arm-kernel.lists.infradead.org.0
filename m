Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC453EB960
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 22:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wq6ln9ZkN6Yl0d76L2SnVzleJc5swbk5LiOaCs/NMnc=; b=hVcLtzO8JF8JAfNwgTDZEK7ToK
	VpoYhA0U6vVu+InoD8RsY+dwQjnKL3I8hG7kUMAcCrZUDqqipXTwQci9D81gvkmRZrnZNVDE4FYcA
	+3vGPJ0EnVJaEdhgCE4rEOvecefd/28s3mKCMKaxTyCRw1monudF/3xQhODwlT1GAGSeCP+6ZN0NO
	Ftrk8/JJcHV6NbfZnEUgycNrrCzjSPl6jlCl2Um+w1VrTUzOBVHwEpmC820tV6pMMqgJKBJwRusuz
	FZ1MpJ9JtnEAjC+dA9Q1UEZeSTujMGrALw99J39F6sceVJPL4oCCFhmuqoUd1qD3yC6W8UTEQHW+P
	p+nQ0mAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQILy-0005hO-UT; Thu, 31 Oct 2019 21:51:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQIKx-0005G6-Gz
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 21:50:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 507C01A0598;
 Thu, 31 Oct 2019 22:50:34 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 425AD1A0112;
 Thu, 31 Oct 2019 22:50:34 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 33939205E9;
 Thu, 31 Oct 2019 22:50:33 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 2/6] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
Date: Thu, 31 Oct 2019 23:50:23 +0200
Message-Id: <3dd51e03a73f53f6cc7ec90c306d6cdbfa2204f7.1572558427.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572558427.git.leonard.crestez@nxp.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1572558427.git.leonard.crestez@nxp.com>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_145035_872849_52089E8A 
X-CRM114-Status: GOOD (  12.20  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
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
---
 drivers/clk/imx/clk-imx8mm.c  | 2 +-
 drivers/clk/imx/clk-imx8mn.c  | 2 +-
 drivers/clk/imx/clk-pll14xx.c | 7 +++++++
 drivers/clk/imx/clk.h         | 1 +
 4 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index c58f988191a5..d500bac3afa1 100644
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
index ca78cb1249a7..9c605ca1b631 100644
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
