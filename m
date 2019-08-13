Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE088BF45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HzNa6eXPSkSJi+3rl+RuccpBTE+cQrKsW6gGVoJgzXM=; b=Ki1vOgztb2WFypo1eVBOS29xm6
	k0E8CTC1PbUIMlwAYBS0U80b6oq2x+ljc343eXcRYujxBrFO7LFdDowU/ZUTY8ktuKwuLWCuk64aB
	FhuPSE4Qe4fmiBD58aHjheRYax0UqQj58uRlNl44FAhHryk0dfkI1mumY9Qm5+nN5N1QG/J4DNRyV
	xh/t2wB72hDsqtX/ffaokQjH4zppU3MqGSNRzGfUGSXH9MmV8hM7QBajJmcJl4kxA7T8gSLnfyrzt
	/jVzUBpSIOum9gVb+WXyObK0YuDzfJwKlHFrk5QWnX6Z1Jfcn7VKOSOQ1cvCwM+YTYWrNgIzKiXZq
	sdq5M3aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaFr-0004ZK-W4; Tue, 13 Aug 2019 17:06:40 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaEq-0003vo-ST
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:05:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AF0E620022F;
 Tue, 13 Aug 2019 19:05:35 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A0292200161;
 Tue, 13 Aug 2019 19:05:35 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 08BB92060E;
 Tue, 13 Aug 2019 19:05:34 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/4] clk: imx8mq: Fix sys3 pll references
Date: Tue, 13 Aug 2019 20:05:28 +0300
Message-Id: <8d9e3333e6c8b95067e60469cb3419c60e6c7205.1565715590.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100537_332749_DA15C6DA 
X-CRM114-Status: UNSURE (   6.68  )
X-CRM114-Notice: Please train this message.
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "sys3_pll2_out" CLK was removed in refactoring so all references
need to be updated to "sys3_pll_out"

Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 112 +++++++++++++++++------------------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 81a024928408..41fc9c63356e 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -39,93 +39,93 @@ static const char * const sys2_pll_out_sels[] = {"sys1_pll1_ref_sel", "sys2_pll1
 static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
 static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
 
 /* CCM ROOT */
 static const char * const imx8mq_a53_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
-					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "sys3_pll2_out", };
+					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "sys3_pll_out", };
 
 static const char * const imx8mq_arm_m4_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_250m", "sys1_pll_266m",
-					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out", "sys3_pll2_out", };
+					"sys1_pll_800m", "audio_pll1_out", "video_pll1_out", "sys3_pll_out", };
 
 static const char * const imx8mq_vpu_sels[] = {"osc_25m", "arm_pll_out", "sys2_pll_500m", "sys2_pll_1000m",
 					"sys1_pll_800m", "sys1_pll_400m", "audio_pll1_out", "vpu_pll_out", };
 
-static const char * const imx8mq_gpu_core_sels[] = {"osc_25m", "gpu_pll_out", "sys1_pll_800m", "sys3_pll2_out",
+static const char * const imx8mq_gpu_core_sels[] = {"osc_25m", "gpu_pll_out", "sys1_pll_800m", "sys3_pll_out",
 					     "sys2_pll_1000m", "audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
-static const char * const imx8mq_gpu_shader_sels[] = {"osc_25m", "gpu_pll_out", "sys1_pll_800m", "sys3_pll2_out",
+static const char * const imx8mq_gpu_shader_sels[] = {"osc_25m", "gpu_pll_out", "sys1_pll_800m", "sys3_pll_out",
 					       "sys2_pll_1000m", "audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
 static const char * const imx8mq_main_axi_sels[] = {"osc_25m", "sys2_pll_333m", "sys1_pll_800m", "sys2_pll_250m",
 					     "sys2_pll_1000m", "audio_pll1_out", "video_pll1_out", "sys1_pll_100m",};
 
 static const char * const imx8mq_enet_axi_sels[] = {"osc_25m", "sys1_pll_266m", "sys1_pll_800m", "sys2_pll_250m",
-					     "sys2_pll_200m", "audio_pll1_out", "video_pll1_out", "sys3_pll2_out", };
+					     "sys2_pll_200m", "audio_pll1_out", "video_pll1_out", "sys3_pll_out", };
 
 static const char * const imx8mq_nand_usdhc_sels[] = {"osc_25m", "sys1_pll_266m", "sys1_pll_800m", "sys2_pll_200m",
-					       "sys1_pll_133m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll1_out", };
+					       "sys1_pll_133m", "sys3_pll_out", "sys2_pll_250m", "audio_pll1_out", };
 
-static const char * const imx8mq_vpu_bus_sels[] = {"osc_25m", "sys1_pll_800m", "vpu_pll_out", "audio_pll2_out", "sys3_pll2_out", "sys2_pll_1000m", "sys2_pll_200m", "sys1_pll_100m", };
+static const char * const imx8mq_vpu_bus_sels[] = {"osc_25m", "sys1_pll_800m", "vpu_pll_out", "audio_pll2_out", "sys3_pll_out", "sys2_pll_1000m", "sys2_pll_200m", "sys1_pll_100m", };
 
-static const char * const imx8mq_disp_axi_sels[] = {"osc_25m", "sys2_pll_125m", "sys1_pll_800m", "sys3_pll2_out", "sys1_pll_400m", "audio_pll2_out", "clk_ext1", "clk_ext4", };
+static const char * const imx8mq_disp_axi_sels[] = {"osc_25m", "sys2_pll_125m", "sys1_pll_800m", "sys3_pll_out", "sys1_pll_400m", "audio_pll2_out", "clk_ext1", "clk_ext4", };
 
-static const char * const imx8mq_disp_apb_sels[] = {"osc_25m", "sys2_pll_125m", "sys1_pll_800m", "sys3_pll2_out",
+static const char * const imx8mq_disp_apb_sels[] = {"osc_25m", "sys2_pll_125m", "sys1_pll_800m", "sys3_pll_out",
 					     "sys1_pll_40m", "audio_pll2_out", "clk_ext1", "clk_ext3", };
 
 static const char * const imx8mq_disp_rtrm_sels[] = {"osc_25m", "sys1_pll_800m", "sys2_pll_200m", "sys1_pll_400m",
 					      "audio_pll1_out", "video_pll1_out", "clk_ext2", "clk_ext3", };
 
 static const char * const imx8mq_usb_bus_sels[] = {"osc_25m", "sys2_pll_500m", "sys1_pll_800m", "sys2_pll_100m",
 					    "sys2_pll_200m", "clk_ext2", "clk_ext4", "audio_pll2_out", };
 
-static const char * const imx8mq_gpu_axi_sels[] = {"osc_25m", "sys1_pll_800m", "gpu_pll_out", "sys3_pll2_out", "sys2_pll_1000m",
+static const char * const imx8mq_gpu_axi_sels[] = {"osc_25m", "sys1_pll_800m", "gpu_pll_out", "sys3_pll_out", "sys2_pll_1000m",
 					    "audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
-static const char * const imx8mq_gpu_ahb_sels[] = {"osc_25m", "sys1_pll_800m", "gpu_pll_out", "sys3_pll2_out", "sys2_pll_1000m",
+static const char * const imx8mq_gpu_ahb_sels[] = {"osc_25m", "sys1_pll_800m", "gpu_pll_out", "sys3_pll_out", "sys2_pll_1000m",
 					    "audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
-static const char * const imx8mq_noc_sels[] = {"osc_25m", "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_1000m", "sys2_pll_500m",
+static const char * const imx8mq_noc_sels[] = {"osc_25m", "sys1_pll_800m", "sys3_pll_out", "sys2_pll_1000m", "sys2_pll_500m",
 					"audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
-static const char * const imx8mq_noc_apb_sels[] = {"osc_25m", "sys1_pll_400m", "sys3_pll2_out", "sys2_pll_333m", "sys2_pll_200m",
+static const char * const imx8mq_noc_apb_sels[] = {"osc_25m", "sys1_pll_400m", "sys3_pll_out", "sys2_pll_333m", "sys2_pll_200m",
 					    "sys1_pll_800m", "audio_pll1_out", "video_pll1_out", };
 
 static const char * const imx8mq_ahb_sels[] = {"osc_25m", "sys1_pll_133m", "sys1_pll_800m", "sys1_pll_400m",
-					"sys2_pll_125m", "sys3_pll2_out", "audio_pll1_out", "video_pll1_out", };
+					"sys2_pll_125m", "sys3_pll_out", "audio_pll1_out", "video_pll1_out", };
 
 static const char * const imx8mq_audio_ahb_sels[] = {"osc_25m", "sys2_pll_500m", "sys1_pll_800m", "sys2_pll_1000m",
-						  "sys2_pll_166m", "sys3_pll2_out", "audio_pll1_out", "video_pll1_out", };
+						  "sys2_pll_166m", "sys3_pll_out", "audio_pll1_out", "video_pll1_out", };
 
 static const char * const imx8mq_dsi_ahb_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_800m",
-						"sys2_pll_1000m", "sys3_pll2_out", "clk_ext3", "audio_pll2_out"};
+						"sys2_pll_1000m", "sys3_pll_out", "clk_ext3", "audio_pll2_out"};
 
 static const char * const imx8mq_dram_alt_sels[] = {"osc_25m", "sys1_pll_800m", "sys1_pll_100m", "sys2_pll_500m",
 						"sys2_pll_250m", "sys1_pll_400m", "audio_pll1_out", "sys1_pll_266m", };
 
 static const char * const imx8mq_dram_apb_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
-						"sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
+						"sys1_pll_800m", "sys3_pll_out", "sys2_pll_250m", "audio_pll2_out", };
 
-static const char * const imx8mq_vpu_g1_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_100m", "sys2_pll_125m", "sys3_pll2_out", "audio_pll1_out", };
+static const char * const imx8mq_vpu_g1_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_100m", "sys2_pll_125m", "sys3_pll_out", "audio_pll1_out", };
 
-static const char * const imx8mq_vpu_g2_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_100m", "sys2_pll_125m", "sys3_pll2_out", "audio_pll1_out", };
+static const char * const imx8mq_vpu_g2_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_100m", "sys2_pll_125m", "sys3_pll_out", "audio_pll1_out", };
 
-static const char * const imx8mq_disp_dtrc_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_160m", "sys2_pll_100m", "sys3_pll2_out", "audio_pll2_out", };
+static const char * const imx8mq_disp_dtrc_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_160m", "sys2_pll_100m", "sys3_pll_out", "audio_pll2_out", };
 
-static const char * const imx8mq_disp_dc8000_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_160m", "sys2_pll_100m", "sys3_pll2_out", "audio_pll2_out", };
+static const char * const imx8mq_disp_dc8000_sels[] = {"osc_25m", "vpu_pll_out", "sys1_pll_800m", "sys2_pll_1000m", "sys1_pll_160m", "sys2_pll_100m", "sys3_pll_out", "audio_pll2_out", };
 
 static const char * const imx8mq_pcie1_ctrl_sels[] = {"osc_25m", "sys2_pll_250m", "sys2_pll_200m", "sys1_pll_266m",
-					       "sys1_pll_800m", "sys2_pll_500m", "sys2_pll_250m", "sys3_pll2_out", };
+					       "sys1_pll_800m", "sys2_pll_500m", "sys2_pll_250m", "sys3_pll_out", };
 
 static const char * const imx8mq_pcie1_phy_sels[] = {"osc_25m", "sys2_pll_100m", "sys2_pll_500m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4", };
 
-static const char * const imx8mq_pcie1_aux_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_500m", "sys3_pll2_out",
+static const char * const imx8mq_pcie1_aux_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_500m", "sys3_pll_out",
 					      "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_160m", "sys1_pll_200m", };
 
-static const char * const imx8mq_dc_pixel_sels[] = {"osc_25m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out", "sys1_pll_800m", "sys2_pll_1000m", "sys3_pll2_out", "clk_ext4", };
+static const char * const imx8mq_dc_pixel_sels[] = {"osc_25m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out", "sys1_pll_800m", "sys2_pll_1000m", "sys3_pll_out", "clk_ext4", };
 
-static const char * const imx8mq_lcdif_pixel_sels[] = {"osc_25m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out", "sys1_pll_800m", "sys2_pll_1000m", "sys3_pll2_out", "clk_ext4", };
+static const char * const imx8mq_lcdif_pixel_sels[] = {"osc_25m", "video_pll1_out", "audio_pll2_out", "audio_pll1_out", "sys1_pll_800m", "sys2_pll_1000m", "sys3_pll_out", "clk_ext4", };
 
 static const char * const imx8mq_sai1_sels[] = {"osc_25m", "audio_pll1_out", "audio_pll2_out", "video_pll1_out", "sys1_pll_133m", "osc_27m", "clk_ext1", "clk_ext2", };
 
 static const char * const imx8mq_sai2_sels[] = {"osc_25m", "audio_pll1_out", "audio_pll2_out", "video_pll1_out", "sys1_pll_133m", "osc_27m", "clk_ext2", "clk_ext3", };
 
@@ -149,44 +149,44 @@ static const char * const imx8mq_enet_timer_sels[] = {"osc_25m", "sys2_pll_100m"
 
 static const char * const imx8mq_enet_phy_sels[] = {"osc_25m", "sys2_pll_50m", "sys2_pll_125m", "sys2_pll_500m",
 					     "audio_pll1_out", "video_pll1_out", "audio_pll2_out", };
 
 static const char * const imx8mq_nand_sels[] = {"osc_25m", "sys2_pll_500m", "audio_pll1_out", "sys1_pll_400m",
-					 "audio_pll2_out", "sys3_pll2_out", "sys2_pll_250m", "video_pll1_out", };
+					 "audio_pll2_out", "sys3_pll_out", "sys2_pll_250m", "video_pll1_out", };
 
 static const char * const imx8mq_qspi_sels[] = {"osc_25m", "sys1_pll_400m", "sys1_pll_800m", "sys2_pll_500m",
-					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll2_out", "sys1_pll_100m", };
+					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll_out", "sys1_pll_100m", };
 
 static const char * const imx8mq_usdhc1_sels[] = {"osc_25m", "sys1_pll_400m", "sys1_pll_800m", "sys2_pll_500m",
-					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll2_out", "sys1_pll_100m", };
+					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll_out", "sys1_pll_100m", };
 
 static const char * const imx8mq_usdhc2_sels[] = {"osc_25m", "sys1_pll_400m", "sys1_pll_800m", "sys2_pll_500m",
-					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll2_out", "sys1_pll_100m", };
+					 "audio_pll2_out", "sys1_pll_266m", "sys3_pll_out", "sys1_pll_100m", };
 
-static const char * const imx8mq_i2c1_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll2_out", "audio_pll1_out",
+static const char * const imx8mq_i2c1_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll_out", "audio_pll1_out",
 					 "video_pll1_out", "audio_pll2_out", "sys1_pll_133m", };
 
-static const char * const imx8mq_i2c2_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll2_out", "audio_pll1_out",
+static const char * const imx8mq_i2c2_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll_out", "audio_pll1_out",
 					 "video_pll1_out", "audio_pll2_out", "sys1_pll_133m", };
 
-static const char * const imx8mq_i2c3_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll2_out", "audio_pll1_out",
+static const char * const imx8mq_i2c3_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll_out", "audio_pll1_out",
 					 "video_pll1_out", "audio_pll2_out", "sys1_pll_133m", };
 
-static const char * const imx8mq_i2c4_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll2_out", "audio_pll1_out",
+static const char * const imx8mq_i2c4_sels[] = {"osc_25m", "sys1_pll_160m", "sys2_pll_50m", "sys3_pll_out", "audio_pll1_out",
 					 "video_pll1_out", "audio_pll2_out", "sys1_pll_133m", };
 
 static const char * const imx8mq_uart1_sels[] = {"osc_25m", "sys1_pll_80m", "sys2_pll_200m", "sys2_pll_100m",
-					  "sys3_pll2_out", "clk_ext2", "clk_ext4", "audio_pll2_out", };
+					  "sys3_pll_out", "clk_ext2", "clk_ext4", "audio_pll2_out", };
 
 static const char * const imx8mq_uart2_sels[] = {"osc_25m", "sys1_pll_80m", "sys2_pll_200m", "sys2_pll_100m",
-					  "sys3_pll2_out", "clk_ext2", "clk_ext3", "audio_pll2_out", };
+					  "sys3_pll_out", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_uart3_sels[] = {"osc_25m", "sys1_pll_80m", "sys2_pll_200m", "sys2_pll_100m",
-					  "sys3_pll2_out", "clk_ext2", "clk_ext4", "audio_pll2_out", };
+					  "sys3_pll_out", "clk_ext2", "clk_ext4", "audio_pll2_out", };
 
 static const char * const imx8mq_uart4_sels[] = {"osc_25m", "sys1_pll_80m", "sys2_pll_200m", "sys2_pll_100m",
-					  "sys3_pll2_out", "clk_ext2", "clk_ext3", "audio_pll2_out", };
+					  "sys3_pll_out", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_usb_core_sels[] = {"osc_25m", "sys1_pll_100m", "sys1_pll_40m", "sys2_pll_100m",
 					     "sys2_pll_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_usb_phy_sels[] = {"osc_25m", "sys1_pll_100m", "sys1_pll_40m", "sys2_pll_100m",
@@ -194,83 +194,83 @@ static const char * const imx8mq_usb_phy_sels[] = {"osc_25m", "sys1_pll_100m", "
 
 static const char * const imx8mq_gic_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys2_pll_100m",
 					       "sys2_pll_200m", "clk_ext2", "clk_ext3", "audio_pll2_out" };
 
 static const char * const imx8mq_ecspi1_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
-					   "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
+					   "sys1_pll_800m", "sys3_pll_out", "sys2_pll_250m", "audio_pll2_out", };
 
 static const char * const imx8mq_ecspi2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
-					   "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
+					   "sys1_pll_800m", "sys3_pll_out", "sys2_pll_250m", "audio_pll2_out", };
 
 static const char * const imx8mq_pwm1_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_160m", "sys1_pll_40m",
-					 "sys3_pll2_out", "clk_ext1", "sys1_pll_80m", "video_pll1_out", };
+					 "sys3_pll_out", "clk_ext1", "sys1_pll_80m", "video_pll1_out", };
 
 static const char * const imx8mq_pwm2_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_160m", "sys1_pll_40m",
-					 "sys3_pll2_out", "clk_ext1", "sys1_pll_80m", "video_pll1_out", };
+					 "sys3_pll_out", "clk_ext1", "sys1_pll_80m", "video_pll1_out", };
 
 static const char * const imx8mq_pwm3_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_160m", "sys1_pll_40m",
-					 "sys3_pll2_out", "clk_ext2", "sys1_pll_80m", "video_pll1_out", };
+					 "sys3_pll_out", "clk_ext2", "sys1_pll_80m", "video_pll1_out", };
 
 static const char * const imx8mq_pwm4_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_160m", "sys1_pll_40m",
-					 "sys3_pll2_out", "clk_ext2", "sys1_pll_80m", "video_pll1_out", };
+					 "sys3_pll_out", "clk_ext2", "sys1_pll_80m", "video_pll1_out", };
 
 static const char * const imx8mq_gpt1_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_400m", "sys1_pll_40m",
 					 "sys1_pll_80m", "audio_pll1_out", "clk_ext1", };
 
 static const char * const imx8mq_wdog_sels[] = {"osc_25m", "sys1_pll_133m", "sys1_pll_160m", "vpu_pll_out",
-					 "sys2_pll_125m", "sys3_pll2_out", "sys1_pll_80m", "sys2_pll_166m", };
+					 "sys2_pll_125m", "sys3_pll_out", "sys1_pll_80m", "sys2_pll_166m", };
 
-static const char * const imx8mq_wrclk_sels[] = {"osc_25m", "sys1_pll_40m", "vpu_pll_out", "sys3_pll2_out", "sys2_pll_200m",
+static const char * const imx8mq_wrclk_sels[] = {"osc_25m", "sys1_pll_40m", "vpu_pll_out", "sys3_pll_out", "sys2_pll_200m",
 					  "sys1_pll_266m", "sys2_pll_500m", "sys1_pll_100m", };
 
 static const char * const imx8mq_dsi_core_sels[] = {"osc_25m", "sys1_pll_266m", "sys2_pll_250m", "sys1_pll_800m",
-					     "sys2_pll_1000m", "sys3_pll2_out", "audio_pll2_out", "video_pll1_out", };
+					     "sys2_pll_1000m", "sys3_pll_out", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_dsi_phy_sels[] = {"osc_25m", "sys2_pll_125m", "sys2_pll_100m", "sys1_pll_800m",
 					    "sys2_pll_1000m", "clk_ext2", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_dsi_dbi_sels[] = {"osc_25m", "sys1_pll_266m", "sys2_pll_100m", "sys1_pll_800m",
-					    "sys2_pll_1000m", "sys3_pll2_out", "audio_pll2_out", "video_pll1_out", };
+					    "sys2_pll_1000m", "sys3_pll_out", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_dsi_esc_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_800m",
-					    "sys2_pll_1000m", "sys3_pll2_out", "clk_ext3", "audio_pll2_out", };
+					    "sys2_pll_1000m", "sys3_pll_out", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_csi1_core_sels[] = {"osc_25m", "sys1_pll_266m", "sys2_pll_250m", "sys1_pll_800m",
-					      "sys2_pll_1000m", "sys3_pll2_out", "audio_pll2_out", "video_pll1_out", };
+					      "sys2_pll_1000m", "sys3_pll_out", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_csi1_phy_sels[] = {"osc_25m", "sys2_pll_125m", "sys2_pll_100m", "sys1_pll_800m",
 					     "sys2_pll_1000m", "clk_ext2", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_csi1_esc_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_800m",
-					     "sys2_pll_1000m", "sys3_pll2_out", "clk_ext3", "audio_pll2_out", };
+					     "sys2_pll_1000m", "sys3_pll_out", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_csi2_core_sels[] = {"osc_25m", "sys1_pll_266m", "sys2_pll_250m", "sys1_pll_800m",
-					      "sys2_pll_1000m", "sys3_pll2_out", "audio_pll2_out", "video_pll1_out", };
+					      "sys2_pll_1000m", "sys3_pll_out", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_csi2_phy_sels[] = {"osc_25m", "sys2_pll_125m", "sys2_pll_100m", "sys1_pll_800m",
 					     "sys2_pll_1000m", "clk_ext2", "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mq_csi2_esc_sels[] = {"osc_25m", "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_800m",
-					     "sys2_pll_1000m", "sys3_pll2_out", "clk_ext3", "audio_pll2_out", };
+					     "sys2_pll_1000m", "sys3_pll_out", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_pcie2_ctrl_sels[] = {"osc_25m", "sys2_pll_250m", "sys2_pll_200m", "sys1_pll_266m",
-					       "sys1_pll_800m", "sys2_pll_500m", "sys2_pll_333m", "sys3_pll2_out", };
+					       "sys1_pll_800m", "sys2_pll_500m", "sys2_pll_333m", "sys3_pll_out", };
 
 static const char * const imx8mq_pcie2_phy_sels[] = {"osc_25m", "sys2_pll_100m", "sys2_pll_500m", "clk_ext1",
 					      "clk_ext2", "clk_ext3", "clk_ext4", "sys1_pll_400m", };
 
-static const char * const imx8mq_pcie2_aux_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_50m", "sys3_pll2_out",
+static const char * const imx8mq_pcie2_aux_sels[] = {"osc_25m", "sys2_pll_200m", "sys2_pll_50m", "sys3_pll_out",
 					      "sys2_pll_100m", "sys1_pll_80m", "sys1_pll_160m", "sys1_pll_200m", };
 
 static const char * const imx8mq_ecspi3_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
-					   "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
+					   "sys1_pll_800m", "sys3_pll_out", "sys2_pll_250m", "audio_pll2_out", };
 static const char * const imx8mq_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", };
 
 static const char * const imx8mq_clko1_sels[] = {"osc_25m", "sys1_pll_800m", "osc_27m", "sys1_pll_200m",
 					  "audio_pll2_out", "sys2_pll_500m", "vpu_pll_out", "sys1_pll_80m", };
 static const char * const imx8mq_clko2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_400m", "sys2_pll_166m",
-					  "sys3_pll2_out", "audio_pll1_out", "video_pll1_out", "ckil", };
+					  "sys3_pll_out", "audio_pll1_out", "video_pll1_out", "ckil", };
 
 static struct clk_onecell_data clk_data;
 
 static struct clk ** const uart_clks[] = {
 	&clks[IMX8MQ_CLK_UART1_ROOT],
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
