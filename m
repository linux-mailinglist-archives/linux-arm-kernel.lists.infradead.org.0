Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFD591541
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 08:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DxExwnyNte35AUNXyTAel1e/vbbfCh9+AGyG5p5q+C4=; b=nlZcb4FfXfaDIf956WboAF65St
	+qFO6rNNrrh4L1r5CbZ8JM7s6HwehVdecItRU4jmPgZflOFTIwXX/Y7M9kq/xbMyR32RKMz1uODO2
	9j3Vehn73imrmyvVtfDYtHUrnPDlQW9nw+9jiyw4PEOyXABTmbDwf84wCP4SEQRpMVKDkdTBkiU/G
	ndqazjWEBMdRZNlG8dr9SnAAi7xJtgHnqg7Ibd7zfpt5ubtNO9bCf+keIki2Rm+hIsLUVHa4ok8XA
	xQlMQ8wdcbYXYIr7EZS1Ck5oPgfoRZyGwrTpf72mlAq92jLBIenOHXwvss7rDLeayIhHkqo408WRV
	DLUscE5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzF3c-00030H-33; Sun, 18 Aug 2019 06:52:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzF1x-0001kI-K0
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 06:51:11 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6A24F200138;
 Sun, 18 Aug 2019 08:51:08 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 83B97200003;
 Sun, 18 Aug 2019 08:51:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8823E4031D;
 Sun, 18 Aug 2019 14:50:50 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: [PATCH RESEND V2 5/7] clk: imx8mn: Add missing rate_count assignment
 for each PLL structure
Date: Sun, 18 Aug 2019 02:32:23 -0400
Message-Id: <1566109945-11149-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_235110_078419_6C6D893E 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add .rate_count assignment which is necessary for searching required
PLL rate from the each PLL table.

Fixes: 96d6392b54db ("clk: imx: Add support for i.MX8MN clock driver")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- split the patch into 2 patches, #1 fixed those missing .rate_count assignment,
	  #2 add missing frequency points.
---
 drivers/clk/imx/clk-imx8mn.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index ecd1062..b5a027c 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -67,36 +67,43 @@ static const struct imx_pll14xx_rate_table imx8mn_drampll_tbl[] = {
 static struct imx_pll14xx_clk imx8mn_audio_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mn_audiopll_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_audiopll_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_video_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mn_videopll_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_videopll_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_dram_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mn_drampll_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_drampll_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_arm_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mn_pll1416x_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_gpu_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mn_pll1416x_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_vpu_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mn_pll1416x_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
 };
 
 static struct imx_pll14xx_clk imx8mn_sys_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mn_pll1416x_tbl,
+		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
 };
 
 static const char * const pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
