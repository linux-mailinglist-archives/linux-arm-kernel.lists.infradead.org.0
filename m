Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEA6B0236
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AfLlcIT/Gt/krEzMJRcgyC/9bKT+dyzTL9/656eQGps=; b=rb+vJzFwTo0GD/
	w466NIX7hvxBCItOYKW+PEvFel2KHFGmsI1+CwsD61ESGEKf/WDOcJRd0ABZy8I35CBUkTIPCaKmT
	GjyLmEYraBRgssdXCGMSebCguEaYG5g5D9Q5uemtttPDA2DSi/8cCVIPpHQ0kV/wbOEDT4MS/tsnU
	SDe5YkUhv0kFqBXYlLElWrYGEmdXWJ5vjK++Nt6aHyBAPCIDLzj9ULSvPRewZpYSoqiAiSMsAuEjx
	k7hPcYv47R76zs+yKH3zT0VH3C+mO57OOEff/FDIV+eCuwhgDf1TSD2ctWdi/GSpUATfCMsfiJcr0
	VI2FBdaB/LcPXovpgIfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85vI-0005W9-HV; Wed, 11 Sep 2019 16:56:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85v2-0005VV-BE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:56:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id d17so12620420wrq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 09:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0DXDuLCpbbiTKUel+Pw17xiWEwG8zwVTEDTq9MQHljQ=;
 b=WU/cjS5MKV5YZZPGOj06fn2pkDvQgv/il53kRmwYNc5t53dSQSNPuCHTSsYhLKE3uw
 vPjO91vanj2g+9Df+kg0ALbpEI2xHYhzyzda5WnZlSJqyCBnuEFJIQxSCJLuL4qzqIU9
 HQ1QcojQHbHqt3Z7BdASInueHW9eGOQOJp5Km7Xmddvke9fVtkpJUE/7OxYN+85q/LwT
 HTSs7angBhtMfkMDC/gCMWNz9sYO4R2TwjBJ5StXRzOEqFWGDFJZHRMtYUHakrNwhBCi
 2iqRk8HhwqlwZ1uJRP08r5BXMxB3o73R1URxZeXA0KC08y74m/q/h37U0Gh8ejq/D6dX
 TfwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=0DXDuLCpbbiTKUel+Pw17xiWEwG8zwVTEDTq9MQHljQ=;
 b=k9XA+NjcdM5jnFukmWSkRuJFgaaq1HFitLmAGwgtrWrkHyVmCk8sP2YuBdKXpguNSk
 tPiXi+kwT9Lr6FNgGEfY6v4jMF74sFpuu4ujG9uDUiDrOO47vo7g5SKo3BBRk3n9um/S
 eUZjoch3K2xut/dBJUSIm0ORgBA8Fb6Sa0HRpbZF+tJWd71+yftVbw213L9bAzhd6y/n
 4UL02QbfKxw5xC1TxtFCcresO6dO/jcZZBAc+C2ZlafaI2SabYkZmN9GBrv/+x6LycKS
 zpItqiqXDQJZtNUqr1d6lAmv7/7YcXvMlIhfeH8Suo3fSmArCUFlv2YSvGUN+EgSOshQ
 tA2g==
X-Gm-Message-State: APjAAAV9NSOoHNAW+bwgb87O4uv0YHG/SUN2HDrD4f93ESD1mY6Db2zr
 WNY+aP119fwCcFvVMHTokn5sYWnpbZY=
X-Google-Smtp-Source: APXvYqxEp5dZr2uWXbmzvfwsZAiq7DccIq1Snb52rWifZ0wiO9TC/CvE3bzzFHCUqPnXCAmlnNp9AA==
X-Received: by 2002:adf:ed8f:: with SMTP id c15mr30537215wro.83.1568220993807; 
 Wed, 11 Sep 2019 09:56:33 -0700 (PDT)
Received: from voyager.emea.ibm.com ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id m18sm28811202wrg.97.2019.09.11.09.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:56:33 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: soc@kernel.org
Subject: [PATCH 1/2] ARM: dts: aspeed: Add AST2600 and EVB
Date: Wed, 11 Sep 2019 17:56:13 +0100
Message-Id: <20190911165614.31641-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_095636_384717_3A001010 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 is a new SoC by ASPEED. It contains a dual core Cortex A7
CPU and shares many periperhals with the existing AST2400 and AST2500.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/Makefile               |   1 +
 arch/arm/boot/dts/aspeed-ast2600-evb.dts |  80 +++++++
 arch/arm/boot/dts/aspeed-g6.dtsi         | 266 +++++++++++++++++++++++
 3 files changed, 347 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed-ast2600-evb.dts
 create mode 100644 arch/arm/boot/dts/aspeed-g6.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index a24a6a132b07..40a5178ba25c 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1278,6 +1278,7 @@ dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
+	aspeed-ast2600-evb.dtb \
 	aspeed-bmc-arm-centriq2400-rep.dtb \
 	aspeed-bmc-arm-stardragon4800-rep2.dtb \
 	aspeed-bmc-facebook-cmm.dtb \
diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
new file mode 100644
index 000000000000..9870553919b7
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
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
+&mdio2 {
+	status = "okay";
+
+	ethphy2: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mdio3 {
+	status = "okay";
+
+	ethphy3: ethernet-phy@0 {
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
+&mac2 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy2>;
+};
+
+&mac3 {
+	status = "okay";
+
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy3>;
+};
+
+&emmc {
+	status = "okay";
+};
+
+&rtc {
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
