Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F91C2DA2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZqYICPNucgawEdXuiFWuvuo1CM6xTioavttIG3tsPlE=; b=gVN6krrYFuXwCZ1zEBG4fVI2eu
	5PXbXug0UF4lZArZ4QOkHiGbbXWNjZxCvjusPQ3lDLHq6iqsLwMnSKE5/EirdPMR4uw55Lj0l4qWr
	a/mAd/kZ1mHvUQb9u6V9otVHYxBuFd2p3o3BbfBIaOFBgMznLi5HSBDEDIzBKE+Ogi8/UlG1CkWIh
	vhyv4ZLHJ5yOOCXAimxcFuIUcDPnz8vTNIu4/YP5daipkdzbKBRd4COhSp65DwCw6P6zEsfLwgH5N
	CQjDRzGv5QozfDhiLG06KjJNG6lsveiXGS/WyARi4HVB/SHLXcKQEFH7uuaQ6IhkL+5hOSxPliVnK
	jM3RYCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGmq-0003hP-L1; Sun, 03 May 2020 15:44:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGlf-0002jc-MD
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:43:02 +0000
Received: from localhost.localdomain (unknown [157.51.190.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFD1A20836;
 Sun,  3 May 2020 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588520578;
 bh=OXq9FMct3mDZL6PvVE4nWjIKjobcNyfHQcSwBAqBwVc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g5WnNTF+PpnXSAALCoeR5nGgbygm1L8Fk1PZV4vXBXwWNTMEayAVswXAZZFhPx/wR
 MpaRoJy9H9TrM3zRapq/fgk2yLXbSp4O0/iJnkhcLfgGGyLbWDqEpHEebakySG/3Zb
 Zo72aUdzp27OtlT14UJMhR4qWJCKA6we/I03GIJw=
From: mani@kernel.org
To: robh+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com
Subject: [PATCH v2 6/6] ARM: dts: stm32: Add IoT Box board support
Date: Sun,  3 May 2020 21:12:15 +0530
Message-Id: <20200503154215.23654-7-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200503154215.23654-1-mani@kernel.org>
References: <20200503154215.23654-1-mani@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_084259_796848_5ED6C173 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

IoT Box is an IoT gateway device based on Stinger96 board powered by
STM32MP1 SoC, designed and manufactured by Shiratech Solutions. This
device makes use of Stinger96 board by having it as a base board with
one additional mezzanine on top.

Following are the features exposed by this device in addition to the
Stinger96 board:

* WiFi/BT
* CCS811 VOC sensor
* 2x Digital microphones IM69D130
* 12x WS2812B LEDs

Following peripherals are tested and known to work:

* WiFi/BT
* CCS811

More information about this device can be found in Shiratech website:
https://www.shiratech-solutions.com/products/iot-box/

Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
---
 arch/arm/boot/dts/Makefile                |  1 +
 arch/arm/boot/dts/stm32mp157a-iot-box.dts | 68 +++++++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-iot-box.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 966b81dfffd6..455ec6eb6303 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1030,6 +1030,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
 	stm32h743i-disco.dtb \
 	stm32mp157a-avenger96.dtb \
 	stm32mp157a-dk1.dtb \
+	stm32mp157a-iot-box.dtb \
 	stm32mp157a-stinger96.dtb \
 	stm32mp157c-dhcom-pdk2.dtb \
 	stm32mp157c-dk2.dtb \
diff --git a/arch/arm/boot/dts/stm32mp157a-iot-box.dts b/arch/arm/boot/dts/stm32mp157a-iot-box.dts
new file mode 100644
index 000000000000..70f394b4d3c0
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp157a-iot-box.dts
@@ -0,0 +1,68 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2020 Manivannan Sadhasivam
+ */
+
+/dts-v1/;
+#include "stm32mp157a-stinger96.dtsi"
+
+/ {
+	model = "Shiratech STM32MP157A IoT Box";
+	compatible = "shiratech,stm32mp157a-iot-box", "st,stm32mp157";
+
+	wlan_pwr: regulator-wlan {
+		compatible = "regulator-fixed";
+
+		regulator-name = "wl-reg";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpios = <&gpiog 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&i2c2 {
+	ccs811@5b {
+		compatible = "ams,ccs811";
+		reg = <0x5b>;
+		wakeup-gpios = <&gpioa 12 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
+	};
+};
+
+/* WiFi */
+&sdmmc2 {
+	pinctrl-names = "default", "opendrain", "sleep";
+	pinctrl-0 = <&sdmmc2_b4_pins_a>;
+	pinctrl-1 = <&sdmmc2_b4_od_pins_b>;
+	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a>;
+	broken-cd;
+	non-removable;
+	st,neg-edge;
+	bus-width = <1>;
+	vmmc-supply = <&wlan_pwr>;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	brcmf: bcrmf@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* Bluetooth */
+&uart4 {
+	/* Note: HW flow control is broken, hence using custom CTS/RTS gpios */
+	/delete-property/st,hw-flow-ctrl;
+	cts-gpios = <&gpioa 15 GPIO_ACTIVE_LOW>;
+	rts-gpios = <&gpiob 0 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	bluetooth {
+		shutdown-gpios = <&gpiog 2 GPIO_ACTIVE_HIGH>;
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <115200>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
