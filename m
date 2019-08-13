Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7028BF3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PVFz6R28sszxaBf/iIa4Y6ettuhrFoRuNuDafppvvEg=; b=JcwEZFhXVwXstpOivUqkmR0Ynb
	DWzljm46OAS7fstkTuMhqQlymHhaWgx+pctwgZTH1Q34Zw6FQLeWTp4Yo71S39Y990P5GubGM5wN7
	JcDPuhU/PusO2LiNZ9v6+ubonTCcjN2VtA3nK8E+pYeAaUWWsl6QFX2HKAcVUITX0elGx9rz0+VVf
	tJ3cvYM1nnxtNiuZbk50p0yByxK1vlPwnX6DfWkScC4sa+oqL2NVKzM6QC1lrNSqNApar4qGtXvJG
	NpWYQc2hWdkIMw5S9LceNxWSSFXDAAtpWnFPWM0BIL8GAflXWyM3lgFWieRuoCYugq17zmQfDpqiv
	PaM+PRFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaF9-0003xT-2f; Tue, 13 Aug 2019 17:05:55 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaEr-0003vv-Ts
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:05:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A5BC1A07B2;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C7041A07B8;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B03A02060E;
 Tue, 13 Aug 2019 19:05:35 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/4] clk: imx8mm: Fix incorrect parents
Date: Tue, 13 Aug 2019 20:05:29 +0300
Message-Id: <921e55812ed074d663db7cbfb53f326ae38617f7.1565715590.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100538_235198_9D7AF38A 
X-CRM114-Status: UNSURE (   7.48  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* There is no video_pll2 on imx8mm, replace with dummy
* Replace reference to sys_pll3_clk with sys_pll3_out
* qspi parent[2] is sys_pll2_333m not sys_pll1_800m

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 69ec274d4974..2758e3f0d15d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -173,14 +173,14 @@ static const char *imx8mm_vpu_g1_sels[] = {"osc_24m", "vpu_pll_out", "sys_pll1_8
 					   "sys_pll1_100m", "sys_pll2_125m", "sys_pll3_out", "audio_pll1_out", };
 
 static const char *imx8mm_vpu_g2_sels[] = {"osc_24m", "vpu_pll_out", "sys_pll1_800m", "sys_pll2_1000m",
 					   "sys_pll1_100m", "sys_pll2_125m", "sys_pll3_out", "audio_pll1_out", };
 
-static const char *imx8mm_disp_dtrc_sels[] = {"osc_24m", "video_pll2_out", "sys_pll1_800m", "sys_pll2_1000m",
+static const char *imx8mm_disp_dtrc_sels[] = {"osc_24m", "dummy", "sys_pll1_800m", "sys_pll2_1000m",
 					      "sys_pll1_160m", "video_pll1_out", "sys_pll3_out", "audio_pll2_out", };
 
-static const char *imx8mm_disp_dc8000_sels[] = {"osc_24m", "video_pll2_out", "sys_pll1_800m", "sys_pll2_1000m",
+static const char *imx8mm_disp_dc8000_sels[] = {"osc_24m", "dummy", "sys_pll1_800m", "sys_pll2_1000m",
 						"sys_pll1_160m", "video_pll1_out", "sys_pll3_out", "audio_pll2_out", };
 
 static const char *imx8mm_pcie1_ctrl_sels[] = {"osc_24m", "sys_pll2_250m", "sys_pll2_200m", "sys_pll1_266m",
 					       "sys_pll1_800m", "sys_pll2_500m", "sys_pll2_333m", "sys_pll3_out", };
 
@@ -230,11 +230,11 @@ static const char *imx8mm_enet_phy_sels[] = {"osc_24m", "sys_pll2_50m", "sys_pll
 					     "sys_pll2_500m", "video_pll1_out", "audio_pll2_out", };
 
 static const char *imx8mm_nand_sels[] = {"osc_24m", "sys_pll2_500m", "audio_pll1_out", "sys_pll1_400m",
 					 "audio_pll2_out", "sys_pll3_out", "sys_pll2_250m", "video_pll1_out", };
 
-static const char *imx8mm_qspi_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll1_800m", "sys_pll2_500m",
+static const char *imx8mm_qspi_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll2_333m", "sys_pll2_500m",
 					 "audio_pll2_out", "sys_pll1_266m", "sys_pll3_out", "sys_pll1_100m", };
 
 static const char *imx8mm_usdhc1_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll1_800m", "sys_pll2_500m",
 					   "sys_pll3_out", "sys_pll1_266m", "audio_pll2_out", "sys_pll1_100m", };
 
@@ -345,11 +345,11 @@ static const char *imx8mm_ecspi3_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1
 
 static const char *imx8mm_pdm_sels[] = {"osc_24m", "sys_pll2_100m", "audio_pll1_out", "sys_pll1_800m",
 					"sys_pll2_1000m", "sys_pll3_out", "clk_ext3", "audio_pll2_out", };
 
 static const char *imx8mm_vpu_h1_sels[] = {"osc_24m", "vpu_pll_out", "sys_pll1_800m", "sys_pll2_1000m",
-					   "audio_pll2_out", "sys_pll2_125m", "sys_pll3_clk", "audio_pll1_out", };
+					   "audio_pll2_out", "sys_pll2_125m", "sys_pll3_out", "audio_pll1_out", };
 
 static const char *imx8mm_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", };
 
 static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m", "sys_pll1_200m", "audio_pll2_out",
 					 "vpu_pll", "sys_pll1_80m", };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
