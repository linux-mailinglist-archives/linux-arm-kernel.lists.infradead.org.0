Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D931A174848
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 18:04:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pq76Xpn1NOngJ7oFNZfcFxlvgypfTDabPT7fcL1HXoo=; b=lCKRfC50dYAjdR
	93065HMbDDG18UjrNfYcAL8RH8pqa4DGCvkivm393D/npygdAG0v6IB1nC2MTe7KDlWW2eUh8CVpu
	ciuFHW0xQxQj2iTg6Dh6FfUC8BJTVVqj/BvTvQnJ+wBNS2FvxQnVhynxhfhoACEZXi5sDcxAIOS2W
	Tin5W8hRRUQ/Se8sA8kZEePrYgRCXIRjzkB/ILGEWFOiZM6QrshwPeiu95dOmqcdhRaGY7oGHjtEo
	1ljpJX9gvKJZpgH9bWEkaw/t8GlNg+qetokUw3fC/HkiJo/9JgEAm92fF/81FZmECuKOevG5+IOOv
	C3tuKQGnNAXCNKbD3fGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j85Xj-0008Mz-88; Sat, 29 Feb 2020 17:04:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j85XD-0008DA-Ep
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 17:04:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id j7so7111742wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 09:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LjnPFAuYRx1+e9Nusu+GLt62/h8wv1vBF+D3fWY8HaY=;
 b=dnI56PQbf3ak5OriYGgZjFWVU9FHoAWf6obRSPHL6mp0DlrvKtft7qmVQW+coi0PCW
 t40GyfgyQOKWUVUewc1ZeWk3qqc06L7Wa8qbS18q42BSOGTzGxHwIeibWD0qQIhqwq1B
 tT+UOqA6P8k398WsQzLrY6IPZT+hR9qHx4taAylliaQl4ZvUdlZXs7awiAqjjVyZ9b0j
 X7mS4G1USzmTQqDDlbAtLMv1cI7xSxExnBmagwb9UWZB9nnUwZjbHrG1xJbnXkzdyy9m
 NhE3EJSNbyFlPvX/P5BgnuCQdTF8jmA4BXGjc0T7z+YBLh5cnn2b9+KWs4z0zHLFUOFh
 /U9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LjnPFAuYRx1+e9Nusu+GLt62/h8wv1vBF+D3fWY8HaY=;
 b=FnUTx5tcFSXhEIYSGgCH49tAwVRFZCmwmmcUQrr8V7v8Tm/KYf0/HI4LDhCRwV/ZOn
 EUN6KhGnZbpZeTPPuRgMqheeVxBhVteV4R22uqCrusMZYNnltFic9VFJq0FcV6kn1fBy
 2jcDeVLpLfp3yoikGiM9bwmp5RxJEJVDH06vhD0watrLuufakPw8h5+RE1sMKoMSdeyF
 Cg1cM/Dy7hDCjPTFDnWqRt+uZ1MnBeCi84qAV0qqaIIhABvJxcuQEG3x5VaHtDGHK1h2
 M9BQJv/uIancjRI5fKwHEP8GxAzPLGUBENTy9NUBK8BvC4sW/7WIcCXVvoVCv50v+fpv
 QDRQ==
X-Gm-Message-State: APjAAAXypLEMbVSJlf26zinDcAP9TOsar5NDnkHFH0jKDqIRRvHb8Thy
 pxyVHF043/es+SJIMolTTXPiVw==
X-Google-Smtp-Source: APXvYqx12uM+Pz8xkprft5U521IRBIh4vG5dGTbiwnDmbiUL0IQ8HifC7xzmHOfqf8uaKpfL8t+5qw==
X-Received: by 2002:a5d:638b:: with SMTP id p11mr11597986wru.338.1582995853137; 
 Sat, 29 Feb 2020 09:04:13 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ecba:5540:6f5c:582a:cc84:32f5])
 by smtp.gmail.com with ESMTPSA id 18sm7178304wmf.1.2020.02.29.09.04.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Feb 2020 09:04:12 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: mediatek: add pumpkin board dts
Date: Sat, 29 Feb 2020 18:04:01 +0100
Message-Id: <20200229170401.1287324-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200229170401.1287324-1-fparent@baylibre.com>
References: <20200229170401.1287324-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_090416_276970_5A70CC37 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pumpkin board is  made by Gossamer Engineering and is using
a MediaTek SoC. The board currently comes in two available version:
MT8516 SoC and MT8167 SoC.
The board provides the following IOs: eMMC, NAND, SD card, USB type-A,
Ethernet, Wi-Fi, Bluetooth, Audio (jack out, 2 PDM port, 1 analog in),
serial over USB, and an expansion header.

Additionally there is a HDMI port, DSI port, and camera port only
on the MT8167 version of the board.

The board can be powered by battery and/or via a USB Type-C port and
is using a PMIC MT6392.

The eMMC and NAND are sharing pins and cannot be used together.

This commit is adding the basic boot support for the Pumpkin MT8516
board on the eMMC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V3:
	* Fix warnings from dtbs_check and checkpatch.pl
	* Add FW optee nodes
	* Add usb0 and usb0_phy nodes

V2:
	* Remove dependency on PMIC MT6392 to make it easier to merge the DTS
	until the PMIC code is merged.
	* Rename a bunch of label to make them more straighforward
	* Use names for keycode instead of magic values
	* Add chosen for serial port

---
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../boot/dts/mediatek/mt8516-pumpkin.dts      |  20 ++
 .../boot/dts/mediatek/pumpkin-common.dtsi     | 221 ++++++++++++++++++
 3 files changed, 242 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 458bbc422a94..2f8967cb8717 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -8,3 +8,4 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
new file mode 100644
index 000000000000..cce642c53812
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include "mt8516.dtsi"
+#include "pumpkin-common.dtsi"
+
+/ {
+	model = "Pumpkin MT8516";
+	compatible = "mediatek,mt8516";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x40000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
new file mode 100644
index 000000000000..a31093d7142b
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:921600n8";
+	};
+
+	firmware {
+		optee: optee@4fd00000 {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		input-name = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_keys_default>;
+
+		volume-up {
+			gpios = <&pio 42 GPIO_ACTIVE_LOW>;
+			label = "volume_up";
+			linux,code = <115>;
+			wakeup-source;
+			debounce-interval = <15>;
+		};
+
+		volume-down {
+			gpios = <&pio 43 GPIO_ACTIVE_LOW>;
+			label = "volume_down";
+			linux,code = <114>;
+			wakeup-source;
+			debounce-interval = <15>;
+		};
+	};
+};
+
+&i2c0 {
+	clock-div = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins_a>;
+	status = "okay";
+
+	tca6416: gpio@20 {
+		compatible = "ti,tca6416";
+		reg = <0x20>;
+		rst-gpio = <&pio 65 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&tca6416_pins>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		eint20_mux_sel0 {
+			gpio-hog;
+			gpios = <0 0>;
+			input;
+			line-name = "eint20_mux_sel0";
+		};
+
+		expcon_mux_sel1 {
+			gpio-hog;
+			gpios = <1 0>;
+			input;
+			line-name = "expcon_mux_sel1";
+		};
+
+		mrg_di_mux_sel2 {
+			gpio-hog;
+			gpios = <2 0>;
+			input;
+			line-name = "mrg_di_mux_sel2";
+		};
+
+		sd_sdio_mux_sel3 {
+			gpio-hog;
+			gpios = <3 0>;
+			input;
+			line-name = "sd_sdio_mux_sel3";
+		};
+
+		sd_sdio_mux_ctrl7 {
+			gpio-hog;
+			gpios = <7 0>;
+			output-low;
+			line-name = "sd_sdio_mux_ctrl7";
+		};
+
+		hw_id0 {
+			gpio-hog;
+			gpios = <8 0>;
+			input;
+			line-name = "hw_id0";
+		};
+
+		hw_id1 {
+			gpio-hog;
+			gpios = <9 0>;
+			input;
+			line-name = "hw_id1";
+		};
+
+		hw_id2 {
+			gpio-hog;
+			gpios = <10 0>;
+			input;
+			line-name = "hw_id2";
+		};
+
+		fg_int_n {
+			gpio-hog;
+			gpios = <11 0>;
+			input;
+			line-name = "fg_int_n";
+		};
+
+		usba_pwr_en {
+			gpio-hog;
+			gpios = <12 0>;
+			output-high;
+			line-name = "usba_pwr_en";
+		};
+
+		wifi_3v3_pg {
+			gpio-hog;
+			gpios = <13 0>;
+			input;
+			line-name = "wifi_3v3_pg";
+		};
+
+		cam_rst {
+			gpio-hog;
+			gpios = <14 0>;
+			output-low;
+			line-name = "cam_rst";
+		};
+
+		cam_pwdn {
+			gpio-hog;
+			gpios = <15 0>;
+			output-low;
+			line-name = "cam_pwdn";
+		};
+	};
+};
+
+&i2c2 {
+	clock-div = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins_a>;
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	dr_mode = "peripheral";
+
+	usb_con: connector {
+		compatible = "usb-c-connector";
+		label = "USB-C";
+	};
+};
+
+&usb0_phy {
+	status = "okay";
+};
+
+&pio {
+	gpio_keys_default: gpiodefault {
+		pins_cmd_dat {
+			pinmux = <MT8516_PIN_42_KPCOL0__FUNC_GPIO42>,
+				 <MT8516_PIN_43_KPCOL1__FUNC_GPIO43>;
+			bias-pull-up;
+			input-enable;
+		};
+	};
+
+	i2c0_pins_a: i2c0@0 {
+		pins1 {
+			pinmux = <MT8516_PIN_58_SDA0__FUNC_SDA0_0>,
+				 <MT8516_PIN_59_SCL0__FUNC_SCL0_0>;
+			bias-disable;
+		};
+	};
+
+	i2c2_pins_a: i2c2@0 {
+		pins1 {
+			pinmux = <MT8516_PIN_60_SDA2__FUNC_SDA2_0>,
+				 <MT8516_PIN_61_SCL2__FUNC_SCL2_0>;
+			bias-disable;
+		};
+	};
+
+	tca6416_pins: pinmux_tca6416_pins {
+		gpio_mux_rst_n_pin {
+			pinmux = <MT8516_PIN_65_UTXD1__FUNC_GPIO65>;
+			output-high;
+		};
+
+		gpio_mux_int_n_pin {
+			pinmux = <MT8516_PIN_64_URXD1__FUNC_GPIO64>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+};
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
