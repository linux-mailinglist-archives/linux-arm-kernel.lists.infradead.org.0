Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5931D19A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ODBE5yIMNmVTs8nFSPvzzzv93d23hoHIj562eK2kwjA=; b=ShORwt2+LHKb/SLd9G7YWX10p
	KjeQq1jw2WOXTob3yC21E7ehrmMR4C8aFhx5pkYhsNFuksCKOzUdTGGqZla4i4jyBdc6Q4wdB6rm5
	gaNRMbWKBYNZ2kn5pil/zUkgl7Ho1w1F/1JmgGc8p6RlJByNG88IA5Xk1UFOHDUmW7hjQQKh4wQNt
	UCaJkFOoWPX/+0V8J6lDAvRsPGjmwYZQlxuA/WIu1i1xY75iFjVIOJg4b672kgxKxKxD3PC2D1OFm
	xGSPyTYj399XOpdcjT+oQY0QuwstrgW819V3StmJiy4bFWEWN5l/ajNICgCVcVnh2eVrJSb0WMUio
	BFBsCDAPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtU4-0003hy-7f; Wed, 13 May 2020 15:39:48 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtTu-0003gk-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:39:40 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@misterjones.org>)
 id 1jYtTi-00C1J1-Tf; Wed, 13 May 2020 16:39:27 +0100
MIME-Version: 1.0
Date: Wed, 13 May 2020 16:39:26 +0100
From: Marc Zyngier <maz@misterjones.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 06/14] arm64: dts: sparx5: Add basic cpu support
In-Reply-To: <20200513125532.24585-7-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-7-lars.povlsen@microchip.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <2d230dab95ee96727a42f9c242c93c18@misterjones.org>
X-Sender: maz@misterjones.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lars.povlsen@microchip.com, soc@kernel.org, arnd@arndb.de,
 sboyd@kernel.org, linus.walleij@linaro.org, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, Steen.Hegelund@microchip.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, olof@lixom.net, mturquette@baylibre.com
X-SA-Exim-Mail-From: maz@misterjones.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_083938_565944_F4B29824 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 SoC Team <soc@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 13:55, Lars Povlsen wrote:
> This adds the basic DT structure for the Microchip Sparx5 SoC, and the
> reference boards, pcb125, pcb134 and pcb135. The two latter have a
> NAND vs a eMMC centric variant (as a mount option),
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  MAINTAINERS                                   |   1 +
>  arch/arm64/boot/dts/Makefile                  |   1 +
>  arch/arm64/boot/dts/microchip/Makefile        |   4 +
>  arch/arm64/boot/dts/microchip/sparx5.dtsi     | 135 ++++++++++++++++++
>  .../boot/dts/microchip/sparx5_pcb125.dts      |  17 +++
>  .../boot/dts/microchip/sparx5_pcb134.dts      |  17 +++
>  .../dts/microchip/sparx5_pcb134_board.dtsi    |  15 ++
>  .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  17 +++
>  .../boot/dts/microchip/sparx5_pcb135.dts      |  17 +++
>  .../dts/microchip/sparx5_pcb135_board.dtsi    |  15 ++
>  .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  17 +++
>  .../boot/dts/microchip/sparx5_pcb_common.dtsi |  15 ++
>  12 files changed, 271 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/microchip/Makefile
>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5.dtsi
>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
>  create mode 100644 
> arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
>  create mode 100644 
> arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
>  create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
>  create mode 100644 
> arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
>  create mode 100644 
> arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
>  create mode 100644 
> arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1b5a18d3dbb9f..5aa28d6e39d4f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2084,6 +2084,7 @@ M:	Lars Povlsen <lars.povlsen@microchip.com>
>  M:	Steen Hegelund <Steen.Hegelund@microchip.com>
>  M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
>  L:	linux-arm-kernel@lists.infradead.org (moderated for 
> non-subscribers)
> +F:	arch/arm64/boot/dts/microchip/
>  N:	sparx5
>  S:	Supported
> 
> diff --git a/arch/arm64/boot/dts/Makefile 
> b/arch/arm64/boot/dts/Makefile
> index f19b762c008d8..9680a7f20c307 100644
> --- a/arch/arm64/boot/dts/Makefile
> +++ b/arch/arm64/boot/dts/Makefile
> @@ -17,6 +17,7 @@ subdir-y += intel
>  subdir-y += lg
>  subdir-y += marvell
>  subdir-y += mediatek
> +subdir-y += microchip
>  subdir-y += nvidia
>  subdir-y += qcom
>  subdir-y += realtek
> diff --git a/arch/arm64/boot/dts/microchip/Makefile
> b/arch/arm64/boot/dts/microchip/Makefile
> new file mode 100644
> index 0000000000000..c6e0313eea0f9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/microchip/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb125.dtb
> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb134.dtb sparx5_pcb134_emmc.dtb
> +dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb135.dtb sparx5_pcb135_emmc.dtb
> diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi
> b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> new file mode 100644
> index 0000000000000..3136b4369f507
> --- /dev/null
> +++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	compatible = "microchip,sparx5";
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <1>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +			};
> +		};
> +		cpu0: cpu@0 {
> +			compatible = "arm,cortex-a53", "arm,armv8";
> +			device_type = "cpu";
> +			reg = <0x0 0x0>;
> +			enable-method = "spin-table";

Really? This is 2020, not 2012 any more. Surely a new platform
boots using PSCI, and not *this*.

> +			cpu-release-addr = <0x0 0x0000fff8>;
> +			next-level-cache = <&L2_0>;
> +		};
> +		cpu1: cpu@1 {
> +			compatible = "arm,cortex-a53", "arm,armv8";
> +			device_type = "cpu";
> +			reg = <0x0 0x1>;
> +			enable-method = "spin-table";
> +			cpu-release-addr = <0x0 0x0000fff8>;
> +			next-level-cache = <&L2_0>;
> +		};
> +		L2_0: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts =
> +			<GIC_PPI 13
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			<GIC_PPI 14
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			<GIC_PPI 11
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
> +			<GIC_PPI 10
> +				(GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;

You have a GICv3. These interrupt specifiers are not the ones GICv3 
expects.

> +	};
> +
> +	clocks: clocks {
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +		ahb_clk: ahb-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <250000000>;
> +		};
> +		sys_clk: sys-clk {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;
> +			clock-frequency = <625000000>;
> +		};
> +	};
> +
> +	axi: axi@600000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		gic: interrupt-controller@600300000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <3>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			interrupt-controller;
> +			reg = <0x6 0x00300000 0x20000>,	/* GICD */
> +			      <0x6 0x00340000 0x1000000>;	/* GICR */

You are missing the GICv3 compatibility interfaces (GICV/GICH), which
are implemented by the CPUs.

> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		uart0: serial@600100000 {
> +			compatible = "ns16550a";
> +			reg = <0x6 0x00100000 0x20>;
> +			clocks = <&ahb_clk>;
> +			reg-io-width = <4>;
> +			reg-shift = <2>;
> +			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			status = "disabled";
> +		};
> +
> +		uart1: serial@600102000 {
> +			compatible = "ns16550a";
> +			reg = <0x6 0x00102000 0x20>;
> +			clocks = <&ahb_clk>;
> +			reg-io-width = <4>;
> +			reg-shift = <2>;
> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			status = "disabled";
> +		};
> +
> +		timer1: timer@600105000 {
> +			compatible = "snps,dw-apb-timer";
> +			reg = <0x6 0x00105000 0x1000>;
> +			clocks = <&ahb_clk>;
> +			clock-names = "timer";
> +			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +	};
> +};

Where is the PMU node?

Thanks,

         M.
-- 
Who you jivin' with that Cosmik Debris?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
