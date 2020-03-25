Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CFC192D0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G28ORiCh/zzmwXPGnG0zE8mfV03FF9d1+Ht1derdOu4=; b=mEOo/YbRzPq8Bl0KOVeSTqPchE
	BP9w5Fh7JJLbgZ9K5825q+F/tq8CUGBs0RLBR726gF/FH0VkwASmDz0cTobtXK92S1DEqchVU1awk
	Ptdpdh2pUl9fcCHALpAYXL3B0h5GVTxJ2fspt4gneoX8ARew/S93MHs1aKJYcN82mzzbgGj8djJU7
	J13k6/PgEoZwggUFpwYNwSM6gFaOy1Cz0eLaFZnWhVMdImw9qvEhkk2PNjFwDv13x1d5tuuTCJlH3
	MF5H9IUEmzoZclm633duXXGFwPthRyI8VhQ8f9YJCttXZnSM/55weHDOIkrPzbH4NGPy1IoGHp+hj
	Sc8pDvfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH89Z-00014j-2U; Wed, 25 Mar 2020 15:41:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH87r-00072W-Og
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:39:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DA4AE1A04EA;
 Wed, 25 Mar 2020 16:39:24 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CD1571A00F9;
 Wed, 25 Mar 2020 16:39:24 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 244D8203CE;
 Wed, 25 Mar 2020 16:39:24 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 02/13] Documentation: mfd: Add DT bindings for i.MX Audiomix
Date: Wed, 25 Mar 2020 17:38:40 +0200
Message-Id: <1585150731-3354-3-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_083927_940472_38FB71BD 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX Audiomix is a mix of clock gates, reset bits
and some other i.MX audio specific functionalities.
Add information for the MFD, its clock and reset controllers.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 .../devicetree/bindings/mfd/fsl,imx-audiomix.txt   | 34 ++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt

diff --git a/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt b/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt
new file mode 100644
index 00000000..1622818
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/fsl,imx-audiomix.txt
@@ -0,0 +1,34 @@
+Freescale i.MX Audiomix
+======================================
+
+Audiomix is a conglomerate of different functionalities.
+
+Required properties:
+- compatible: Should be "fsl,<chip>-mix" for the MFD device
+	Should be"fsl,<chip>-audiomix-clk" for the clock controller
+	Should be"fsl,<chip>-audiomix-reset" for the reset controller
+	Some functionalities of the audiomix will be registered as syscon.
+- reg: should be register base and length as documented in the
+  datasheet
+
+example:
+	audiomix: audiomix@30e20000 {
+		compatible = "fsl,imx8mp-mix";
+		reg = <0x30e20000 0x10000>;
+
+		audiomix_clk: clock-controller {
+			compatible = "fsl,imx8mp-audiomix-clk";
+			#clock-cells = <1>;
+			clocks = <&clk IMX8MP_CLK_AUDIO_ROOT>,
+				 <&clk IMX8MP_CLK_AUDIO_AHB>,
+				 <&clk IMX8MP_CLK_AUDIO_AXI_DIV>;
+			clock-names = "audio_root",
+				      "audio_ahb",
+				      "audio_axi_div";
+		};
+
+		audiomix_reset: reset-controller {
+			compatible = "fsl,imx8mp-audiomix-reset";
+			#reset-cells = <1>;
+		};
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
