Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FED29DF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp5gyOVZ7L88jiKzNVejxPTTCL4os4JPM1r5zKaGBQw=; b=ovQt2N3py3x+D2
	SpX7b7CgRpfqLM4LZGns40RK6cLhlzqbXIJeVavf9JgLdbL/ypWEaFGDAk5greeEvfgCh3yvk2KOQ
	fZtUXLl5ZJvQCsZL4YxYlGWF7DTDqwmAir/JObpM/FT2GSCcHK6L4xx8QE7w7ZTay9kFLU1CXbrLx
	B1lEcwq255M8V/j1KXL4OvdbXJig5mA/R969S/gAxcl4cDpVfwZyDcS+cRCT86LefAulHTewMKPzl
	ZPBRfKixTNCrfBcpXs4Aw4cwxqtpI3ribmsKkpEb5gVsSIZRx1Y27BxNdYaks3HO8HjLw8yt5TeUy
	qHGrX8ihO/c0ycdnFSNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEnj-0004Z0-Gg; Fri, 24 May 2019 18:20:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEnF-0003l2-Qo; Fri, 24 May 2019 18:19:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id 198so10291606wme.3;
 Fri, 24 May 2019 11:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CMwpxmkiGGLj4LCUsjsXv0reA0jujs/nc9A8nY8SSPI=;
 b=UHexDVlZQnrlflu++xZeqp3+kXzwHwQxVNyVA4s0XysLJxw4bOA/fNezB3O55xHeeI
 e9r31Ts0F83VTO1oxBzHc8Yp84Wa4K0U5mvtIrHdyHn9T9Ux7Af8l9yWKscJDhifFeSF
 rQ7ZMwr07ggFveiQG3oJ/gJh7Z2oPKQLcN1ywgweuWNKb4zZhHOXQoXf3mIuKL3buiG5
 0qyy7pvtzyImFT5jjqqSKrxvzJ+hvCTrt8KmZjR5G57VufYOYvk5glbrfOXdsUWkcyHS
 AqxVn4IJzCgDsWej9viPIefzvxXOC/mFEBAZ7RKBEra1CavFioRdliWZORGFaPadS/yt
 kqCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CMwpxmkiGGLj4LCUsjsXv0reA0jujs/nc9A8nY8SSPI=;
 b=Zsgly9RlT3PBbcvc7suC6sg1d4blVtIF3p6zAEvQShIYdMsviqcbWE228077r2vnEo
 DGewu0VhU4VYMOTs4shWWRgVEi0l3S3iJza8g0IGq58i0jJARTbsSdeardOxg7VcSh+R
 9pXsSZQEP5egH8eGHEORnA+RpwuHtKzRHHAClmgvcNqBLsG1dRLERjvRt/ebRUlPtxkD
 xjVGRTBYuVPeWTzO4TDeDSpyriOGG5lb2kkx++HM/48tezslh4oYWthI5xkXi34Cev+L
 Oi2if8c4oScTxP87uanmw2DEOIu63RWjfS4SzCCuVan+Qd4tQKxsolHRBk6r8kvYc23R
 oXDQ==
X-Gm-Message-State: APjAAAVQq8djtDWpT/x6Bw4hTw4++IK2LESc0OXXhdQ8sGCVB4hG4B2+
 RY3MKM7345tAQIe7GJ+iXzfIlora
X-Google-Smtp-Source: APXvYqxUVmMZGD2QAsoiuMcXM1uIrp3IpLv9aSyFm9DtNCaDblKukgF4ht4RPM/gSyNpgKqwCynEuw==
X-Received: by 2002:a1c:a00a:: with SMTP id j10mr820472wme.41.1558721987620;
 Fri, 24 May 2019 11:19:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE7100D0AA8776F4474B72.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:d0aa:8776:f447:4b72])
 by smtp.googlemail.com with ESMTPSA id i15sm3181831wre.30.2019.05.24.11.19.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 11:19:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/1] ARM: dts: meson8b: mxq: improve support for the TRONFY
 MXQ S805
Date: Fri, 24 May 2019 20:19:36 +0200
Message-Id: <20190524181936.29470-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
References: <20190524181936.29470-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_111949_864599_77B5444F 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 hexdump0815@googlemail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TRONFY MXQ comes with either 1GB or 2GB RAM.

Both variants share (like most boards based on Amlogic reference
designs):
- 10/100 PHY (IC Plus IP101GR) with GPIOH_4 being the reset line and
  GPIOH_3 the interrupt line
- SD card slot with the card detection GPIO at CARD_6
- VCCK is generated by PWM_C with a period of 1148ns and XTAL as input
  clock
- USB OTG exposed on one of the USB-A connectors
- 4-port USB hub with 3 ports exposed to the outside

There seem the multiple board revision out there according to various
forum posts:
- storage: eMMC or NAND flash
- wifi: Ampak AP6210 or Realtek 8189

Add support for the following functionality:
- SoC temperature (hwmon)
- changing the CPU voltage
- Ethernet connectivity
- SD card
- USB

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-mxq.dts | 139 ++++++++++++++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index 08ddd7fb0bf8..07f1cc513f8a 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
@@ -45,6 +45,9 @@
  */
 
 /dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+
 #include "meson8b.dtsi"
 
 / {
@@ -63,6 +66,126 @@
 		device_type = "memory";
 		reg = <0x40000000 0x40000000>;
 	};
+
+	iio-hwmon {
+		compatible = "iio-hwmon";
+		io-channels = <&saradc 8>;
+	};
+
+	vcck: regulator-vcck {
+		compatible = "pwm-regulator";
+
+		regulator-name = "VCCK";
+		regulator-min-microvolt = <860000>;
+		regulator-max-microvolt = <1140000>;
+
+		pwms = <&pwm_cd 0 1148 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	vcc_1v8: regulator-vcc1v8 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VCC1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		vin-supply = <&vcc_3v3>;
+	};
+
+	vcc_3v3: regulator-vcc3v3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VCC3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		vin-supply = <&vcc_5v>;
+	};
+
+	vcc_5v: regulator-vcc5v {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VCC5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vcck>;
+};
+
+&ethmac {
+	status = "okay";
+
+	pinctrl-0 = <&eth_rmii_pins>;
+	pinctrl-names = "default";
+
+	phy-handle = <&eth_phy0>;
+	phy-mode = "rmii";
+
+	snps,reset-gpio = <&gpio GPIOH_4 0>;
+	snps,reset-delays-us = <0 10000 1000000>;
+	snps,reset-active-low;
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		eth_phy0: ethernet-phy@0 {
+			/* IC Plus IP101A/G (0x02430c54) */
+			reg = <0>;
+			icplus,select-interrupt;
+			interrupt-parent = <&gpio_intc>;
+			/* GPIOH_3 */
+			interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
+		};
+	};
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc_1v8>;
+};
+
+&sdio {
+	status = "okay";
+
+	pinctrl-0 = <&sd_b_pins>;
+	pinctrl-names = "default";
+
+	/* SD card */
+	sd_card_slot: slot@1 {
+		compatible = "mmc-slot";
+		reg = <1>;
+		status = "okay";
+
+		bus-width = <4>;
+		no-sdio;
+		cap-mmc-highspeed;
+		cap-sd-highspeed;
+		disable-wp;
+
+		cd-gpios = <&gpio CARD_6 GPIO_ACTIVE_LOW>;
+
+		vmmc-supply = <&vcc_3v3>;
+	};
+};
+
+&pwm_cd {
+	status = "okay";
+	pinctrl-0 = <&pwm_c1_pins>;
+	pinctrl-names = "default";
+	clocks = <&clkc CLKID_XTAL>;
+	clock-names = "clkin0";
 };
 
 &uart_AO {
@@ -70,3 +193,19 @@
 	pinctrl-0 = <&uart_ao_a_pins>;
 	pinctrl-names = "default";
 };
+
+&usb0 {
+	status = "okay";
+};
+
+&usb0_phy {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
+
+&usb1_phy {
+	status = "okay";
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
