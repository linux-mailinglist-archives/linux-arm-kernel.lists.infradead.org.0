Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90445E37D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 14:08:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8hwgOAK7GKykLheY6HKGUMXprD9lQjZcXszdG//9ZpU=; b=Y61
	Wf7pgDVi6k9S93uKv7RTp00syTVyl3Mvkz8KmnRGl2wVm6VpFto+V+lMrHKgQD8C7yrOPQL2pcfEb
	eHWABDyjt8BQNP7sKBSBM64798YwPO3fWq9YF1yiwcNSL90ikwrZ7vrE2W0cqvRjrB7u52XrRwW2z
	0XrBf0ObjSLjj16O7evStvlKDju1+whmf6MeQ18BBUtQkOJKMbPjFJfbUjItOR/69ufcG9yLM5syq
	LpJP0QB046OrnS7oNiQB5+xuxNkTTZz5H+xJppty1skuvjj2VRYMdpYrsFNZ+eFDInxGt7D8zAbxN
	sop1A6CCgJpmrqDjEs4AACDxa7QOiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hie44-0004W8-Ev; Wed, 03 Jul 2019 12:08:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hie3s-0004VY-J0
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 12:08:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 93E261A0006;
 Wed,  3 Jul 2019 14:08:30 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8647B1A036B;
 Wed,  3 Jul 2019 14:08:30 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F11F5205F0;
 Wed,  3 Jul 2019 14:08:29 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2] arm64: dts: imx8mm: Init rates and parents configs for
 clocks
Date: Wed,  3 Jul 2019 15:08:22 +0300
Message-Id: <1562155702-29809-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_050832_765947_DFF7688E 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the initial configuration for clocks that need default parent and rate
setting. This is based on the vendor tree clock provider parents and rates
configuration except this is doing the setup in dts rather than using clock
consumer API in a clock provider driver.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---

Changes since v1:
 - removed the PCIE, CSI and DISP clocks parent setting since
   that should be done from their driver.

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a741..ba2034d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -451,6 +451,17 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				assigned-clocks = <&clk IMX8MM_CLK_NOC>,
+						<&clk IMX8MM_CLK_AUDIO_AHB>,
+						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
+						<&clk IMX8MM_SYS_PLL3>,
+						<&clk IMX8MM_VIDEO_PLL1>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
+							 <&clk IMX8MM_SYS_PLL1_800M>;
+				assigned-clock-rates = <0>,
+							<400000000>,
+							<750000000>,
+							<594000000>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
