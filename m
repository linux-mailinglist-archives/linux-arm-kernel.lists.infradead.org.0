Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4111608E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sxsBOufBGAO/Z1a9Vrp1l7kCsDTJXMu239qJrJGxSrw=; b=OerdEEXFtrgsneY9mTxCTJw6/y
	cUHCBhIfWSlt8TkYc1vmS0lvDbilQ1mLx873XcfKzzpdzL7R0W1bUc217uk/TnkrTog6Yn+dOMRwI
	4xDbzNdNJjGVXLIlUQPOLXvJpXYWBf4PO/hv2r0Si3C5lLLgkZlMfcsXKcrwFQNIVG92Nyup2itzX
	ao5qpwmc56eptE0vnErHRNp+r0XaMwfJXJ9Ju+g0a51DlP1fRv0wqdOQHn6EzcustqjomGnyANcg5
	3blk9UrdwXkO0aokLdH3rLU9SHxVJ3BbilLkNxOc2twdsFmlVeBaEnrfF7/GrkfN+pd7Nd9uOdKzU
	dDwN1pRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X4m-0000Oq-Rd; Mon, 17 Feb 2020 03:28:04 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3U-0007Yu-M9
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6EE18200EBF;
 Mon, 17 Feb 2020 04:26:43 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A8ACB201E35;
 Mon, 17 Feb 2020 04:26:33 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F2F7F402E1;
 Mon, 17 Feb 2020 11:26:21 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 6/7] clk: imx: imx8qxp: add LPCG clock for FlexCAN in ADMA SS
Date: Mon, 17 Feb 2020 11:19:20 +0800
Message-Id: <1581909561-12058-7-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192644_888174_2B5AACA8 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add LPCG clock for FlexCAN in ADMA SS.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index 795909ecfba6..07aba029c3ba 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -72,6 +72,9 @@ static const struct imx8qxp_lpcg_data imx8qxp_lpcg_adma[] = {
 	{ IMX_ADMA_LPCG_I2C2_CLK, "i2c2_lpcg_clk", "i2c2_clk", 0, ADMA_LPI2C_2_LPCG, 0, 0, },
 	{ IMX_ADMA_LPCG_I2C3_IPG_CLK, "i2c3_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_LPI2C_3_LPCG, 16, 0, },
 	{ IMX_ADMA_LPCG_I2C3_CLK, "i2c3_lpcg_clk", "i2c3_clk", 0, ADMA_LPI2C_3_LPCG, 0, 0, },
+	{ IMX_ADMA_LPCG_CAN0_IPG_PE_CLK, "can0_lpcg_pe_clk", "can0_clk", 0, ADMA_FLEXCAN_0_LPCG, 0, 0, },
+	{ IMX_ADMA_LPCG_CAN0_IPG_CLK, "can0_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_FLEXCAN_0_LPCG, 16, 0, },
+	{ IMX_ADMA_LPCG_CAN0_IPG_CHI_CLK, "can0_lpcg_chi_clk", "dma_ipg_clk_root", 0, ADMA_FLEXCAN_0_LPCG, 20, 0, },
 
 	{ IMX_ADMA_LPCG_DSP_CORE_CLK, "dsp_lpcg_core_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 28, 0, },
 	{ IMX_ADMA_LPCG_DSP_IPG_CLK, "dsp_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 20, 0, },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
