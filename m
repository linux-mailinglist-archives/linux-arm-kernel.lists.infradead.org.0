Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3E6FEB95
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 10:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PnO0dYfM0/kanLOxrkGEgfRXCr9L/3/yvyYCZ0hWs5U=; b=dQMaGwW5s1KTDh
	QXMAlPap0H4JCjeyPnnPp8P7i03VGS0kJP29ZXb57DhsvKrP5MCmaP0e73M0Xn8DSszYrTX0YsJh7
	Cgo3DCB6x/etQlPr3fgrUF02YbtQbdvIXBfw+JZTcunBk29jmSLPzxMAcbnLXMhDfXibN9c+Hyo91
	2mBBVvugft0sY5/vomi90f9jG1p8kcUg2hbisw1hjsimcolzjtZ2zQO+0KtTTW2i/8axlV3YIpb7V
	dQ5KifBC0AqZADJ5EaS0FMuMp0TUyzwU+aOoy+LDObLzzEerZV7ng6UWwQXw7ky045JZNhJjRbrxe
	OvKXzGRRAgj7q8j86HEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVuld-0004J4-Rx; Sat, 16 Nov 2019 09:53:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVulB-00040I-Kn; Sat, 16 Nov 2019 09:52:56 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVulA-0004bh-8z; Sat, 16 Nov 2019 10:52:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: rockchip: add thermal infrastructure to px30
Date: Sat, 16 Nov 2019 10:52:48 +0100
Message-Id: <20191116095249.31193-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_015253_844088_B027A318 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add tsadc and necessary connections to core px30 components.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 71 ++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c9cb73ba7bec..c68d6fede53d 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/px30-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,px30";
@@ -181,6 +182,55 @@
 			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 	};
 
+	thermal_zones: thermal-zones {
+		soc_thermal: soc-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
+			sustainable-power = <750>;
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				threshold: trip-point-0 {
+					temperature = <70000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				target: trip-point-1 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				soc_crit: soc-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <4096>;
+				};
+
+				map1 {
+					trip = <&target>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <4096>;
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <100>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 1>;
+		};
+	};
+
 	xin24m: xin24m {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -645,6 +695,26 @@
 		};
 	};
 
+	tsadc: tsadc@ff280000 {
+		compatible = "rockchip,px30-tsadc";
+		reg = <0x0 0xff280000 0x0 0x100>;
+		interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_TSADC>;
+		assigned-clock-rates = <50000>;
+		clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
+		clock-names = "tsadc", "apb_pclk";
+		resets = <&cru SRST_TSADC>;
+		reset-names = "tsadc-apb";
+		rockchip,grf = <&grf>;
+		rockchip,hw-tshut-temp = <120000>;
+		pinctrl-names = "init", "default", "sleep";
+		pinctrl-0 = <&tsadc_otp_gpio>;
+		pinctrl-1 = <&tsadc_otp_out>;
+		pinctrl-2 = <&tsadc_otp_gpio>;
+		#thermal-sensor-cells = <1>;
+		status = "disabled";
+	};
+
 	saradc: saradc@ff288000 {
 		compatible = "rockchip,px30-saradc", "rockchip,rk3399-saradc";
 		reg = <0x0 0xff288000 0x0 0x100>;
@@ -886,6 +956,7 @@
 			     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru SCLK_GPU>;
+		#cooling-cells = <2>;
 		power-domains = <&power PX30_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
