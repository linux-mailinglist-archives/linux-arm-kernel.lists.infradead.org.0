Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FBD5504D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Sti7Du6NiSb4P5Qbo/9G5QfsdN7TSkE7P/ny3cc0Ky0=; b=iRx
	6j6WHjvGnh+xI+f0pcTD7B4BIor8lzSbKSdj2r5DDR2GVbgENk96lfcvPwORGxEvWWXllsxf5fiwI
	9dIU7UYdOqMa0/bOVruzUtNnXbOzN7m24iE7irSQvh68r/q9gUmp6uAQXAyQ/0ykNn3qUR9Aafwbx
	f9phIwKaMroRDu05z7GCY274KNZ57wquc4+kt3Jx+VsVGh7GyjFHWGiPSeYzumIicgCKy58Ge/TMW
	pat3/PfJBsPhvfnzG1p+UaexqOL9tpUr7uf8qjzl9ckXVjpEHYXWVGKEg0p+hT+b8DgW5Z5eIfseQ
	j9bMGiWv4DKFuNwqxxRoR0Kt2F0QXYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflTJ-0008JU-C4; Tue, 25 Jun 2019 13:26:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflT5-0008Hd-H4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:26:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 850BD200BEC;
 Tue, 25 Jun 2019 15:26:37 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7461C20077B;
 Tue, 25 Jun 2019 15:26:37 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E7B6B2061E;
 Tue, 25 Jun 2019 15:26:36 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Anson Huang <anson.huang@nxp.com>
Subject: [PATCH] arm64: dts: imx8mm: Init rates and parents configs for clocks
Date: Tue, 25 Jun 2019 16:26:31 +0300
Message-Id: <1561469191-26840-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062639_701239_A1EFE041 
X-CRM114-Status: UNSURE (   7.24  )
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
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
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 36 +++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 232a741..ab92108 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -451,6 +451,42 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				assigned-clocks = <&clk IMX8MM_CLK_AUDIO_AHB>,
+						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
+						<&clk IMX8MM_SYS_PLL3>,
+						<&clk IMX8MM_VIDEO_PLL1>,
+						<&clk IMX8MM_CLK_NOC>,
+						<&clk IMX8MM_CLK_PCIE1_CTRL>,
+						<&clk IMX8MM_CLK_PCIE1_PHY>,
+						<&clk IMX8MM_CLK_CSI1_CORE>,
+						<&clk IMX8MM_CLK_CSI1_PHY_REF>,
+						<&clk IMX8MM_CLK_CSI1_ESC>,
+						<&clk IMX8MM_CLK_DISP_AXI>,
+						<&clk IMX8MM_CLK_DISP_APB>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
+						<0>,
+						<0>,
+						<0>,
+						<&clk IMX8MM_SYS_PLL3_OUT>,
+						<&clk IMX8MM_SYS_PLL2_250M>,
+						<&clk IMX8MM_SYS_PLL2_100M>,
+						<&clk IMX8MM_SYS_PLL2_1000M>,
+						<&clk IMX8MM_SYS_PLL2_1000M>,
+						<&clk IMX8MM_SYS_PLL1_800M>,
+						<&clk IMX8MM_SYS_PLL2_1000M>,
+						<&clk IMX8MM_SYS_PLL1_800M>;
+				assigned-clock-rates = <400000000>,
+							<400000000>,
+							<750000000>,
+							<594000000>,
+							<0>,
+							<0>,
+							<0>,
+							<0>,
+							<0>,
+							<0>,
+							<500000000>,
+							<200000000>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
