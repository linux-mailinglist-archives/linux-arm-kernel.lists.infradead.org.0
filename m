Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445426D0D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 17:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d4HVhsMdBTUY39ukZVZo4EQ6F0+bTPekeBOb8DeVKBw=; b=XotnvzO6/p26Vs/mhsvQ4OgRKx
	TxIqB8tVSeYuyxb8bKqAHvLQegvDetcoHqiHivoJu8lec0AFFs0qyfmpjMFAeNqcnujRs86XsqLeu
	dvSuYQOxKEzPNLIu5Fk2wPMv4ChSSw4/Mj1R3owkDNLBdHoemd091UOlrOSPbr5ASqEYsMGfjAis6
	ij7x/357wBhmo6tXLpJtcdW5oeawrTxboQQgrW79afph5xaLSgVUCrCizRKTeHbe5jDfY9kQnoItb
	EBzQPX3miiV9yLVEP+Y5TyhyoGY7n+c69wrhWUd2abDVkXnpCaPHATbyN+PLk7/asY0P/PYHBzS7d
	chC2l4Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho876-0004W2-4P; Thu, 18 Jul 2019 15:14:32 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho86S-0004IL-7D
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 15:13:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 67AC21A02BB;
 Thu, 18 Jul 2019 17:13:50 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5AA0D1A0127;
 Thu, 18 Jul 2019 17:13:50 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 63D46205C7;
 Thu, 18 Jul 2019 17:13:49 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/3] clk: imx8: Add DSP related clocks
Date: Thu, 18 Jul 2019 18:13:44 +0300
Message-Id: <20190718151346.3523-2-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190718151346.3523-1-daniel.baluta@nxp.com>
References: <20190718151346.3523-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_081352_398620_AA645B22 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: mark.rutland@arm.com, aisheng.dong@nxp.com, peng.fan@nxp.com,
 anson.huang@nxp.com, devicetree@vger.kernel.org, daniel.baluta@nxp.com,
 s.hauer@pengutronix.de, Frank.Li@nxp.com, linux-kernel@vger.kernel.org,
 paul.olaru@nxp.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 shengjiu.wang@nxp.com, linux-arm-kernel@lists.infradead.org,
 sound-open-firmware@alsa-project.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8QXP contains Hifi4 DSP. There are four clocks
associated with DSP:
  * dsp_lpcg_core_clk
  * dsp_lpcg_ipg_clk
  * dsp_lpcg_adb_aclk
  * ocram_lpcg_ipg_clk

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c     | 5 +++++
 include/dt-bindings/clock/imx8-clock.h | 6 +++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index fb6edf1b8aa2..c0aff7ca6374 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -72,6 +72,11 @@ static const struct imx8qxp_lpcg_data imx8qxp_lpcg_adma[] = {
 	{ IMX_ADMA_LPCG_I2C2_CLK, "i2c2_lpcg_clk", "i2c2_clk", 0, ADMA_LPI2C_2_LPCG, 0, 0, },
 	{ IMX_ADMA_LPCG_I2C3_IPG_CLK, "i2c3_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_LPI2C_3_LPCG, 16, 0, },
 	{ IMX_ADMA_LPCG_I2C3_CLK, "i2c3_lpcg_clk", "i2c3_clk", 0, ADMA_LPI2C_3_LPCG, 0, 0, },
+
+	{ IMX_ADMA_LPCG_DSP_CORE_CLK, "dsp_lpcg_core_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 28, 0, },
+	{ IMX_ADMA_LPCG_DSP_IPG_CLK, "dsp_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 20, 0, },
+	{ IMX_ADMA_LPCG_DSP_ADB_CLK, "dsp_lpcg_adb_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 16, 0, },
+	{ IMX_ADMA_LPCG_OCRAM_IPG_CLK, "ocram_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_OCRAM_LPCG, 16, 0, },
 };
 
 static const struct imx8qxp_ss_lpcg imx8qxp_ss_adma = {
diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
index 4236818e3be5..673a8c662340 100644
--- a/include/dt-bindings/clock/imx8-clock.h
+++ b/include/dt-bindings/clock/imx8-clock.h
@@ -283,7 +283,11 @@
 #define IMX_ADMA_LPCG_PWM_IPG_CLK			38
 #define IMX_ADMA_LPCG_LCD_PIX_CLK			39
 #define IMX_ADMA_LPCG_LCD_APB_CLK			40
+#define IMX_ADMA_LPCG_DSP_ADB_CLK			41
+#define IMX_ADMA_LPCG_DSP_IPG_CLK			42
+#define IMX_ADMA_LPCG_DSP_CORE_CLK			43
+#define IMX_ADMA_LPCG_OCRAM_IPG_CLK			44
 
-#define IMX_ADMA_LPCG_CLK_END				41
+#define IMX_ADMA_LPCG_CLK_END				45
 
 #endif /* __DT_BINDINGS_CLOCK_IMX_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
