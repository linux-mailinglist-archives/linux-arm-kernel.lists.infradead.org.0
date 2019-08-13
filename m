Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F86A8BF3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3F84gifEgE1Pam/GPGRFAOgUKH5514p2RebmwGGMt/U=; b=GZ2ek/Sw4ALiItvXChLlvzrmtT
	/d69gL+cRNyvp/+VjHEYXWJeS/TPGkUWeLNATQApaKH3X+PKm26gJkrvZ7x8c52wC5jjTaMmSz4ut
	lLr2NHi6eWG9fRxjr9K8EoJxE915TWsPCe6jNsxCz/sMWWLdoDBn/kBMG37FHtfBYdznarBMHPwHL
	Rm2e7mAMw03Ikpvr1kE2lFuKX0DH+LhXR481oWayOOrYD5yXysO48ZR01ALjefm+VFII+rT9rCJaa
	OrRUo1Juknb11W4DA8/JCPI9aLFU9wc6tDTuY5glBVzJNKvZVNTCbWexoAcqLZPwDyKLEHvK5fZNT
	yzLRGHNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaFc-0004LD-0V; Tue, 13 Aug 2019 17:06:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaEs-0003w7-4N
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:05:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DA97B2007B0;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CCC272000A4;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C3832060E;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/4] clk: imx8mn: Fix incorrect parents
Date: Tue, 13 Aug 2019 20:05:30 +0300
Message-Id: <d0dd4c7f60c430e9f5d3bdc6b51efa8837851e01.1565715590.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100538_444555_069FEDFD 
X-CRM114-Status: UNSURE (   7.17  )
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

* Replace to audio_pll2_clk with audio_pll2_out
* Replace sys3_pll2_out with sys_pll3_out
* Replace sys1_pll_40m with sys_pll1_40m
* qspi parent[2] is sys_pll2_333m not sys_pll1_800m

Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index ecd1062f6847..106cc417c19b 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -138,11 +138,11 @@ static const char * const imx8mn_nand_usdhc_sels[] = {"osc_24m", "sys_pll1_266m"
 static const char * const imx8mn_disp_axi_sels[] = {"osc_24m", "sys_pll2_1000m", "sys_pll1_800m",
 						    "sys_pll3_out", "sys_pll1_40m", "audio_pll2_out",
 						    "clk_ext1", "clk_ext4", };
 
 static const char * const imx8mn_disp_apb_sels[] = {"osc_24m", "sys_pll2_125m", "sys_pll1_800m",
-						    "sys_pll3_out", "sys1_pll_40m", "audio_pll2_out",
+						    "sys_pll3_out", "sys_pll1_40m", "audio_pll2_out",
 						    "clk_ext1", "clk_ext3", };
 
 static const char * const imx8mn_usb_bus_sels[] = {"osc_24m", "sys_pll2_500m", "sys_pll1_800m",
 						   "sys_pll2_100m", "sys_pll2_200m", "clk_ext2",
 						   "clk_ext4", "audio_pll2_out", };
@@ -217,13 +217,13 @@ static const char * const imx8mn_enet_phy_sels[] = {"osc_24m", "sys_pll2_50m", "
 
 static const char * const imx8mn_nand_sels[] = {"osc_24m", "sys_pll2_500m", "audio_pll1_out",
 						"sys_pll1_400m", "audio_pll2_out", "sys_pll3_out",
 						"sys_pll2_250m", "video_pll1_out", };
 
-static const char * const imx8mn_qspi_sels[] = {"osc_24m", "sys1_pll_400m", "sys_pll1_800m",
-						"sys2_pll_500m", "audio_pll2_out", "sys1_pll_266m",
-						"sys3_pll2_out", "sys1_pll_100m", };
+static const char * const imx8mn_qspi_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll2_333m",
+						"sys_pll2_500m", "audio_pll2_out", "sys_pll1_266m",
+						"sys_pll3_out", "sys_pll1_100m", };
 
 static const char * const imx8mn_usdhc1_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll1_800m",
 						  "sys_pll2_500m", "sys_pll3_out", "sys_pll1_266m",
 						  "audio_pll2_out", "sys_pll1_100m", };
 
@@ -286,11 +286,11 @@ static const char * const imx8mn_pwm1_sels[] = {"osc_24m", "sys_pll2_100m", "sys
 static const char * const imx8mn_pwm2_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_160m",
 						"sys_pll1_40m", "sys_pll3_out", "clk_ext1",
 						"sys_pll1_80m", "video_pll1_out", };
 
 static const char * const imx8mn_pwm3_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_160m",
-						"sys_pll1_40m", "sys3_pll2_out", "clk_ext2",
+						"sys_pll1_40m", "sys_pll3_out", "clk_ext2",
 						"sys_pll1_80m", "video_pll1_out", };
 
 static const char * const imx8mn_pwm4_sels[] = {"osc_24m", "sys_pll2_100m", "sys_pll1_160m",
 						"sys_pll1_40m", "sys_pll3_out", "clk_ext2",
 						"sys_pll1_80m", "video_pll1_out", };
@@ -315,11 +315,11 @@ static const char * const imx8mn_dsi_dbi_sels[] = {"osc_24m", "sys_pll1_266m", "
 						   "sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out",
 						   "audio_pll2_out", "video_pll1_out", };
 
 static const char * const imx8mn_usdhc3_sels[] = {"osc_24m", "sys_pll1_400m", "sys_pll1_800m",
 						  "sys_pll2_500m", "sys_pll3_out", "sys_pll1_266m",
-						  "audio_pll2_clk", "sys_pll1_100m", };
+						  "audio_pll2_out", "sys_pll1_100m", };
 
 static const char * const imx8mn_camera_pixel_sels[] = {"osc_24m", "sys_pll1_266m", "sys_pll2_250m",
 							"sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out",
 							"audio_pll2_out", "video_pll1_out", };
 
@@ -344,11 +344,11 @@ static const char * const imx8mn_pdm_sels[] = {"osc_24m", "sys_pll2_100m", "audi
 					       "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mn_dram_core_sels[] = {"dram_pll_out", "dram_alt_root", };
 
 static const char * const imx8mn_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m",
-						 "sys_pll1_200m", "audio_pll2_clk", "vpu_pll",
+						 "sys_pll1_200m", "audio_pll2_out", "vpu_pll",
 						 "sys_pll1_80m", };
 static const char * const imx8mn_clko2_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_400m",
 						 "sys_pll2_166m", "sys_pll3_out", "audio_pll1_out",
 						 "video_pll1_out", "osc_32k", };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
