Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581339A9EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9Hhk77A7mXds6i0+5sCPF9w/FZrGA2Zboi0GIB4Fc0=; b=XajRlCTKEwKXw1
	jjQuA26FRLHoonjdQ5jPmhUu04gqY1en7wVQmuKFg/Qh4oiFBuDsmOhUM8qrWAe3OC9KuKe1JFdvT
	d42cNp4hVS2KvpUJ7ey6kgUGMnPyROnvG2v2WVZ0rJoD1U6drv88JucDGOkWKVULLnDgCke1XBi4t
	fQrVplStt3J5IISO9GG9GeWpoJOgkJ/pJde+kljlEPJib81sDFiF383ln+3EIIodk28lsectjbV14
	Jkp4yfxEsSqBMgb01udFIoC57dO0oZFfWOPoZFt0COZVCvr8JLEldsxM1lUbvPlT256LnMuc3vgRb
	5UFpIss+DdUKj6RIZ8Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14jN-0001iL-3e; Fri, 23 Aug 2019 08:15:33 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14iO-0008PQ-Qp
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:14:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id y8so7775486wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4PUCl5D0Gm4Uq64Pr+MkW/ADRKqtUb4xY3QAm5fyAKQ=;
 b=Xmln6AT/CbHPcE8dSI+b4Ssfxmu7mPnTQMhzhkAEPX5Rc53gkCIs+XFdCmImwooaRq
 VPwNFnc0qgmcMGmVdsw5orBl9MQIJIWsN7KvZYvZoHfvhUILJiFMKAeh18jK/a3L0mTh
 wGenxtTpa5Se28vI5TiNBBswhV09SyiIm6Qw2VeiWBnnjE0s+QBQpkcmWScjZaoyOKF1
 rUftpKpxOlZRha7IYyprkP9afls4GqOhhVWyFWSb4sGW6kIyw+p46ZoN1XMeio18Q/7g
 l0iesfk63Q5G7i/XMvXS4Jt9ZVte/QIhasOQkIO3WjT2A1NsUpl40Lw7zUKazzL6QiZU
 gElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4PUCl5D0Gm4Uq64Pr+MkW/ADRKqtUb4xY3QAm5fyAKQ=;
 b=VPuhe4iMaxaPaLASvtwCBvrICdL46LdgHztnYroCeVxkCBaBwY7SIw8zYSroJC0bwT
 IKNhHrtSjw9Ur0CYmyT5eHprAtnxG725Ulg2MklAhCE2hnbxCB6WkxUrEs8+6RKT0Yaf
 14AHEbKYTOCkNRIA2cRJd5dQAcaiNNUqFRp8JDxuXnL9jHy/PnwU5kFtGaSJ+5SZEN5f
 T78v/pra9kme60n2hCtK5ZsHFN7U/B6li393+4+YyYmdkcWvMRzz/IkDTRchlTfLn0x/
 0VTAgtru+DcA60hHLVdwVKbSz9CfzG5Vo0uKpmqbRkOM8lYrf/312EGkzg07Q6wTiCjU
 mUpQ==
X-Gm-Message-State: APjAAAVSPokUN3DFAROCLJ11EhcNPiUaDOK9xseuPN7eo8rQz6Z0GJHH
 khUkeoL2bWRWl+pnjbL8SsvI3A==
X-Google-Smtp-Source: APXvYqw+8ZXJAtKu4QsItc4Llp3TrW0YLnrWr+ldqE4fpm9lDBqOrtnyCS1wKw88ksF2mldYI0Y1MA==
X-Received: by 2002:a05:6000:1284:: with SMTP id
 f4mr3668299wrx.89.1566548070884; 
 Fri, 23 Aug 2019 01:14:30 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 74sm3632535wma.15.2019.08.23.01.14.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 01:14:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 1/3] arm64: dts: khadas-vim3: move common nodes into
 meson-khadas-vim3.dtsi
Date: Fri, 23 Aug 2019 10:14:25 +0200
Message-Id: <20190823081427.17228-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823081427.17228-1-narmstrong@baylibre.com>
References: <20190823081427.17228-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011432_871529_DC0B840E 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To prepare support of the Amlogic SM1 based Khadas VIM3, move the non-G12B
specific nodes (all except DVFS and Audio) to a new meson-khadas-vim3.dtsi

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/meson-g12b-a311d-khadas-vim3.dts  |   1 +
 .../dts/amlogic/meson-g12b-khadas-vim3.dtsi   | 355 -----------------
 .../amlogic/meson-g12b-s922x-khadas-vim3.dts  |   1 +
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 360 ++++++++++++++++++
 4 files changed, 362 insertions(+), 355 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
index 73128ed24361..3a6a1e0c1e32 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-khadas-vim3.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "meson-g12b-a311d.dtsi"
+#include "meson-khadas-vim3.dtsi"
 #include "meson-g12b-khadas-vim3.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
index 9c3ca2edc725..554863429aa6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
@@ -5,116 +5,9 @@
  * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
  */
 
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
 
 / {
-	model = "Khadas VIM3";
-
-	aliases {
-		serial0 = &uart_AO;
-		ethernet0 = &ethmac;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x0 0x0 0x0 0x80000000>;
-	};
-
-	adc-keys {
-		compatible = "adc-keys";
-		io-channels = <&saradc 2>;
-		io-channel-names = "buttons";
-		keyup-threshold-microvolt = <1710000>;
-
-		button-function {
-			label = "Function";
-			linux,code = <KEY_FN>;
-			press-threshold-microvolt = <10000>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		white {
-			label = "vim3:white:sys";
-			gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "heartbeat";
-		};
-
-		red {
-			label = "vim3:red";
-			gpios = <&gpio_expander 5 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	emmc_pwrseq: emmc-pwrseq {
-		compatible = "mmc-pwrseq-emmc";
-		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
-	};
-
-	gpio-keys-polled {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
-
-		power-button {
-			label = "power";
-			linux,code = <KEY_POWER>;
-			gpios = <&gpio_ao GPIOAO_7 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	sdio_pwrseq: sdio-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
-		clocks = <&wifi32k>;
-		clock-names = "ext_clock";
-	};
-
-	dc_in: regulator-dc_in {
-		compatible = "regulator-fixed";
-		regulator-name = "DC_IN";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-	};
-
-	vcc_5v: regulator-vcc_5v {
-		compatible = "regulator-fixed";
-		regulator-name = "VCC_5V";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_in>;
-
-		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
-		enable-active-high;
-	};
-
-	vcc_1v8: regulator-vcc_1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "VCC_1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc_3v3>;
-		regulator-always-on;
-	};
-
-	vcc_3v3: regulator-vcc_3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "VCC_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vsys_3v3>;
-		regulator-always-on;
-		/* FIXME: actually controlled by VDDCPU_B_EN */
-	};
-
 	vddcpu_a: regulator-vddcpu-a {
 		/*
 		 * MP8756GD Regulator.
@@ -153,62 +46,6 @@
 		regulator-always-on;
 	};
 
-	vddao_1v8: regulator-vddao_1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "VDDIO_AO1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vsys_3v3>;
-		regulator-always-on;
-	};
-
-	emmc_1v8: regulator-emmc_1v8 {
-		compatible = "regulator-fixed";
-		regulator-name = "EMMC_AO1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-		vin-supply = <&vcc_3v3>;
-		regulator-always-on;
-	};
-
-	vsys_3v3: regulator-vsys_3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "VSYS_3V3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_in>;
-		regulator-always-on;
-	};
-
-	usb_pwr: regulator-usb_pwr {
-		compatible = "regulator-fixed";
-		regulator-name = "USB_PWR";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc_5v>;
-
-		gpio = <&gpio GPIOA_6 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
-	hdmi-connector {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_connector_in: endpoint {
-				remote-endpoint = <&hdmi_tx_tmds_out>;
-			};
-		};
-	};
-
-	wifi32k: wifi32k {
-		compatible = "pwm-clock";
-		#clock-cells = <0>;
-		clock-frequency = <32768>;
-		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
-	};
-
 	sound {
 		compatible = "amlogic,axg-sound-card";
 		model = "G12A-KHADAS-VIM3";
@@ -269,20 +106,6 @@
 	status = "okay";
 };
 
-&cec_AO {
-	pinctrl-0 = <&cec_ao_a_h_pins>;
-	pinctrl-names = "default";
-	status = "disabled";
-	hdmi-phandle = <&hdmi_tx>;
-};
-
-&cecb_AO {
-	pinctrl-0 = <&cec_ao_b_h_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-	hdmi-phandle = <&hdmi_tx>;
-};
-
 &clkc_audio {
 	status = "okay";
 };
@@ -329,31 +152,6 @@
 	clock-latency = <50000>;
 };
 
-&ext_mdio {
-	external_phy: ethernet-phy@0 {
-		/* Realtek RTL8211F (0x001cc916) */
-		reg = <0>;
-		max-speed = <1000>;
-
-		interrupt-parent = <&gpio_intc>;
-		/* MAC_INTR on GPIOZ_14 */
-		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
-	};
-};
-
-&ethmac {
-        pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
-        pinctrl-names = "default";
-        status = "okay";
-        phy-mode = "rgmii";
-        phy-handle = <&external_phy>;
-        amlogic,tx-delay-ns = <2>;
-};
-
-&frddr_a {
-	status = "okay";
-};
-
 &frddr_b {
 	status = "okay";
 };
@@ -362,46 +160,6 @@
 	status = "okay";
 };
 
-&hdmi_tx {
-	status = "okay";
-	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-	pinctrl-names = "default";
-	hdmi-supply = <&vcc_5v>;
-};
-
-&hdmi_tx_tmds_port {
-	hdmi_tx_tmds_out: endpoint {
-		remote-endpoint = <&hdmi_connector_in>;
-	};
-};
-
-&i2c_AO {
-	status = "okay";
-	pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
-	pinctrl-names = "default";
-
-	gpio_expander: gpio-controller@20 {
-		compatible = "ti,tca6408";
-		reg = <0x20>;
-		vcc-supply = <&vcc_3v3>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-	};
-};
-
-&ir {
-	status = "okay";
-	pinctrl-0 = <&remote_input_ao_pins>;
-	pinctrl-names = "default";
-	linux,rc-map-name = "rc-khadas";
-};
-
 &pwm_ab {
 	pinctrl-0 = <&pwm_a_e_pins>;
 	pinctrl-names = "default";
@@ -418,81 +176,6 @@
 	status = "okay";
 };
 
-&pwm_ef {
-        status = "okay";
-        pinctrl-0 = <&pwm_e_pins>;
-        pinctrl-names = "default";
-};
-
-&saradc {
-	status = "okay";
-	vref-supply = <&vddao_1v8>;
-};
-
-/* SDIO */
-&sd_emmc_a {
-	status = "okay";
-	pinctrl-0 = <&sdio_pins>;
-	pinctrl-1 = <&sdio_clk_gate_pins>;
-	pinctrl-names = "default", "clk-gate";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	bus-width = <4>;
-	cap-sd-highspeed;
-	sd-uhs-sdr50;
-	max-frequency = <100000000>;
-
-	non-removable;
-	disable-wp;
-
-	mmc-pwrseq = <&sdio_pwrseq>;
-
-	vmmc-supply = <&vsys_3v3>;
-	vqmmc-supply = <&vddao_1v8>;
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
-/* SD card */
-&sd_emmc_b {
-	status = "okay";
-	pinctrl-0 = <&sdcard_c_pins>;
-	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
-	pinctrl-names = "default", "clk-gate";
-
-	bus-width = <4>;
-	cap-sd-highspeed;
-	max-frequency = <50000000>;
-	disable-wp;
-
-	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
-	vmmc-supply = <&vsys_3v3>;
-	vqmmc-supply = <&vsys_3v3>;
-};
-
-/* eMMC */
-&sd_emmc_c {
-	status = "okay";
-	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
-	pinctrl-1 = <&emmc_clk_gate_pins>;
-	pinctrl-names = "default", "clk-gate";
-
-	bus-width = <8>;
-	cap-mmc-highspeed;
-	mmc-ddr-1_8v;
-	mmc-hs200-1_8v;
-	max-frequency = <200000000>;
-	disable-wp;
-
-	mmc-pwrseq = <&emmc_pwrseq>;
-	vmmc-supply = <&vcc_3v3>;
-	vqmmc-supply = <&emmc_1v8>;
-};
-
 &tdmif_b {
 	status = "okay";
 };
@@ -504,41 +187,3 @@
 &tohdmitx {
 	status = "okay";
 };
-
-&uart_A {
-	status = "okay";
-	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
-	pinctrl-names = "default";
-	uart-has-rtscts;
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
-		max-speed = <2000000>;
-		clocks = <&wifi32k>;
-		clock-names = "lpo";
-	};
-};
-
-&uart_AO {
-	status = "okay";
-	pinctrl-0 = <&uart_ao_a_pins>;
-	pinctrl-names = "default";
-};
-
-&usb2_phy0 {
-	phy-supply = <&dc_in>;
-};
-
-&usb2_phy1 {
-	phy-supply = <&usb_pwr>;
-};
-
-&usb3_pcie_phy {
-	phy-supply = <&usb_pwr>;
-};
-
-&usb {
-	status = "okay";
-	dr_mode = "peripheral";
-};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
index 6bcf972b8bfa..b73deb282120 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x-khadas-vim3.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "meson-g12b-s922x.dtsi"
+#include "meson-khadas-vim3.dtsi"
 #include "meson-g12b-khadas-vim3.dtsi"
 
 / {
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
new file mode 100644
index 000000000000..8647da7d6609
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/meson-g12a-gpio.h>
+
+/ {
+	model = "Khadas VIM3";
+
+	aliases {
+		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+
+	adc-keys {
+		compatible = "adc-keys";
+		io-channels = <&saradc 2>;
+		io-channel-names = "buttons";
+		keyup-threshold-microvolt = <1710000>;
+
+		button-function {
+			label = "Function";
+			linux,code = <KEY_FN>;
+			press-threshold-microvolt = <10000>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		white {
+			label = "vim3:white:sys";
+			gpios = <&gpio_ao GPIOAO_4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		red {
+			label = "vim3:red";
+			gpios = <&gpio_expander 5 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		power-button {
+			label = "power";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio_ao GPIOAO_7 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+		clocks = <&wifi32k>;
+		clock-names = "ext_clock";
+	};
+
+	dc_in: regulator-dc_in {
+		compatible = "regulator-fixed";
+		regulator-name = "DC_IN";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
+
+	vcc_5v: regulator-vcc_5v {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dc_in>;
+
+		gpio = <&gpio GPIOH_8 GPIO_OPEN_DRAIN>;
+		enable-active-high;
+	};
+
+	vcc_1v8: regulator-vcc_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+		regulator-always-on;
+	};
+
+	vcc_3v3: regulator-vcc_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys_3v3>;
+		regulator-always-on;
+		/* FIXME: actually controlled by VDDCPU_B_EN */
+	};
+
+	vddao_1v8: regulator-vddao_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vsys_3v3>;
+		regulator-always-on;
+	};
+
+	emmc_1v8: regulator-emmc_1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "EMMC_AO1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_3v3>;
+		regulator-always-on;
+	};
+
+	vsys_3v3: regulator-vsys_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VSYS_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&dc_in>;
+		regulator-always-on;
+	};
+
+	usb_pwr: regulator-usb_pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "USB_PWR";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc_5v>;
+
+		gpio = <&gpio GPIOA_6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_tmds_out>;
+			};
+		};
+	};
+
+	wifi32k: wifi32k {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+	};
+};
+
+&cec_AO {
+	pinctrl-0 = <&cec_ao_a_h_pins>;
+	pinctrl-names = "default";
+	status = "disabled";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
+&cecb_AO {
+	pinctrl-0 = <&cec_ao_b_h_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	hdmi-phandle = <&hdmi_tx>;
+};
+
+&ext_mdio {
+	external_phy: ethernet-phy@0 {
+		/* Realtek RTL8211F (0x001cc916) */
+		reg = <0>;
+		max-speed = <1000>;
+
+		interrupt-parent = <&gpio_intc>;
+		/* MAC_INTR on GPIOZ_14 */
+		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
+	};
+};
+
+&ethmac {
+        pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
+        pinctrl-names = "default";
+        status = "okay";
+        phy-mode = "rgmii";
+        phy-handle = <&external_phy>;
+        amlogic,tx-delay-ns = <2>;
+};
+
+&hdmi_tx {
+	status = "okay";
+	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
+	pinctrl-names = "default";
+	hdmi-supply = <&vcc_5v>;
+};
+
+&hdmi_tx_tmds_port {
+	hdmi_tx_tmds_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
+&i2c_AO {
+	status = "okay";
+	pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
+	pinctrl-names = "default";
+
+	gpio_expander: gpio-controller@20 {
+		compatible = "ti,tca6408";
+		reg = <0x20>;
+		vcc-supply = <&vcc_3v3>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+	};
+};
+
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_input_ao_pins>;
+	pinctrl-names = "default";
+	linux,rc-map-name = "rc-khadas";
+};
+
+&pwm_ef {
+        status = "okay";
+        pinctrl-0 = <&pwm_e_pins>;
+        pinctrl-names = "default";
+};
+
+&saradc {
+	status = "okay";
+	vref-supply = <&vddao_1v8>;
+};
+
+/* SDIO */
+&sd_emmc_a {
+	status = "okay";
+	pinctrl-0 = <&sdio_pins>;
+	pinctrl-1 = <&sdio_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	max-frequency = <100000000>;
+
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&sdio_pwrseq>;
+
+	vmmc-supply = <&vsys_3v3>;
+	vqmmc-supply = <&vddao_1v8>;
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <50000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vsys_3v3>;
+	vqmmc-supply = <&vsys_3v3>;
+};
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-ddr-1_8v;
+	mmc-hs200-1_8v;
+	max-frequency = <200000000>;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&emmc_1v8>;
+};
+
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+	};
+};
+
+&uart_AO {
+	status = "okay";
+	pinctrl-0 = <&uart_ao_a_pins>;
+	pinctrl-names = "default";
+};
+
+&usb2_phy0 {
+	phy-supply = <&dc_in>;
+};
+
+&usb2_phy1 {
+	phy-supply = <&usb_pwr>;
+};
+
+&usb3_pcie_phy {
+	phy-supply = <&usb_pwr>;
+};
+
+&usb {
+	status = "okay";
+	dr_mode = "peripheral";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
