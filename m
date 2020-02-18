Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB751162C5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rin8FPkqbfaNxEuEYvzmMZlVcSU9UjnVzWgePcKyBo=; b=Mk1Ilpx/eqoauM
	xNxZZw3YPaUmeE1RoNcisLpD/yLIOvIDfjB/21TVOuGz+3vMJ8IEH2fBeiVN8FVqEjzUcO5q7Rc9E
	4Zwqw056+rMngvIoF66jiHkpzR4JIxRVn/0PzdTe/mL25Tcvwti+NyB26xGX+1hqFKXthhUwI29VO
	/n4zCOcTQab9vOvFuIKjeDWH20XJ3mWFXpGMbv9kgbO0FIChjxm0caRPXKoFQBzy/pI79ZAJFS55Y
	hUzPkhorDJtYZBGnXC9gMyD6oFY1A+aZefZvqJE2voOH24387Uvw5Gm3cf0Wz8oHjPiOLh0iaJVO4
	7fAepITBMs1DLxpAGnXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46UT-0005yA-Ap; Tue, 18 Feb 2020 17:16:57 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46RK-00025Q-Fw
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:47 +0000
Received: by mail-ot1-f67.google.com with SMTP id w6so11048370otk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FoqaseM22NqKzdP6diWbwHzzLAglDjPvVApnWfidhno=;
 b=jD7cEeNENVlQznwjQjAxxwsqzssFG1aLt3IQvI8bVOkpgGwurfUvoeXgyALb0JXcwo
 Utn06I0SvJxSEJZ4RC/cVgnMBSXB3bqIBHAtBNbc5IcTuZv/fFShpR7o9uuKRDibRB5r
 l28mybiqhQ3YmsiY7BzkzEP/yiRTkOggraUd9OmZF76MBn3RB4LdSrkfVNOFacioA8B2
 uiNAGyc2zfM12it54XybshHKdmvPQLsZVCghE40MLLROvg27ItpTyeerqQCQYjm9+6vU
 dvEINIKf2LpUYj7xCLiMLEC+IK2SOyK8vu9tX6G51LVeJDB007y9F/NhKVXv6HG+hNMJ
 X1rQ==
X-Gm-Message-State: APjAAAVp46Sb46L8nw2dbD7e6bYt2bAOoV+AGGA98p0+EWdMRwJenDK+
 rCl/LGeYI/GZtRRrn7eRbqr3gJI=
X-Google-Smtp-Source: APXvYqw4vgSmdpsSYxMVMymSrQmGp8BN32RULVNjVRuf9KGXenrEyhdhKj6dTUd1/cfRh69w0KzQXA==
X-Received: by 2002:a9d:de9:: with SMTP id 96mr16562460ots.222.1582046020074; 
 Tue, 18 Feb 2020 09:13:40 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:39 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 10/11] ARM: dts: Remove Calxeda platforms
Date: Tue, 18 Feb 2020 11:13:20 -0600
Message-Id: <20200218171321.30990-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091342_702065_156DD5B3 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: devicetree@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/Makefile        |   3 -
 arch/arm/boot/dts/ecx-2000.dts    | 103 -------------
 arch/arm/boot/dts/ecx-common.dtsi | 230 ------------------------------
 arch/arm/boot/dts/highbank.dts    | 161 ---------------------
 4 files changed, 497 deletions(-)
 delete mode 100644 arch/arm/boot/dts/ecx-2000.dts
 delete mode 100644 arch/arm/boot/dts/ecx-common.dtsi
 delete mode 100644 arch/arm/boot/dts/highbank.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index d6546d2676b9..a78da2e25966 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -224,9 +224,6 @@ dtb-$(CONFIG_ARCH_GEMINI) += \
 	gemini-wbd222.dtb
 dtb-$(CONFIG_ARCH_HI3xxx) += \
 	hi3620-hi4511.dtb
-dtb-$(CONFIG_ARCH_HIGHBANK) += \
-	highbank.dtb \
-	ecx-2000.dtb
 dtb-$(CONFIG_ARCH_HIP01) += \
 	hip01-ca9x2.dtb
 dtb-$(CONFIG_ARCH_HIP04) += \
diff --git a/arch/arm/boot/dts/ecx-2000.dts b/arch/arm/boot/dts/ecx-2000.dts
deleted file mode 100644
index 5651ae6dc969..000000000000
--- a/arch/arm/boot/dts/ecx-2000.dts
+++ /dev/null
@@ -1,103 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-
-/dts-v1/;
-
-/* First 4KB has pen for secondary cores. */
-/memreserve/ 0x00000000 0x0001000;
-
-/ {
-	model = "Calxeda ECX-2000";
-	compatible = "calxeda,ecx-2000";
-	#address-cells = <2>;
-	#size-cells = <2>;
-	clock-ranges;
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu@0 {
-			compatible = "arm,cortex-a15";
-			device_type = "cpu";
-			reg = <0>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-		};
-
-		cpu@1 {
-			compatible = "arm,cortex-a15";
-			device_type = "cpu";
-			reg = <1>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-		};
-
-		cpu@2 {
-			compatible = "arm,cortex-a15";
-			device_type = "cpu";
-			reg = <2>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-		};
-
-		cpu@3 {
-			compatible = "arm,cortex-a15";
-			device_type = "cpu";
-			reg = <3>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-		};
-	};
-
-	memory@0 {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x00000000 0x00000000 0x00000000 0xff800000>;
-	};
-
-	memory@200000000 {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x00000002 0x00000000 0x00000003 0x00000000>;
-	};
-
-	soc {
-		ranges = <0x00000000 0x00000000 0x00000000 0xffffffff>;
-
-		timer {
-			compatible = "arm,cortex-a15-timer", "arm,armv7-timer"; 			interrupts = <1 13 0xf08>,
-				<1 14 0xf08>,
-				<1 11 0xf08>,
-				<1 10 0xf08>;
-		};
-
-		memory-controller@fff00000 {
-			compatible = "calxeda,ecx-2000-ddr-ctrl";
-			reg = <0xfff00000 0x1000>;
-			interrupts = <0 91 4>;
-		};
-
-		intc: interrupt-controller@fff11000 {
-			compatible = "arm,cortex-a15-gic";
-			#interrupt-cells = <3>;
-			#size-cells = <0>;
-			#address-cells = <1>;
-			interrupt-controller;
-			interrupts = <1 9 0xf04>;
-			reg = <0xfff11000 0x1000>,
-			      <0xfff12000 0x2000>,
-			      <0xfff14000 0x2000>,
-			      <0xfff16000 0x2000>;
-		};
-
-		pmu {
-			compatible = "arm,cortex-a9-pmu";
-			interrupts = <0 76 4  0 75 4  0 74 4  0 73 4>;
-		};
-	};
-};
-
-/include/ "ecx-common.dtsi"
diff --git a/arch/arm/boot/dts/ecx-common.dtsi b/arch/arm/boot/dts/ecx-common.dtsi
deleted file mode 100644
index 66ee1d34f72b..000000000000
--- a/arch/arm/boot/dts/ecx-common.dtsi
+++ /dev/null
@@ -1,230 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-
-/ {
-	chosen {
-		bootargs = "console=ttyAMA0";
-	};
-
-	psci {
-		compatible	= "arm,psci";
-		method		= "smc";
-		cpu_suspend	= <0x84000002>;
-		cpu_off		= <0x84000004>;
-		cpu_on		= <0x84000006>;
-	};
-
-	soc {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "simple-bus";
-		interrupt-parent = <&intc>;
-
-		sata@ffe08000 {
-			compatible = "calxeda,hb-ahci";
-			reg = <0xffe08000 0x10000>;
-			interrupts = <0 83 4>;
-			dma-coherent;
-			calxeda,port-phys = <&combophy5 0 &combophy0 0
-					     &combophy0 1 &combophy0 2
-					     &combophy0 3>;
-			calxeda,sgpio-gpio =<&gpioh 5 1 &gpioh 6 1 &gpioh 7 1>;
-			calxeda,led-order = <4 0 1 2 3>;
-		};
-
-		sdhci@ffe0e000 {
-			compatible = "calxeda,hb-sdhci";
-			reg = <0xffe0e000 0x1000>;
-			interrupts = <0 90 4>;
-			clocks = <&eclk>;
-			status = "disabled";
-		};
-
-		ipc@fff20000 {
-			compatible = "arm,pl320", "arm,primecell";
-			reg = <0xfff20000 0x1000>;
-			interrupts = <0 7 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-		};
-
-		gpioe: gpio@fff30000 {
-			#gpio-cells = <2>;
-			compatible = "arm,pl061", "arm,primecell";
-			gpio-controller;
-			reg = <0xfff30000 0x1000>;
-			interrupts = <0 14 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		gpiof: gpio@fff31000 {
-			#gpio-cells = <2>;
-			compatible = "arm,pl061", "arm,primecell";
-			gpio-controller;
-			reg = <0xfff31000 0x1000>;
-			interrupts = <0 15 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		gpiog: gpio@fff32000 {
-			#gpio-cells = <2>;
-			compatible = "arm,pl061", "arm,primecell";
-			gpio-controller;
-			reg = <0xfff32000 0x1000>;
-			interrupts = <0 16 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		gpioh: gpio@fff33000 {
-			#gpio-cells = <2>;
-			compatible = "arm,pl061", "arm,primecell";
-			gpio-controller;
-			reg = <0xfff33000 0x1000>;
-			interrupts = <0 17 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-			status = "disabled";
-		};
-
-		timer@fff34000 {
-			compatible = "arm,sp804", "arm,primecell";
-			reg = <0xfff34000 0x1000>;
-			interrupts = <0 18 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-		};
-
-		rtc@fff35000 {
-			compatible = "arm,pl031", "arm,primecell";
-			reg = <0xfff35000 0x1000>;
-			interrupts = <0 19 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-		};
-
-		serial@fff36000 {
-			compatible = "arm,pl011", "arm,primecell";
-			reg = <0xfff36000 0x1000>;
-			interrupts = <0 20 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-		};
-
-		smic@fff3a000 {
-			compatible = "ipmi-smic";
-			device_type = "ipmi";
-			reg = <0xfff3a000 0x1000>;
-			interrupts = <0 24 4>;
-			reg-size = <4>;
-			reg-spacing = <4>;
-		};
-
-		sregs@fff3c000 {
-			compatible = "calxeda,hb-sregs";
-			reg = <0xfff3c000 0x1000>;
-
-			clocks {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				osc: oscillator {
-					#clock-cells = <0>;
-					compatible = "fixed-clock";
-					clock-frequency = <33333000>;
-				};
-
-				ddrpll: ddrpll {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-pll-clock";
-					clocks = <&osc>;
-					reg = <0x108>;
-				};
-
-				a9pll: a9pll {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-pll-clock";
-					clocks = <&osc>;
-					reg = <0x100>;
-				};
-
-				a9periphclk: a9periphclk {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-a9periph-clock";
-					clocks = <&a9pll>;
-					reg = <0x104>;
-				};
-
-				a9bclk: a9bclk {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-a9bus-clock";
-					clocks = <&a9pll>;
-					reg = <0x104>;
-				};
-
-				emmcpll: emmcpll {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-pll-clock";
-					clocks = <&osc>;
-					reg = <0x10C>;
-				};
-
-				eclk: eclk {
-					#clock-cells = <0>;
-					compatible = "calxeda,hb-emmc-clock";
-					clocks = <&emmcpll>;
-					reg = <0x114>;
-				};
-
-				pclk: pclk {
-					#clock-cells = <0>;
-					compatible = "fixed-clock";
-					clock-frequency = <150000000>;
-				};
-			};
-		};
-
-		dma@fff3d000 {
-			compatible = "arm,pl330", "arm,primecell";
-			reg = <0xfff3d000 0x1000>;
-			interrupts = <0 92 4>;
-			clocks = <&pclk>;
-			clock-names = "apb_pclk";
-		};
-
-		ethernet@fff50000 {
-			compatible = "calxeda,hb-xgmac";
-			reg = <0xfff50000 0x1000>;
-			interrupts = <0 77 4  0 78 4  0 79 4>;
-			dma-coherent;
-		};
-
-		ethernet@fff51000 {
-			compatible = "calxeda,hb-xgmac";
-			reg = <0xfff51000 0x1000>;
-			interrupts = <0 80 4  0 81 4  0 82 4>;
-			dma-coherent;
-		};
-
-		combophy0: combo-phy@fff58000 {
-			compatible = "calxeda,hb-combophy";
-			#phy-cells = <1>;
-			reg = <0xfff58000 0x1000>;
-			phydev = <5>;
-		};
-
-		combophy5: combo-phy@fff5d000 {
-			compatible = "calxeda,hb-combophy";
-			#phy-cells = <1>;
-			reg = <0xfff5d000 0x1000>;
-			phydev = <31>;
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/highbank.dts b/arch/arm/boot/dts/highbank.dts
deleted file mode 100644
index f4e4dca6f7e7..000000000000
--- a/arch/arm/boot/dts/highbank.dts
+++ /dev/null
@@ -1,161 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-
-/dts-v1/;
-
-/* First 4KB has pen for secondary cores. */
-/memreserve/ 0x00000000 0x0001000;
-
-/ {
-	model = "Calxeda Highbank";
-	compatible = "calxeda,highbank";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	clock-ranges;
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu@900 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <0x900>;
-			next-level-cache = <&L2>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-			operating-points = <
-				/* kHz    ignored */
-				 1300000  1000000
-				 1200000  1000000
-				 1100000  1000000
-				  800000  1000000
-				  400000  1000000
-				  200000  1000000
-			>;
-			clock-latency = <100000>;
-		};
-
-		cpu@901 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <0x901>;
-			next-level-cache = <&L2>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-			operating-points = <
-				/* kHz    ignored */
-				 1300000  1000000
-				 1200000  1000000
-				 1100000  1000000
-				  800000  1000000
-				  400000  1000000
-				  200000  1000000
-			>;
-			clock-latency = <100000>;
-		};
-
-		cpu@902 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <0x902>;
-			next-level-cache = <&L2>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-			operating-points = <
-				/* kHz    ignored */
-				 1300000  1000000
-				 1200000  1000000
-				 1100000  1000000
-				  800000  1000000
-				  400000  1000000
-				  200000  1000000
-			>;
-			clock-latency = <100000>;
-		};
-
-		cpu@903 {
-			compatible = "arm,cortex-a9";
-			device_type = "cpu";
-			reg = <0x903>;
-			next-level-cache = <&L2>;
-			clocks = <&a9pll>;
-			clock-names = "cpu";
-			operating-points = <
-				/* kHz    ignored */
-				 1300000  1000000
-				 1200000  1000000
-				 1100000  1000000
-				  800000  1000000
-				  400000  1000000
-				  200000  1000000
-			>;
-			clock-latency = <100000>;
-		};
-	};
-
-	memory {
-		name = "memory";
-		device_type = "memory";
-		reg = <0x00000000 0xff900000>;
-	};
-
-	soc {
-		ranges = <0x00000000 0x00000000 0xffffffff>;
-
-		memory-controller@fff00000 {
-			compatible = "calxeda,hb-ddr-ctrl";
-			reg = <0xfff00000 0x1000>;
-			interrupts = <0 91 4>;
-		};
-
-		timer@fff10600 {
-			compatible = "arm,cortex-a9-twd-timer";
-			reg = <0xfff10600 0x20>;
-			interrupts = <1 13 0xf01>;
-			clocks = <&a9periphclk>;
-		};
-
-		watchdog@fff10620 {
-			compatible = "arm,cortex-a9-twd-wdt";
-			reg = <0xfff10620 0x20>;
-			interrupts = <1 14 0xf01>;
-			clocks = <&a9periphclk>;
-		};
-
-		intc: interrupt-controller@fff11000 {
-			compatible = "arm,cortex-a9-gic";
-			#interrupt-cells = <3>;
-			#size-cells = <0>;
-			#address-cells = <1>;
-			interrupt-controller;
-			reg = <0xfff11000 0x1000>,
-			      <0xfff10100 0x100>;
-		};
-
-		L2: l2-cache {
-			compatible = "arm,pl310-cache";
-			reg = <0xfff12000 0x1000>;
-			interrupts = <0 70 4>;
-			cache-unified;
-			cache-level = <2>;
-		};
-
-		pmu {
-			compatible = "arm,cortex-a9-pmu";
-			interrupts = <0 76 4  0 75 4  0 74 4  0 73 4>;
-		};
-
-
-		sregs@fff3c200 {
-			compatible = "calxeda,hb-sregs-l2-ecc";
-			reg = <0xfff3c200 0x100>;
-			interrupts = <0 71 4  0 72 4>;
-		};
-
-	};
-};
-
-/include/ "ecx-common.dtsi"
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
