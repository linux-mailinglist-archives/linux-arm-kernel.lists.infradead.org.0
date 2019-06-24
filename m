Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 613394FEFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 04:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VZBOmFhb8fWoJIHMICLhm9eLIHuE/zEZcpFb8LV++Ps=; b=crwxIPiwJ34L/9UvfB6ZDI8S0b
	MzsZsqbSOHZUNif1fOBpkI+2s+zclgfOHCm468fzrNdUHyDoxfyLPMum7sUjWQ37OxxS8/Dda8xhM
	xEHDAvIzxVqdFaTmodVrcYtNfttjTIaYoKieUAnZu/5ZApqbd9ILov3u9irAbbjmVtqRxDXyhmmCt
	syjtqu0en6qkuX/UyigiSgu20gkQqThL87Hb9HdlAofa1ztDIDwuBwXhlK9eFiFhkChB8X+m5Ci92
	WwvdTSVoObPEyZcNNHVHYDQvNnuUB19RuHFQ/whutEZUqeOA62iiXcnmG0IHJab5L/9FM6I1bfzSL
	YlnvotzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEKU-00020m-U9; Mon, 24 Jun 2019 02:03:35 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEIH-0000Tl-VY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 02:01:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 920851A100D;
 Mon, 24 Jun 2019 04:01:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E6AF51A1023;
 Mon, 24 Jun 2019 04:01:09 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1B0FD4031E;
 Mon, 24 Jun 2019 10:01:02 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH v5 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Date: Mon, 24 Jun 2019 10:02:56 +0800
Message-Id: <20190624020258.21690-7-peter.chen@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624020258.21690-1-peter.chen@nxp.com>
References: <20190624020258.21690-1-peter.chen@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_190118_206308_10710807 
X-CRM114-Status: UNSURE (   6.56  )
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 sergei.shtylyov@cogentembedded.com, Peter Chen <peter.chen@nxp.com>,
 linux-usb@vger.kernel.org, chunfeng.yun@mediatek.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx7ulp USBOTG1 support.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d6b711011cba..2679856aaf65 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -30,6 +30,7 @@
 		serial1 = &lpuart5;
 		serial2 = &lpuart6;
 		serial3 = &lpuart7;
+		usbphy0 = &usbphy1;
 	};
 
 	cpus {
@@ -133,6 +134,33 @@
 			clock-names = "ipg", "per";
 		};
 
+		usbotg1: usb@40330000 {
+			compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb";
+			reg = <0x40330000 0x200>;
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pcc2 IMX7ULP_CLK_USB0>;
+			phys = <&usbphy1>;
+			fsl,usbmisc = <&usbmisc1 0>;
+			ahb-burst-config = <0x0>;
+			tx-burst-size-dword = <0x8>;
+			rx-burst-size-dword = <0x8>;
+			status = "disabled";
+		};
+
+		usbmisc1: usbmisc@40330200 {
+			compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc";
+			#index-cells = <1>;
+			reg = <0x40330200 0x200>;
+		};
+
+		usbphy1: usb-phy@0x40350000 {
+			compatible = "fsl,imx7ulp-usbphy", "fsl,imx6ul-usbphy";
+			reg = <0x40350000 0x1000>;
+			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
+			#phy-cells = <0>;
+		};
+
 		usdhc0: mmc@40370000 {
 			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
 			reg = <0x40370000 0x10000>;
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
