Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72AD1D173B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yo+teOrZfqjR5bCaCPIZIjs6e6tpsEoLFbOwx/tf4g4=; b=irwWs+s0RJbnx2
	0jFNCn7Jjw0m0HU4RjWku36qVxHmLo4nsuJZYbvfWpT7ddakIbnHjkmcg6JNeqWuyjXNAUYHG+Y4+
	br81ha/U9tvPAgZtzVYxMUE4vpIJiYAvehZypjoN4Apu21+YNdWX0ZCL5HgoqF5eI9jQnAxJYLqzu
	vUlLH60VLQELUYnsCv+LoqVekP3wfJ3ThOWmwmDeHFUbuVfigPLldVsnVxFwsKpEwmHU2yXXfKsk9
	3OAQCK8tUHj9SAqvgZ70oEGVN9rCOQD2y3L43hANDvlxqoR1pE8bRR7AdwvxXTToY7IliHF4a/ukQ
	IzoemrUtwv2KMJxPQoEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs84-0001Zv-CW; Wed, 13 May 2020 14:13:00 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs6w-0000w7-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589379110; x=1620915110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dj/tqGjjDtj2A9PaqeSsjiB8UtDRZ0jP0v5pZdM7/yE=;
 b=x0CGRYBOLFQT3tNNdiyIFEuLv2kuBwTjIgAyAQPvIAjdIb4Y8P4wJSjM
 TMg2Ba2tkkQH7WJYsnbD7/bq6HdQxCsJN/HuSZ6GRfIDpRlgyGmiKzMjk
 QSxcykofJcxzTf+/IvyI/jG2rOr+dycHx32T+oxvi2jH1xBaa0asNh5pR
 93U2lI4B5bmyDLBTxVgCz03n6EJG5JZlbkEDkoETIgLWk+Y21lv0f/GY9
 Q7jzCoysSgzOCYSoLZfOoO6b07Rr+GijrzHXfSHRXfED8ll2MqiKDqXSc
 47jyM6skmGuDtQhout8MuRR1JgXRbBFBh+A274kvahegS/MhxhPFAC1mc w==;
IronPort-SDR: GCvGB2O5qzhphdVtjFPJUTIZwX2bvDRmVC5jMlmG08bTSDE/UpKDexka79h8f1+0xeh1otbyAS
 ghS/6GRQIEWmYOv/ttTRyTxh4LlbTxjfg/O1nb25iLprkvGj1M+29RjIJKU0wpTvahP2fcP798
 n69qE+4Vxm1x/zXGZlttuXMmFPYDnsyz48p/qNSvlug9HzZzkh5o7OHIWdZ7gRVoaOG4S9Fm1i
 J+hXXCqMsuOaO/y72T+Wop97ARfagWMWYzDwbNqi8QHJN1Ln/Pfp8C39B+0TnD9/0dAEgy2VUP
 5rQ=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="76510168"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:11:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:11:48 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:11:46 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 3/3] arm64: dts: sparx5: Add SGPIO devices
Date: Wed, 13 May 2020 16:11:34 +0200
Message-ID: <20200513141134.25819-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513141134.25819-1-lars.povlsen@microchip.com>
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071150_677097_600B84C4 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds SGPIO devices for the Sparx5 SoC and configures it for the
applicable reference boards.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 52 +++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  5 ++
 .../dts/microchip/sparx5_pcb134_board.dtsi    |  5 ++
 3 files changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 60629861a5157..b4fda5616536c 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -213,6 +213,22 @@ si2_pins: si2-pins {
 				function = "si2";
 			};

+			sgpio0_pins: sgpio-pins {
+				pins = "GPIO_0", "GPIO_1", "GPIO_2", "GPIO_3";
+				function = "sg0";
+			};
+
+			sgpio1_pins: sgpio1-pins {
+				pins = "GPIO_4", "GPIO_5", "GPIO_12", "GPIO_13";
+				function = "sg1";
+			};
+
+			sgpio2_pins: sgpio2-pins {
+				pins = "GPIO_30", "GPIO_31", "GPIO_32",
+				       "GPIO_33";
+				function = "sg2";
+			};
+
 			uart_pins: uart-pins {
 				pins = "GPIO_10", "GPIO_11";
 				function = "uart";
@@ -243,6 +259,42 @@ emmc_pins: emmc-pins {
 			};
 		};

+		sgpio0: gpio@61101036c {
+			compatible = "mscc,ocelot-sgpio";
+			status = "disabled";
+			clocks = <&sys_clk>;
+			pinctrl-0 = <&sgpio0_pins>;
+			pinctrl-names = "default";
+			reg = <0x6 0x1101036c 0x100>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&gpio 0 64 64>;
+		};
+
+		sgpio1: gpio@611010484 {
+			compatible = "mscc,ocelot-sgpio";
+			status = "disabled";
+			clocks = <&sys_clk>;
+			pinctrl-0 = <&sgpio1_pins>;
+			pinctrl-names = "default";
+			reg = <0x6 0x11010484 0x100>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&gpio 0 128 64>;
+		};
+
+		sgpio2: gpio@61101059c {
+			compatible = "mscc,ocelot-sgpio";
+			status = "disabled";
+			clocks = <&sys_clk>;
+			pinctrl-0 = <&sgpio2_pins>;
+			pinctrl-names = "default";
+			reg = <0x6 0x1101059c 0x100>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&gpio 0 192 64>;
+		};
+
 		i2c0: i2c@600101000 {
 			compatible = "snps,designware-i2c";
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index 94c4c3fd5a786..fd4f5b3ddcc49 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -55,6 +55,11 @@ spi-flash@1 {
 	};
 };

+&sgpio0 {
+	status = "okay";
+	microchip,sgpio-ports = <0x00FFFFFF>;
+};
+
 &i2c1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
index 628a05d3f57ce..2f781258f8c99 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -47,6 +47,11 @@ spi-flash@0 {
 	};
 };

+&sgpio0 {
+	status = "okay";
+	microchip,sgpio-ports = <0x00FFFFFF>;
+};
+
 &gpio {
 	i2cmux_pins_i: i2cmux-pins-i {
 	       pins = "GPIO_16", "GPIO_17", "GPIO_18", "GPIO_19",
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
