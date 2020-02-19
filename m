Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48555163CEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 07:10:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2OVDpMHNqG1NTvvJ0LgV2M/7va5rMc9WE5rLRoOYjpw=; b=o4p
	BLqqV3m1GC6Ioqi89ip5vrug4S7h8gnN0lTzF1y9TDA4rvHL9Wv8puK+KGM+vHlOXWldFqBnIRFvp
	CPkWXmZHPe2CRI4lDUG9igliBINcKoEpeUIoVo/R9ilM97ehk4GN6ZPUoaFKAmTsHsL24Kd9a1jzN
	9euhRrBrTeqzjZ/RVMoQtoEWR8aFKMsSBvdxbOhoeznvJhpT3H8TNv5In+vjwZLQ8/K2Y7U/8+f5T
	XVfrK9KmtUc/Mef5Y/djOUhFCfO2NMpAlnqwIP/amSbnTVex+ROzKDtFFF4s5u9NCP9uQ/aB//4oB
	zu8aa6O9Fa/DebsELi1Bc++h7BMCGgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4IYy-00068n-CJ; Wed, 19 Feb 2020 06:10:26 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4IYm-0005tz-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 06:10:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 202CA2032CA;
 Wed, 19 Feb 2020 07:10:08 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 97E6C201283;
 Wed, 19 Feb 2020 07:10:00 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 756AF402A0;
 Wed, 19 Feb 2020 14:09:51 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 robh+dt@kernel.org, mark.rutland@arm.com, abel.vesa@nxp.com,
 peng.fan@nxp.com, fugang.duan@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] clk: imx8mp: Rename the IMX8MP_CLK_HDMI_27M clock
Date: Wed, 19 Feb 2020 14:04:09 +0800
Message-Id: <1582092251-19222-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_221012_874434_4B69CDEC 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

On i.MX8MP, internal HDMI 27M clock is actually 24MHz, so rename
the IMX8MP_CLK_HDMI_27M to IMX8MP_CLK_HDMI_24M.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c             | 4 ++--
 include/dt-bindings/clock/imx8mp-clock.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 3adc8aa..a6313cf 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -342,7 +342,7 @@ static const char * const imx8mp_hdmi_fdcc_tst_sels[] = {"osc_24m", "sys_pll1_26
 							 "sys_pll1_800m", "sys_pll2_1000m", "sys_pll3_out",
 							 "audio_pll2_out", "video_pll1_out", };
 
-static const char * const imx8mp_hdmi_27m_sels[] = {"osc_24m", "sys_pll1_160m", "sys_pll2_50m",
+static const char * const imx8mp_hdmi_24m_sels[] = {"osc_24m", "sys_pll1_160m", "sys_pll2_50m",
 						    "sys_pll3_out", "audio_pll1_out", "video_pll1_out",
 						    "audio_pll2_out", "sys_pll1_133m", };
 
@@ -632,7 +632,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_IPP_DO_CLKO1] = imx8m_clk_hw_composite("ipp_do_clko1", imx8mp_ipp_do_clko1_sels, ccm_base + 0xba00);
 	hws[IMX8MP_CLK_IPP_DO_CLKO2] = imx8m_clk_hw_composite("ipp_do_clko2", imx8mp_ipp_do_clko2_sels, ccm_base + 0xba80);
 	hws[IMX8MP_CLK_HDMI_FDCC_TST] = imx8m_clk_hw_composite("hdmi_fdcc_tst", imx8mp_hdmi_fdcc_tst_sels, ccm_base + 0xbb00);
-	hws[IMX8MP_CLK_HDMI_27M] = imx8m_clk_hw_composite("hdmi_27m", imx8mp_hdmi_27m_sels, ccm_base + 0xbb80);
+	hws[IMX8MP_CLK_HDMI_24M] = imx8m_clk_hw_composite("hdmi_24m", imx8mp_hdmi_24m_sels, ccm_base + 0xbb80);
 	hws[IMX8MP_CLK_HDMI_REF_266M] = imx8m_clk_hw_composite("hdmi_ref_266m", imx8mp_hdmi_ref_266m_sels, ccm_base + 0xbc00);
 	hws[IMX8MP_CLK_USDHC3] = imx8m_clk_hw_composite("usdhc3", imx8mp_usdhc3_sels, ccm_base + 0xbc80);
 	hws[IMX8MP_CLK_MEDIA_CAM1_PIX] = imx8m_clk_hw_composite("media_cam1_pix", imx8mp_media_cam1_pix_sels, ccm_base + 0xbd00);
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 2fab631..00d4d22 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -173,7 +173,7 @@
 #define IMX8MP_CLK_IPP_DO_CLKO1			164
 #define IMX8MP_CLK_IPP_DO_CLKO2			165
 #define IMX8MP_CLK_HDMI_FDCC_TST		166
-#define IMX8MP_CLK_HDMI_27M			167
+#define IMX8MP_CLK_HDMI_24M			167
 #define IMX8MP_CLK_HDMI_REF_266M		168
 #define IMX8MP_CLK_USDHC3			169
 #define IMX8MP_CLK_MEDIA_CAM1_PIX		170
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
