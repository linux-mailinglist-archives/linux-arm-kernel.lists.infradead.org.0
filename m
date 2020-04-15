Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D984D1A9587
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5noq+PfagMvDCGV+iK+DIxQuXYSh+eSsQjhaqmROIQ=; b=UQjLWvME/iK0jo9L9m93MxjYtB
	mXxypuadsbGpW099klf5bZna6KH6soJOG6xpU+kJU4Ljqle/6f8so3sDRJej+xEO1Iu828xh6jdPA
	6gbHnoKBLyzC6WpNq00Ndy7+t4Fa5VzgzA10tOinuZ401G6e5iKXu9vwrSWwvVSj2cO/dFFkMLWRT
	1I+z0/dFKkd1gRyvD3unO88UAFw6C0aOmvm8jcPL4jz3aaOScwIqsIQVQWcaiJfLTXaoU0M9eLTWT
	q/Z4fHLFJY/WLiwY38Au4FR8bpBY+IT8Ci4cnJPjaNZWdIwXknXnIAOzUQFX1a6lwIt4CIPzEjH0X
	bDKU1Xng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd2z-0000Po-9C; Wed, 15 Apr 2020 08:05:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0p-0006NL-Sp
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B19CB1A07A3;
 Wed, 15 Apr 2020 10:03:10 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9920F1A0796;
 Wed, 15 Apr 2020 10:03:10 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 0AD9420506;
 Wed, 15 Apr 2020 10:03:10 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 08/13] dt-bindings: clocks: imx8mp: Add ids for audiomix
 clocks
Date: Wed, 15 Apr 2020 11:02:48 +0300
Message-Id: <1586937773-5836-9-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010312_207790_0890E382 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add all the clock ids for the audiomix clocks.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 include/dt-bindings/clock/imx8mp-clock.h | 62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 47ab082..305433f 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -298,4 +298,66 @@
 
 #define IMX8MP_CLK_END				289
 
+#define IMX8MP_CLK_AUDIOMIX_SAI1_IPG		0
+#define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1		1
+#define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2		2
+#define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK3		3
+#define IMX8MP_CLK_AUDIOMIX_SAI2_IPG		4
+#define IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1		5
+#define IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2		6
+#define IMX8MP_CLK_AUDIOMIX_SAI2_MCLK3		7
+#define IMX8MP_CLK_AUDIOMIX_SAI3_IPG		8
+#define IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1		9
+#define IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2		10
+#define IMX8MP_CLK_AUDIOMIX_SAI3_MCLK3		11
+#define IMX8MP_CLK_AUDIOMIX_SAI5_IPG		12
+#define IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1		13
+#define IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2		14
+#define IMX8MP_CLK_AUDIOMIX_SAI5_MCLK3		15
+#define IMX8MP_CLK_AUDIOMIX_SAI6_IPG		16
+#define IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1		17
+#define IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2		18
+#define IMX8MP_CLK_AUDIOMIX_SAI6_MCLK3		19
+#define IMX8MP_CLK_AUDIOMIX_SAI7_IPG		20
+#define IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1		21
+#define IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2		22
+#define IMX8MP_CLK_AUDIOMIX_SAI7_MCLK3		23
+#define IMX8MP_CLK_AUDIOMIX_ASRC_IPG		24
+#define IMX8MP_CLK_AUDIOMIX_PDM_IPG		25
+#define IMX8MP_CLK_AUDIOMIX_SDMA2_ROOT		26
+#define IMX8MP_CLK_AUDIOMIX_SDMA3_ROOT		27
+#define IMX8MP_CLK_AUDIOMIX_SPBA2_ROOT		28
+#define IMX8MP_CLK_AUDIOMIX_DSP_ROOT		29
+#define IMX8MP_CLK_AUDIOMIX_DSPDBG_ROOT		30
+#define IMX8MP_CLK_AUDIOMIX_EARC_IPG		31
+#define IMX8MP_CLK_AUDIOMIX_OCRAMA_IPG		32
+#define IMX8MP_CLK_AUDIOMIX_AUD2HTX_IPG		33
+#define IMX8MP_CLK_AUDIOMIX_EDMA_ROOT		34
+#define IMX8MP_CLK_AUDIOMIX_AUDPLL_ROOT		35
+#define IMX8MP_CLK_AUDIOMIX_MU2_ROOT		36
+#define IMX8MP_CLK_AUDIOMIX_MU3_ROOT		37
+#define IMX8MP_CLK_AUDIOMIX_EARC_PHY		38
+#define IMX8MP_CLK_AUDIOMIX_PDM_ROOT		39
+#define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1_SEL	40
+#define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK2_SEL	41
+#define IMX8MP_CLK_AUDIOMIX_SAI2_MCLK1_SEL	42
+#define IMX8MP_CLK_AUDIOMIX_SAI2_MCLK2_SEL	43
+#define IMX8MP_CLK_AUDIOMIX_SAI3_MCLK1_SEL	44
+#define IMX8MP_CLK_AUDIOMIX_SAI3_MCLK2_SEL	45
+#define IMX8MP_CLK_AUDIOMIX_SAI4_MCLK1_SEL	46
+#define IMX8MP_CLK_AUDIOMIX_SAI4_MCLK2_SEL	47
+#define IMX8MP_CLK_AUDIOMIX_SAI5_MCLK1_SEL	48
+#define IMX8MP_CLK_AUDIOMIX_SAI5_MCLK2_SEL	49
+#define IMX8MP_CLK_AUDIOMIX_SAI6_MCLK1_SEL	50
+#define IMX8MP_CLK_AUDIOMIX_SAI6_MCLK2_SEL	51
+#define IMX8MP_CLK_AUDIOMIX_SAI7_MCLK1_SEL	52
+#define IMX8MP_CLK_AUDIOMIX_SAI7_MCLK2_SEL	53
+#define IMX8MP_CLK_AUDIOMIX_PDM_SEL		54
+#define IMX8MP_CLK_AUDIOMIX_SAI_PLL_REF_SEL	55
+#define IMX8MP_CLK_AUDIOMIX_SAI_PLL		56
+#define IMX8MP_CLK_AUDIOMIX_SAI_PLL_BYPASS	57
+#define IMX8MP_CLK_AUDIOMIX_SAI_PLL_OUT		58
+
+#define IMX8MP_CLK_AUDIOMIX_END			59
+
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
