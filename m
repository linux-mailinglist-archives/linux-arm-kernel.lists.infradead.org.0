Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8D92007E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drfAMgrS7cbNGAPdPM1VjiLCAxTfvoCtxjy199GiIrE=; b=IaVzNyF0kU4d4R
	Fsjn+gAjznpkowt6aBbwtoVb0GAFvHAheDE23CUNtNHrbromOMT0ni3f5GaFLpktL5Rb3uUJd80El
	luotgvokxLFFH+0QYbVrEbBHJ8sxB6zmx0gXyJtMSreiRNe1a1oylkhpdb2og2yOcRaSiiOCI6UAj
	rrRrhSvc7xSMqSDqe1UZbV2qRLuKS350ABtsJ3dI5jQe8MOHYgx0jRFCjBVJoyIiK9jx8xUkht9dy
	XKfRthPuhnw3yOLKhxQagXW9vNXIhOD4aRPA0KC5I05rEPkcXrUHOoHt3dgYdadixvfmmVx6p4r+D
	F6XiM8Tbx/bs7rOyaJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFGq-0001dB-8i; Fri, 19 Jun 2020 11:33:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFO-0000ST-NV
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566310; x=1624102310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6bWMVQyiZhkbxaK4Gike1YVVJfzi1Pv5G9DM+U2OgNg=;
 b=kkeVTfNOM4kVQUa8JHvqEr83vlJlYgcfyrfsm90D7WWuopR5b9TB8EjJ
 MzpivXCmtwvTlLCm3yflKnGDfirz/CDaRk32ncu/JGhK9sI+t0/+3wlE2
 BmYjvFxrwnaDgDajBj6ScA6u1dI14+fTLXPXUBbLiM0+6J/xNELJaV7Y/
 fxTUHDbOuR70ZnMBjoBQERMXN7GPsGSxlTck0klPQ/25PLLNxl08uYnJX
 ftvBtJC0BwJirDlYlbOyzxN/BuQVlIqfLpKK7NK+zoMcuFjZBV6TLa8V6
 jLEYdd9Ds6PlO89KD0izfdzBmxx+n2J+gTz5qMCaEqexTT3J4HbclgDbG g==;
IronPort-SDR: B6Q/1J4o6f/kMH+pKLOZp3P7PIczT9Q7OpYp8zBmP02/QvdiRcPB1Ll7xGkPBIZ4fOLRzdk6jQ
 lbKfDyopOht4pH855xIAlsM6bGS7IgL+q+NzkN5ZBIDucqFz99WMaSLJoR6A7wOJBoBISEbJiR
 P7+Cfk8Gb5hlq7xgyjS1vRwMJXUXpinjAG++UWVT4P1LhoVmB+25MaguGRI6nkVrVXNW4coZcc
 92Zm4Wb6212yCHbs0HVbybmmQRKHvi3yBU0Nxn5VbB05X7mOH20WwjatUfDbY0xUOu7IYpXKkr
 OjE=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="77162032"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:47 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:40 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:38 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH v2 6/6] arm64: dts: sparx5: Add spi-nand devices
Date: Fri, 19 Jun 2020 13:31:21 +0200
Message-ID: <20200619113121.9984-7-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043150_844365_3F717106 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add spi-nand DT nodes to the applicable Sparx5 boards.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 20 ++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  7 ++++++
 .../boot/dts/microchip/sparx5_pcb134.dts      | 22 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb135.dts      | 23 +++++++++++++++++++
 4 files changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 2404bcc08b89d..dd666d185e466 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -201,6 +201,26 @@ gpio: pinctrl@6110101e0 {
 			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 			#interrupt-cells = <2>;
 
+			cs1_pins: cs1-pins {
+				pins = "GPIO_16";
+				function = "si";
+			};
+
+			cs2_pins: cs2-pins {
+				pins = "GPIO_17";
+				function = "si";
+			};
+
+			cs3_pins: cs3-pins {
+				pins = "GPIO_18";
+				function = "si";
+			};
+
+			si2_pins: si2-pins {
+				pins = "GPIO_39", "GPIO_40", "GPIO_41";
+				function = "si2";
+			};
+
 			uart_pins: uart-pins {
 				pins = "GPIO_10", "GPIO_11";
 				function = "uart";
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index d8b5d23abfab0..94c4c3fd5a786 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -46,6 +46,13 @@ spi-flash@0 {
 		spi-max-frequency = <8000000>; /* input clock */
 		reg = <0>; /* CS0 */
 	};
+	spi-flash@1 {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs1_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <8000000>;
+		reg = <1>; /* CS1 */
+	};
 };
 
 &i2c1 {
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
index feee4e99ff57c..7aee0548e44cb 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
@@ -15,3 +15,25 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	cs14_pins: cs14-pins {
+		pins = "GPIO_44";
+		function = "si";
+	};
+};
+
+&spi0 {
+	pinctrl-0 = <&si2_pins>;
+	pinctrl-names = "default";
+	/* Dedicated SPI2 interface */
+	spi-flash@e {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs14_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <42000000>;
+		reg = <14>;
+		microchip,spi-interface2;	/* SPI2 */
+		snps,rx-sample-delay-ns = <7>;  /* Tune for speed */
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
index 20e409a9be196..8f2329ce02030 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
@@ -15,3 +15,26 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	cs14_pins: cs14-pins {
+		pins = "GPIO_44";
+		function = "si";
+	};
+};
+
+&spi0 {
+	status = "okay";
+	pinctrl-0 = <&si2_pins>;
+	pinctrl-names = "default";
+	/* Dedicated SPI2 interface */
+	spi-flash@e {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs14_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <42000000>;
+		reg = <14>;
+		microchip,spi-interface2;	/* SPI2 */
+		snps,rx-sample-delay-ns = <7>;  /* Tune for speed */
+	};
+};
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
