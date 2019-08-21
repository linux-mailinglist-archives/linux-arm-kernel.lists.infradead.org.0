Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E396D9700C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ioluCm+P+I0nvibz9yDYTbOEFJ1f799K4LZuOiyNVG0=; b=Kgt
	ve+JLRccRDTc7IBwc+U/y6fzlFahDwsX1XnfgHOXMrLi72PPaSUQg/0n6CYanNJ+FYneCODIEH6lI
	nrV5LXkD3QGgBAC4G0i7ZJDILXPSTXXjpJeGV/xi9XKP7fJHcXDh0+yLpCvqf8fxaCd/H4ssdKSn+
	2irz+wl8Ub3To0ZOWJgE/tNf9xQaLo4MYUe6QcLsxGn79f/YNvjHMFUfL//OXq5fFVMaGXrHh4aV1
	46TdwJbprvDjqsfkfQIg5oZVdTfbgMT3WYeMpIrD29Tppe/vDncrXC0mJEOU5lYdozlolRoFQV5ax
	9CLmnMHF7FPNLGwX6rg0N897CC0lYWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0H2U-0000Lm-9Y; Wed, 21 Aug 2019 03:11:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0H2G-0000KG-S5; Wed, 21 Aug 2019 03:11:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id bj8so515221plb.4;
 Tue, 20 Aug 2019 20:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=G1nCXC76Y9r1PcPPOKzrGIXejyI4Br6vCxf/JF13SUc=;
 b=BdXTC5jG4VY3o0fafmPYbfsWwNGPdGmN9na1gtIhXyF6b7/bwudsncmj/8nZqItNA4
 avx3G/BGDKzMnIGHE2hDPsRy1PtcYKOPJRVxPl4CPp5ho3mXg1+qwHSwyzlLnKFbeEvX
 oRmjskC47D/mLuwZmd9uIs/SAsS0Vdp9I3m4M5zKOEN1us2baju1qxYzmStq/xzYb8RJ
 gqYUBrNXTB/9R/0CS8Xyo5eH/zqzsBb0ED0jKFfuIZ7sTaNQhbURE/QKuNmOTmV7uJQ3
 2leMML6ZS+0UlvHl/a65ZqGj8JQ1TVIJkyuSz4AybsrLGHdC0lDgwRC/xJNYJv/J7kHs
 YCkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=G1nCXC76Y9r1PcPPOKzrGIXejyI4Br6vCxf/JF13SUc=;
 b=IQv+7tuW5MCx+bgEkQwyvjiLZqWv6wfAss9JDRFFLBmro5+rI8fsJDJHigNtBSFqCa
 Fno67a1hDN4d1OnpMghrJ1l22HdXuLiQsb+wOhZrX7cd/suJPz+OWPFLQrl/gKATK5Tk
 TFn+DTilygaFcHV7qtx52wL0PZcm3rVdriwksgT0e0l02WcJlxjOX77ZrWEiFA/1meyB
 jfOd1S/tLBIdLLBt8fDtxhOl7JOsIw8d3e1YOJdJzFrInjILqxEHWyneDB1YzDBBW2nC
 DncrIgl3rJ9jEkckMyxH9QGwUO01QRhp6U2MQooOR4mz0xsr3s8ho+NCohfwpnA7Xl3p
 5s6g==
X-Gm-Message-State: APjAAAUN582kJaD27gK+5cje6gPtDOmktINzit1qTbj2W36QmbMybCiF
 vJnTiF7pLFA8nqQ+lQ47UN7JSODH
X-Google-Smtp-Source: APXvYqy7eWPBVFweNo/cjownlohtsfCfUu3BqcrOaYaqSP+oshYjVS/K7Q8dQsMcqmatl6seBPeexA==
X-Received: by 2002:a17:902:1a7:: with SMTP id
 b36mr30833779plb.115.1566357103884; 
 Tue, 20 Aug 2019 20:11:43 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id j15sm21540009pfe.3.2019.08.20.20.11.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 20:11:43 -0700 (PDT)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] ARM: dts: rockchip: remove rk3288 fennec board support
Date: Wed, 21 Aug 2019 11:11:23 +0800
Message-Id: <20190821031124.17806-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_201144_912753_42B4AD0E 
X-CRM114-Status: GOOD (  11.01  )
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
 provider (kever.yang[at]gmail.com)
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
 Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since there is no one using this board, remove it.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- update document at the same time

 arch/arm/boot/dts/Makefile          |   1 -
 arch/arm/boot/dts/rk3288-fennec.dts | 347 ----------------------------
 2 files changed, 348 deletions(-)
 delete mode 100644 arch/arm/boot/dts/rk3288-fennec.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..1437ff8fe727 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -907,7 +907,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3229-evb.dtb \
 	rk3288-evb-act8846.dtb \
 	rk3288-evb-rk808.dtb \
-	rk3288-fennec.dtb \
 	rk3288-firefly-beta.dtb \
 	rk3288-firefly.dtb \
 	rk3288-firefly-reload.dtb \
diff --git a/arch/arm/boot/dts/rk3288-fennec.dts b/arch/arm/boot/dts/rk3288-fennec.dts
deleted file mode 100644
index 4847cf902a15..000000000000
--- a/arch/arm/boot/dts/rk3288-fennec.dts
+++ /dev/null
@@ -1,347 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-
-/dts-v1/;
-
-#include "rk3288.dtsi"
-
-/ {
-	model = "Rockchip RK3288 Fennec Board";
-	compatible = "rockchip,rk3288-fennec", "rockchip,rk3288";
-
-	memory@0 {
-		reg = <0x0 0x0 0x0 0x80000000>;
-		device_type = "memory";
-	};
-
-	ext_gmac: external-gmac-clock {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <125000000>;
-		clock-output-names = "ext_gmac";
-	};
-
-	vcc_sys: vsys-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc_sys";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-};
-
-&cpu0 {
-	cpu0-supply = <&vdd_cpu>;
-};
-
-&emmc {
-	bus-width = <8>;
-	cap-mmc-highspeed;
-	non-removable;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_pwr &emmc_bus8>;
-	status = "okay";
-};
-
-&gmac {
-	assigned-clocks = <&cru SCLK_MAC>;
-	assigned-clock-parents = <&ext_gmac>;
-	clock_in_out = "input";
-	pinctrl-names = "default";
-	pinctrl-0 = <&rgmii_pins>, <&phy_rst>, <&phy_pmeb>, <&phy_int>;
-	phy-supply = <&vcc_lan>;
-	phy-mode = "rgmii";
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 1000000>;
-	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
-	tx_delay = <0x30>;
-	rx_delay = <0x10>;
-	status = "okay";
-};
-
-&gpu {
-	mali-supply = <&vdd_gpu>;
-	status = "okay";
-};
-
-&hdmi {
-	status = "okay";
-};
-
-&i2c0 {
-	status = "okay";
-	clock-frequency = <400000>;
-
-	rk808: pmic@1b {
-		compatible = "rockchip,rk808";
-		reg = <0x1b>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <1>;
-		clock-output-names = "xin32k", "rk808-clkout2";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int &global_pwroff>;
-		rockchip,system-power-controller;
-		wakeup-source;
-
-		vcc1-supply = <&vcc_sys>;
-		vcc2-supply = <&vcc_sys>;
-		vcc3-supply = <&vcc_sys>;
-		vcc4-supply = <&vcc_sys>;
-		vcc6-supply = <&vcc_sys>;
-		vcc7-supply = <&vcc_sys>;
-		vcc8-supply = <&vcc_io>;
-		vcc9-supply = <&vcc_io>;
-		vcc10-supply = <&vcc_io>;
-		vcc11-supply = <&vcc_io>;
-		vcc12-supply = <&vcc_io>;
-		vddio-supply = <&vcc_io>;
-
-		regulators {
-			vdd_cpu: DCDC_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <750000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-name = "vdd_arm";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <850000>;
-				regulator-max-microvolt = <1250000>;
-				regulator-name = "vdd_gpu";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_ddr";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_io: DCDC_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc_io";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vccio_pmu: LDO_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_pmu";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcca_33: LDO_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcca_33";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_10: LDO_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd_10";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vcc_wl: LDO_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_wl";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vdd10_lcd: LDO_REG6 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-name = "vdd10_lcd";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1000000>;
-				};
-			};
-
-			vcc_18: LDO_REG7 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_18";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc18_lcd: LDO_REG8 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc18_lcd";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcc_sd: SWITCH_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_sd";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vcc_lan: SWITCH_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_lan";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&pinctrl {
-	pcfg_output_high: pcfg-output-high {
-		output-high;
-	};
-
-	pcfg_output_low: pcfg-output-low {
-		output-low;
-	};
-
-	pcfg_pull_none_drv_8ma: pcfg-pull-none-drv-8ma {
-		drive-strength = <8>;
-	};
-
-	pcfg_pull_up_drv_8ma: pcfg-pull-up-drv-8ma {
-		bias-pull-up;
-		drive-strength = <8>;
-	};
-
-	gmac {
-		phy_int: phy-int {
-			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		phy_pmeb: phy-pmeb {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		phy_rst: phy-rst {
-			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_output_high>;
-		};
-	};
-
-	pmic {
-		pmic_int: pmic-int {
-			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
-	usbphy {
-		host_drv: host-drv {
-			rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&uart2 {
-	status = "okay";
-};
-
-&usbphy {
-	pinctrl-names = "default";
-	pinctrl-0 = <&host_drv>;
-	vbus_drv-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host1 {
-	status = "okay";
-};
-
-&usb_otg {
-	status = "okay";
-};
-
-&usb_hsic {
-	status = "okay";
-};
-
-&vopb {
-	status = "okay";
-};
-
-&vopb_mmu {
-	status = "okay";
-};
-
-&vopl {
-	status = "okay";
-};
-
-&vopl_mmu {
-	status = "okay";
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
