Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56D0B49CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG/5wHjMlha3g7qNoyp+KpKR4eSxS4c8gk6fKOdnbd0=; b=Vwp5sdtAM3Ppdn
	WGARxU9vDLFiEi/Vssx4AKkzyzDHaWdDG3z4LX2XI4mJ50FaBmvD/LN8b6Q78pz0vSmOoOedF3/aL
	V/Tuvs+3mx92Zv/p/6c1bn7yhlGLb3oK9Hrgu9B2e7j9QbwvRwLaGSXGEb7iaEFax+gsMH1Meq++m
	JivEqkrt4qHdHAhzHuIptXiynGi5xVqWbxOyUMhuImuPgSi9QowxNl/SQhYwjoLMWXYV1Y277w24Y
	bhYCq61qbjmqRi8zg539Z2ldUtXNiNU8NGfiswVcMMBOarVazb9jOAxMnUZ3UHQ0Kc7/XH+vAh8BV
	gq/LkIQntx6iWTnymEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA99t-00042N-DD; Tue, 17 Sep 2019 08:48:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA99Y-0003yG-He; Tue, 17 Sep 2019 08:48:06 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pK-0005ZY-QE; Tue, 17 Sep 2019 10:27:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/13] arm64: dts: rockchip: add usb2phy for px30
Date: Tue, 17 Sep 2019 10:26:58 +0200
Message-Id: <20190917082659.25549-12-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_014804_768024_732C8249 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the usb2phy node on the px30 and hook it up to the usb controllers
it supplies.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9ad1c2f04ea9..837e421cc30f 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -701,6 +701,43 @@
 			<26000000>;
 	};
 
+	usb2phy_grf: syscon@ff2c0000 {
+		compatible = "rockchip,px30-usb2phy-grf", "syscon",
+			     "simple-mfd";
+		reg = <0x0 0xff2c0000 0x0 0x10000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy: usb2-phy@100 {
+			compatible = "rockchip,px30-usb2phy";
+			reg = <0x100 0x20>;
+			clocks = <&pmucru SCLK_USBPHY_REF>;
+			clock-names = "phyclk";
+			#clock-cells = <0>;
+			assigned-clocks = <&cru USB480M>;
+			assigned-clock-parents = <&u2phy>;
+			clock-output-names = "usb480m_phy";
+			status = "disabled";
+
+			u2phy_host: host-port {
+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";
+				status = "disabled";
+			};
+
+			u2phy_otg: otg-port {
+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "otg-bvalid", "otg-id",
+						  "linestate";
+				status = "disabled";
+			};
+		};
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
@@ -713,6 +750,8 @@
 		g-rx-fifo-size = <280>;
 		g-tx-fifo-size = <256 128 128 64 32 16>;
 		g-use-dma;
+		phys = <&u2phy_otg>;
+		phy-names = "usb2-phy";
 		power-domains = <&power PX30_PD_USB>;
 		status = "disabled";
 	};
@@ -723,6 +762,8 @@
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
 		clock-names = "usbhost";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
 		status = "disabled";
 	};
@@ -733,6 +774,8 @@
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
 		clock-names = "usbhost";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
 		status = "disabled";
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
