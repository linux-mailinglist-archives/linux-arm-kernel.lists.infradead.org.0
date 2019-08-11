Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F54B894CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 01:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IZ+Y2rhchc58k8FTr07V7cHtFDlpASW3VLVJBUMEk8I=; b=BRf
	h1e/TIfVlk1dLLP2kl5wjDtKup7uEDIhnu6+AilpMRJQVWBbhmbQN3JlVuAwAeW5VdxHoiDbpzoCu
	IH1nVkavLaXeAqRYxHJfgppi6CkEL+IjA0S+RAavJYRJo98kqzVIV0e4gsWbcpN2q7JYZ3Kuwc7nI
	yLjppgmTrxq3548Wl2eIcft8fEb9r7QIbCS0HLiRbN7EfGo/5qDT4dHnk71CKxWMrwjShIDq/19ml
	mRpra6Gr/BHVA+cXEiG8uJPEZTMAAGx8GnQukiyDVX4KT0gvzMKknq8x4yrE6wjeOOWbxBC1fCtbB
	Okuj1WDk98JSF/H+MWbWxKy0FkSHENw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwwqD-0002u9-CW; Sun, 11 Aug 2019 23:01:33 +0000
Received: from outgoing14.flk.host-h.net ([197.242.87.48])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwwq5-0002sg-MI; Sun, 11 Aug 2019 23:01:28 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam4-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hwwpr-0002mc-KS; Mon, 12 Aug 2019 01:01:12 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1hwwpo-0005mQ-Il; Mon, 12 Aug 2019 01:01:08 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] ARM: dts: add device tree for Mecer Xtreme Mini S6
Date: Sun, 11 Aug 2019 23:00:13 +0000
Message-Id: <20190811230015.28349-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear (ClamAV 0.100.3/25538/Sun Aug 11 10:18:30 2019)
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.0018101804767)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0Wp43USNh4+oPQIPr3x336CpSDasLI4SayDByyq9LIhVKm1gRKW7ekOu
 zz8r3TZkPkTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0h/RxVysY5Ye6+GGw0VqdJD7ren9RtRNyYim5e3GD8LGfWrcbYvelpuN/Pk
 qhBpvAyWwieZyauFYqHkIbFa+ipF21HJWO60ZqrvKy/1AXUV5oXt6ymoFHaG7BQtEYvFCSqHkTDj
 dyZcrshowL7tH1pWEOpHXO3AWQB4otYhXjSOOlnZeZkTpSWjdKDr98cJY3GhoSe4G2e3oZQMPPCL
 TET2QWyC1bDOw2oEv3DmjqX5Rdlnibl3vcBqVmvQB4A18aeunDIleDTKIGw+hISik27CAVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 tnlsqEID1rwhWix/EYFNtp1TycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgiuaWjWJ1lPr1Ev5xNW3FQUl1thv0hd9gZGlV
 L/SEDgzCxVAfo0TfAdBm88UU/z2X2IjokNqZVv3KMEb5yncp4Gliqy40Rbjn7L/aSJSlbL1zKyEL
 KRIlJqopKieSGgZIDDCaOnYR+e17nmKXMy4iUno/l2R44/7at9DP1rQ8e6dbF/Yfz7ZwWRFpJHQn
 mVbGJJcMBQM8xFcyypgGsWJnLxVzYMsh2xD7KXeSzOTYSf/OzQimTss39BPbTa6gkWqxqeDt/vDy
 PLUXN2ILHndC4hwbA2fIdq9z/kUhYTDkDb9GLLhZsgdKPiGhHoIVmEgc3vQE4bdGRg51xWZ402gC
 TyXPOOUgfrQ68NrwMFh7KSOb5P6QksNjtkRqQoUwY2m2XXORzshGSanMY2R9xqtrh1M8CVsONrMJ
 uGzuoGnKTKcyMAVhaIz/fGNqyRYsGJ0LJeBqPlwuAReGWkPdwxr2XgmbPrJVQzt6iVRPsiDvDuTj
 4oYwO9PC4N2NoF8mn/qyLT9gcYZ23l4P3JrzWS8jWh8xuwZvHnAADkIPtamKuAZddoNrr+WHg4o5
 S3beb97n9J0N63F3lSElipbV7k/tzvRn13OWvSfGlZ4x16b3bGBx
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_160125_730999_E7925C4A 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [197.242.87.48 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Justin Swartz <justin.swartz@risingedge.co.za>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Mecer Xtreme Mini S6 features a Rockchip RK3229 SoC,
1GB DDR3 RAM, 8GB eMMC, MicroSD port, 10/100Mbps Ethernet,
Realtek 8723BS WLAN module, 2 x USB 2.0 ports, HDMI output,
and S/PDIF output.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/rk3229-xms6.dts                  | 283 +++++++++++++++++++++
 4 files changed, 291 insertions(+)
 create mode 100644 arch/arm/boot/dts/rk3229-xms6.dts

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 34865042f4e4..4abd91c2b0bd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -329,6 +329,11 @@ properties:
               - khadas,edge-v
           - const: rockchip,rk3399
 
+      - description: Mecer Xtreme Mini S6
+        items:
+          - const: mecer,xms6
+          - const: rockchip,rk3229
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbbbffab..97992fccfc3d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -549,6 +549,8 @@ patternProperties:
     description: mCube
   "^meas,.*":
     description: Measurement Specialties
+  "^mecer,.*":
+    description: Mustek Limited
   "^mediatek,.*":
     description: MediaTek Inc.
   "^megachips,.*":
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..4567c0b045c2 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -905,6 +905,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3188-radxarock.dtb \
 	rk3228-evb.dtb \
 	rk3229-evb.dtb \
+	rk3229-xms6.dtb \
 	rk3288-evb-act8846.dtb \
 	rk3288-evb-rk808.dtb \
 	rk3288-fennec.dtb \
diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
new file mode 100644
index 000000000000..4b6ab4954dd4
--- /dev/null
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -0,0 +1,283 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include "rk3229.dtsi"
+
+/ {
+	model = "Mecer Xtreme Mini S6";
+	compatible = "mecer,xms6", "rockchip,rk3229";
+
+	dc_12v: dc-12v-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_12v";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	ext_gmac: ext_gmac {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "ext_gmac";
+		#clock-cells = <0>;
+	};
+
+	memory@60000000 {
+		device_type = "memory";
+		reg = <0x60000000 0x40000000>;
+	};
+
+	power-led {
+		compatible = "gpio-leds";
+
+		blue {
+			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+
+	vcc_host: vcc-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&host_vbus_drv>;
+		regulator-name = "vcc_host";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		regulator-name = "vcc_phy";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vccio_1v8>;
+	};
+
+	vcc_sys: vcc-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_12v>;
+	};
+
+	vccio_1v8: vccio-1v8-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vccio_3v3: vccio-3v3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vccio_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&vcc_sys>;
+	};
+
+	vdd_arm: vdd-arm-regulator {
+		compatible = "pwm-regulator";
+		pwms = <&pwm1 0 25000 1>;
+		pwm-supply = <&vcc_sys>;
+		regulator-name = "vdd_arm";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_log: vdd-log-regulator {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 25000 1>;
+		pwm-supply = <&vcc_sys>;
+		regulator-name = "vdd_log";
+		regulator-min-microvolt = <1000000>;
+		regulator-max-microvolt = <1300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&emmc {
+	cap-mmc-highspeed;
+	disable-wp;
+	non-removable;
+	status = "okay";
+};
+
+&gmac {
+	assigned-clocks = <&cru SCLK_MAC_SRC>;
+	assigned-clock-rates = <50000000>;
+	clock_in_out = "output";
+	phy-supply = <&vcc_phy>;
+	phy-mode = "rmii";
+	phy-handle = <&phy>;
+	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy: phy@0 {
+			compatible = "ethernet-phy-id1234.d400",
+			             "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			clocks = <&cru SCLK_MAC_PHY>;
+			resets = <&cru SRST_MACPHY>;
+			phy-is-integrated;
+		};
+	};
+};
+
+&gpu {
+	mali-supply = <&vdd_log>;
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_phy {
+	status = "okay";
+};
+
+&iep_mmu {
+	status = "okay";
+};
+
+&io_domains {
+	status = "okay";
+
+	vccio1-supply = <&vccio_3v3>;
+	vccio2-supply = <&vccio_1v8>;
+	vccio4-supply = <&vccio_3v3>;
+};
+
+&pinctrl {
+	usb {
+		host_vbus_drv: host-vbus-drv {
+			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&sdmmc {
+	cap-mmc-highspeed;
+	disable-wp;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <0>;
+	status = "okay";
+};
+
+&u2phy0 {
+	status = "okay";
+
+	u2phy0_host: host-port {
+		phy-supply = <&vcc_host>;
+		status = "okay";
+	};
+
+	u2phy0_otg: otg-port {
+		phy-supply = <&vcc_host>;
+		status = "okay";
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+
+	u2phy1_host: host-port {
+		phy-supply = <&vcc_host>;
+		status = "okay";
+	};
+
+	u2phy1_otg: otg-port {
+		phy-supply = <&vcc_host>;
+		status = "okay";
+	};
+};
+
+&uart2 {
+	pinctrl-0 = <&uart21_xfer>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host2_ehci {
+	status = "okay";
+};
+
+&usb_host2_ohci {
+	status = "okay";
+};
+
+&usb_otg {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
