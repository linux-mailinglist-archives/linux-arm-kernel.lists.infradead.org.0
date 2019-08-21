Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC721971D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 07:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpa40zB8RwcDlzkuB8XZdJcSjsmVxd3D8bVxfKTksj0=; b=t9gl02QRqtjJry
	WWxNT0uDiuXoekydZB05/Eh0F7X5soKF2VTP4cm2RLYPg7Vek9WVloWy8JmcmM5V6H0zupA+PbAlt
	hMxKYTpc0PLG9suH/dgrTlkeU/rVtWoq/Ryt4lG18Ru3niwCQi3FT4djAInQNxb7D/inmAQ0PbqnE
	Y3L3jOZ8mZn6oz6iqJsF6IQZaDrA0BzSFc6chd+v+TlB53fWVB2gUcdHrPowGh7nI97YtfpbpTA7u
	ovR/kn35rF8aEQZkzOxLBIsodZeEspEL7zHr8PEZfjm5wjQ3P8Xru8s14GLv+Z1YEuyNCuqeoPO7K
	++zDrjSmcxE3XYqT+54w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Jcy-0000Hv-DI; Wed, 21 Aug 2019 05:57:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0JbS-0007YQ-NU
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 05:56:16 +0000
Received: by mail-pl1-x641.google.com with SMTP id f19so726918plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 22:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kBuMdl3ouzT5F6CQ56x8UxMBUnjULwPlonuZLKRPfuA=;
 b=L8CgZh8S7a8Bmk+crzkNrRbob8X/xUp3A440SkxVzNrVA4E9P3fToLi4QSqfB9Ypc8
 rFf/IwcUWpGAHlnviG8HsEfBFBmmB54eFyrYZ1ce0s/XbBT1YbCEBv9oqxbs63070HmP
 2wfOAQpcIiEQfaeWLj9LbLK/iHRGbipWEvfOP3sJ7fJ29c9keQl1kiwioaoOV4x4WwkV
 tbxVkY3pKcR9m4tiTH/zgY70f4WDaoHhI2giPk1y2OAM2w9ro5Z92K7ezi3f/yE34EK1
 q9txJKFtKu1l7nPU4x9uOeZpZIxeYtcM6EdFKqB20+g06z3M3XOqAjVzorTzFdoFsjaR
 HjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=kBuMdl3ouzT5F6CQ56x8UxMBUnjULwPlonuZLKRPfuA=;
 b=ukDhL19up6VJBjnlsYWzIvy1Ah9FWwdKgrK8l9BIUcNu52TOhHPa/enkybnsZB2gRh
 ToMdgK4amb1Fxo0TVq4UvBi789nbylvg27KaTrCNwlKTRcRW1X0nnLHO6Efhp9Om+vqP
 2kae0hgbuCkaudMIg4FAeodPsWHAH6kLwow5t4fsFcY+61ZapdbPRaHf8/STH+mLlzMB
 Yy+4JMO7zgMyhsXlvcBwglBAE6OrdlXoLzaDatNu1o+wJ8diTVjAOi5V+bjeKB6cdjI8
 8zNbh65rfCOGGFfkwjB8ld5qc0u3VcUAj3P8jY6rTpw1eSHh0vV0wW4MSPKqXGOQAExf
 UoOA==
X-Gm-Message-State: APjAAAWo7Jhk+YR1QV6RTfIDxNiYUswM2S7CaAntoGQmtgicAxJGnvrB
 MCHp94nHOdE37vH9rHcGxIg=
X-Google-Smtp-Source: APXvYqwx3Wcnc1YkkoISw1jxugTO+5qgp6eivh6zt+iIUMa7tVtslvyKR/Np6g/6Jwjz4svEfS0fPg==
X-Received: by 2002:a17:902:4201:: with SMTP id
 g1mr32294164pld.300.1566366973859; 
 Tue, 20 Aug 2019 22:56:13 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 22:56:13 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 5/7] ARM: dts: aspeed: Add AST2600 and EVB
Date: Wed, 21 Aug 2019 15:25:28 +0930
Message-Id: <20190821055530.8720-6-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_225615_025482_DE86C3DE 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 is a new SoC by ASPEED. It contains a dual core Cortex A7
CPU and shares many periperhals with the existing AST2400 and AST2500.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/Makefile               |   1 +
 arch/arm/boot/dts/aspeed-ast2600-evb.dts |  44 ++++
 arch/arm/boot/dts/aspeed-g6.dtsi         | 266 +++++++++++++++++++++++
 3 files changed, 311 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed-ast2600-evb.dts
 create mode 100644 arch/arm/boot/dts/aspeed-g6.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 247e556de48e..2d8d29e5686d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1276,6 +1276,7 @@ dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
+	aspeed-ast2600-evb.dtb \
 	aspeed-bmc-arm-centriq2400-rep.dtb \
 	aspeed-bmc-arm-stardragon4800-rep2.dtb \
 	aspeed-bmc-facebook-cmm.dtb \
diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
new file mode 100644
index 000000000000..7f2528e084b5
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0+
+// Copyright 2019 IBM Corp.
+
+/dts-v1/;
+
+#include "aspeed-g6.dtsi"
+
+/ {
+	model = "AST2600 EVB";
+	compatible = "aspeed,ast2600";
+
+	aliases {
+		serial4 = &uart5;
+	};
+
+	chosen {
+		bootargs = "console=ttyS4,115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x80000000>;
+	};
+};
+
+&mdio1 {
+	status = "okay";
+
+	ethphy1: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mac1 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy1>;
+};
+
+&emmc {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
new file mode 100644
index 000000000000..9f9931541060
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed-g6.dtsi
@@ -0,0 +1,266 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2019 IBM Corp.
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/ast2600-clock.h>
+
+/ {
+	model = "Aspeed BMC";
+	compatible = "aspeed,ast2600";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	interrupt-parent = <&gic>;
+
+	aliases {
+		serial4 = &uart5;
+	};
+
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		enable-method = "aspeed,ast2600-smp";
+
+		cpu@f00 {
+			compatible = "arm,cortex-a7";
+			device_type = "cpu";
+			reg = <0xf00>;
+		};
+
+		cpu@f01 {
+			compatible = "arm,cortex-a7";
+			device_type = "cpu";
+			reg = <0xf01>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
+		clocks = <&syscon ASPEED_CLK_HPLL>;
+		arm,cpu-registers-not-fw-configured;
+	};
+
+	ahb {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		device_type = "soc";
+		ranges;
+
+		gic: interrupt-controller@40461000 {
+			compatible = "arm,cortex-a7-gic";
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_HIGH)>;
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			interrupt-parent = <&gic>;
+			reg = <0x40461000 0x1000>,
+			    <0x40462000 0x1000>,
+			    <0x40464000 0x2000>,
+			    <0x40466000 0x2000>;
+			};
+
+		mdio0: mdio@1e650000 {
+			compatible = "aspeed,ast2600-mdio";
+			reg = <0x1e650000 0x8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		mdio1: mdio@1e650008 {
+			compatible = "aspeed,ast2600-mdio";
+			reg = <0x1e650008 0x8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		mdio2: mdio@1e650010 {
+			compatible = "aspeed,ast2600-mdio";
+			reg = <0x1e650010 0x8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		mdio3: mdio@1e650018 {
+			compatible = "aspeed,ast2600-mdio";
+			reg = <0x1e650018 0x8>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		mac0: ftgmac@1e660000 {
+			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
+			reg = <0x1e660000 0x180>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>;
+			status = "disabled";
+		};
+
+		mac1: ftgmac@1e680000 {
+			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
+			reg = <0x1e680000 0x180>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_MAC2CLK>;
+			status = "disabled";
+		};
+
+		mac2: ftgmac@1e670000 {
+			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
+			reg = <0x1e670000 0x180>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_MAC3CLK>;
+			status = "disabled";
+		};
+
+		mac3: ftgmac@1e690000 {
+			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
+			reg = <0x1e690000 0x180>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&syscon ASPEED_CLK_GATE_MAC4CLK>;
+			status = "disabled";
+		};
+
+		apb {
+			compatible = "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+
+			syscon: syscon@1e6e2000 {
+				compatible = "aspeed,ast2600-scu", "syscon", "simple-mfd";
+				reg = <0x1e6e2000 0x1000>;
+				ranges = <0 0x1e6e2000 0x1000>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				#clock-cells = <1>;
+				#reset-cells = <1>;
+
+				pinctrl: pinctrl {
+					compatible = "aspeed,ast2600-pinctrl";
+				};
+
+				smp-memram@180 {
+					compatible = "aspeed,ast2600-smpmem";
+					reg = <0x180 0x40>;
+				};
+			};
+
+			rng: hwrng@1e6e2524 {
+				compatible = "timeriomem_rng";
+				reg = <0x1e6e2524 0x4>;
+				period = <1>;
+				quality = <100>;
+			};
+
+			rtc: rtc@1e781000 {
+				compatible = "aspeed,ast2600-rtc";
+				reg = <0x1e781000 0x18>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			uart5: serial@1e784000 {
+				compatible = "ns16550a";
+				reg = <0x1e784000 0x1000>;
+				reg-shift = <2>;
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&syscon ASPEED_CLK_GATE_UART5CLK>;
+				no-loopback-test;
+			};
+
+			wdt1: watchdog@1e785000 {
+				compatible = "aspeed,ast2600-wdt";
+				reg = <0x1e785000 0x40>;
+			};
+
+			wdt2: watchdog@1e785040 {
+				compatible = "aspeed,ast2600-wdt";
+				reg = <0x1e785040 0x40>;
+				status = "disabled";
+			};
+
+			wdt3: watchdog@1e785080 {
+				compatible = "aspeed,ast2600-wdt";
+				reg = <0x1e785080 0x40>;
+				status = "disabled";
+			};
+
+			wdt4: watchdog@1e7850C0 {
+				compatible = "aspeed,ast2600-wdt";
+				reg = <0x1e7850C0 0x40>;
+				status = "disabled";
+			};
+
+			sdc: sdc@1e740000 {
+				compatible = "aspeed,ast2600-sd-controller";
+				reg = <0x1e740000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e740000 0x10000>;
+				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+				status = "disabled";
+
+				sdhci0: sdhci@1e740100 {
+					compatible = "aspeed,ast2600-sdhci", "sdhci";
+					reg = <0x100 0x100>;
+					interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+
+				sdhci1: sdhci@1e740200 {
+					compatible = "aspeed,ast2600-sdhci", "sdhci";
+					reg = <0x200 0x100>;
+					interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+					sdhci,auto-cmd12;
+					clocks = <&syscon ASPEED_CLK_SDIO>;
+					status = "disabled";
+				};
+			};
+
+			emmc: sdc@1e750000 {
+				compatible = "aspeed,ast2600-sd-controller";
+				reg = <0x1e750000 0x100>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0 0x1e750000 0x10000>;
+				clocks = <&syscon ASPEED_CLK_GATE_EMMCCLK>;
+				status = "disabled";
+
+				sdhci@1e750100 {
+					compatible = "aspeed,ast2600-sdhci";
+					reg = <0x100 0x100>;
+					sdhci,auto-cmd12;
+					interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+					clocks = <&syscon ASPEED_CLK_EMMC>;
+					pinctrl-names = "default";
+					pinctrl-0 = <&pinctrl_emmc_default>;
+				};
+			};
+		};
+	};
+};
+
+&pinctrl {
+	pinctrl_emmc_default: emmc_default {
+		function = "SD3";
+		groups = "SD3";
+	};
+};
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
