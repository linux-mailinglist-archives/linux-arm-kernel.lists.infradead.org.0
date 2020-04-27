Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1E91BA751
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QxEl6hERkaGaX6BVTk7c0maEwzsWqnughcBa3iFVPFk=; b=oDJ
	EwJ5IL9zXwxkvekuuaT0yJ7ctPDTywddkF/mCVVImCKvi2FPxKWyDjwejp5WYIVs+LVXeZi/S4n9D
	h1s+mgIvOLVWyz5oCjnGVzMaW9ysoweZq2RLmwfQ2BrtXyB/iX8qVJ4EflGkC1+n/eqYkVtTNloDY
	WFQG0a/XikX78065/A2SRfCqywwYa59s2bcMBtqEdpl6Z8Sj8r4TWs1JMK0df15MlvKeuxUiY5Qcd
	hAUtQNPsxGvWGC0mCneNypYR5Afwdf++iLTFPPEiLGvcSvZiX/5s3Tz7tD3LdYmqgb7Ka7bzGCEtM
	wp0D66QPkJMH7iznzOtJ+xW0k1RNLEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5N0-0003Aa-2A; Mon, 27 Apr 2020 15:08:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5Mc-00032W-Sr
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:08:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C3D11A11C2;
 Mon, 27 Apr 2020 17:08:05 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F1BA1A11AF;
 Mon, 27 Apr 2020 17:08:05 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id BD6382030E;
 Mon, 27 Apr 2020 17:08:04 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: freescale: Add the power domain node on imx8mp
Date: Mon, 27 Apr 2020 18:07:55 +0300
Message-Id: <1588000075-4039-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_080807_353924_F9CEF36D 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jacky Bai <ping.bai@nxp.com>

Add the power domain nodes on i.MX8MP to enable the power domain
support.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 173 ++++++++++++++++++++++++++++++
 1 file changed, 173 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b1616e..deafb36 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -122,6 +122,179 @@
 		clock-output-names = "clk_ext4";
 	};
 
+	power-domains {
+		compatible = "simple-bus";
+
+		/* HSIO SS */
+		hsiomix_pd: hsiomix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			active-wakeup;
+			rpm-always-on;
+			#power-domain-cells = <0>;
+			domain-index = <0>;
+			domain-name = "hsiomix";
+		};
+
+		pcie_pd: pcie-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <1>;
+			domain-name = "pcie";
+			parent-domains = <&hsiomix_pd>;
+		};
+
+		usb_otg1_pd: usbotg1-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <2>;
+			domain-name = "usb_otg1";
+			parent-domains = <&hsiomix_pd>;
+		};
+
+		usb_otg2_pd: usbotg2-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <3>;
+			domain-name = "usb_otg2";
+			parent-domains = <&hsiomix_pd>;
+		};
+
+		/* MLMIX */
+		mlmix_pd: mlmix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <4>;
+			domain-name = "mlmix";
+			clocks = <&clk IMX8MP_CLK_ML_AXI>,
+				 <&clk IMX8MP_CLK_ML_AHB>,
+				 <&clk IMX8MP_CLK_NPU_ROOT>;
+		};
+
+		audiomix_pd: audiomix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <5>;
+			domain-name = "audiomix";
+			clocks = <&clk IMX8MP_CLK_AUDIO_ROOT>,
+				 <&clk IMX8MP_CLK_AUDIO_AXI_DIV>;
+		};
+
+		gpumix_pd: gpumix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <6>;
+			domain-name = "gpumix";
+			clocks = <&clk IMX8MP_CLK_GPU_ROOT>, <&clk IMX8MP_CLK_GPU_AHB>,
+				 <&clk IMX8MP_CLK_GPU_AXI>;
+		};
+
+		gpu2d_pd: gpu2d-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <7>;
+			domain-name = "gpu2d";
+			parent-domains = <&gpumix_pd>;
+			clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>;
+		};
+
+		gpu3d_pd: gpu3d-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <8>;
+			domain-name = "gpu3d";
+			parent-domains = <&gpumix_pd>;
+			clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
+				 <&clk IMX8MP_CLK_GPU3D_SHADER_DIV>;
+		};
+
+		vpumix_pd: vpumix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <9>;
+			domain-name = "vpumix";
+			clocks =<&clk IMX8MP_CLK_VPU_ROOT>;
+		};
+
+		vpu_g1_pd: vpug1-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <10>;
+			domain-name = "vpu_g1";
+			parent-domains = <&vpumix_pd>;
+			clocks = <&clk IMX8MP_CLK_VPU_G1_ROOT>;
+		};
+
+		vpu_g2_pd: vpug2-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <11>;
+			domain-name = "vpu_g2";
+			parent-domains = <&vpumix_pd>;
+			clocks = <&clk IMX8MP_CLK_VPU_G2_ROOT>;
+		};
+
+		vpu_h1_pd: vpuh1-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <12>;
+			domain-name = "vpu_h1";
+			parent-domains = <&vpumix_pd>;
+			clocks = <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
+		};
+
+		mediamix_pd: mediamix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <13>;
+			domain-name = "mediamix";
+			clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+				 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+		};
+
+		ispdwp_pd: power-domain@14 {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <14>;
+			domain-name = "ispdwp";
+			parent-domains = <&mediamix_pd>;
+			clocks = <&clk IMX8MP_CLK_MEDIA_ISP_DIV>;
+		};
+
+		mipi_phy1_pd: mipiphy1-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <15>;
+			domain-name = "mipi_phy1";
+			parent-domains = <&mediamix_pd>;
+		};
+
+		mipi_phy2_pd: mipiphy2-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <16>;
+			domain-name = "mipi_phy2";
+			parent-domains = <&mediamix_pd>;
+		};
+
+		hdmimix_pd: hdmimix-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <17>;
+			domain-name = "hdmimix";
+			clocks = <&clk IMX8MP_CLK_HDMI_ROOT>,
+				 <&clk IMX8MP_CLK_HDMI_APB>,
+				 <&clk IMX8MP_CLK_HDMI_REF_266M>;
+		};
+
+		hdmi_phy_pd: hdmiphy-pd {
+			compatible = "fsl,imx8m-pm-domain";
+			#power-domain-cells = <0>;
+			domain-index = <18>;
+			domain-name = "hdmi_phy";
+			parent-domains = <&hdmimix_pd>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
