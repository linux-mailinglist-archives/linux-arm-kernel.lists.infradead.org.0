Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEE19892A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 03:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEXYcp5s28lkm1GNqf+ejx7s1CKx82UJQWoja7f8g0s=; b=gMrRQgCMs1G0kQ
	iBwjN8qiJGMtw/rk+C679pX00be5LjhvTT0yMWboc2MAZn5U1LKvG0uHMK6TosnOL7I/kL4aRCe6W
	esD3c37hbXwxk/cHNUoLQO+jKiWMxTic2o+UVzW6M1mmDhhWC5sRe8dlUcxCKXCeba7oIHd6aGtyT
	3SSQmjjhwsscuFcVey3VMajsPdtZEZk/KjvuPHkRkZlfyuhJro1zYVsdLi+eIcEb7D9RqCTTk4vhj
	mKmEVoa1z9Yw0qj5f2n6e27T9Mdlnkw9/Pkxq80dSHLHcmOghOZJuoOUuXGqKRI6Q3KGd9Mkvfnoc
	REab8Z1KZX3qRY2gspvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cMZ-0004gl-R9; Thu, 22 Aug 2019 01:58:07 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cMS-0004gS-NN
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 01:58:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7C42C21BA9;
 Wed, 21 Aug 2019 21:57:54 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 21:57:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=sxUmO+9BmRdcKCJwVcW++c6zGyWjd3/
 ClO+i8zmwAmk=; b=QKbglID6yBuwKIf82QLttnrZvg1x5rPUAH6qwkBc4Hxpz97
 +47Sqa2Yev2etTOOVCnM0SnmqMLXn5DNr17DntRc71RRI7VkxOHo1yYiupF4nenE
 lNEMb7m/1GWTvXBQLopQIorMhR9Y3EnEM8SEaIA3O4S5COzMXq0jkI1/MsPotOQN
 xnTQ+kP+jXNaQdxz4A2nUoc43wZT9iyS8NNynqkSBjXTSa9zQehyGKG+O3BrYdW7
 7QXjoMI9kQjjiLleHd+EJH6K8TYckqzCZ7p9b87399UvgNXTLYBd/vNqD353nNwy
 MaaiDBYwS9WxVx0+p1iajd7A9ZRKP30QG39C6+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=sxUmO+
 9BmRdcKCJwVcW++c6zGyWjd3/ClO+i8zmwAmk=; b=dVKAkzukcPQYZuNBYAxqHD
 5e06XvAGRoimWx0xpcMH1LIammnfoJ/RU3OqA3r5EqQ0BRfn2WfvrrEO55LoVs/J
 gN3VLIExXKWVMR+gAQ45BuAWDMB5w4T/yhnNRSP+tAvpEi06+Jr8XdELdMevnqap
 eo7T+Spe4MtZz3ygn8l+SZckJXNRsZcJ0Lxv53BsKgfQ6mKr9q8GDcR+xumdiXIB
 bZe+wK2XGeuuqn9o50qeOoZ/lMclhDo3OuFZudBFZlHSzijGgzCKyBv+BBWENtNd
 Xl+bfH7oCyuA3Ju9RdfQTHCpf1QXinOaOPUVsGhTqTKOaLt8nQynzbBPnTbKQbnQ
 ==
X-ME-Sender: <xms:oPZdXdCp336IkMy7EzzdlF_DU7FlXmZ9iOELROYG-ZKbOSza3wmL2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:oPZdXYUtHt9PYagJvlleqysNCEbrG53iPR8WrcF1Knn33_g-TySK9g>
 <xmx:oPZdXa29XM0TN-qurfmYC_k3Rm4m1QtUcek39WFUQM8Uk3dzWi9eIQ>
 <xmx:oPZdXX4xtWg8s-v4k0fFxDKzQQz3dq2kubNiP6QsSxLFlOWF-Vd9Yg>
 <xmx:ovZdXdTiZaExeYoaGvQAFDCnxhXwXl2xTH6KRlOJ0RF-7xm5kckxlg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 4C9EBE00A3; Wed, 21 Aug 2019 21:57:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <b1527d8e-4def-4769-b85a-142aa4d99f03@www.fastmail.com>
In-Reply-To: <20190821055530.8720-6-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-6-joel@jms.id.au>
Date: Thu, 22 Aug 2019 11:28:09 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 5/7] ARM: dts: aspeed: Add AST2600 and EVB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_185800_904303_2FCB5FEC 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> The AST2600 is a new SoC by ASPEED. It contains a dual core Cortex A7
> CPU and shares many periperhals with the existing AST2400 and AST2500.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/boot/dts/Makefile               |   1 +
>  arch/arm/boot/dts/aspeed-ast2600-evb.dts |  44 ++++
>  arch/arm/boot/dts/aspeed-g6.dtsi         | 266 +++++++++++++++++++++++
>  3 files changed, 311 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-ast2600-evb.dts
>  create mode 100644 arch/arm/boot/dts/aspeed-g6.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 247e556de48e..2d8d29e5686d 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1276,6 +1276,7 @@ dtb-$(CONFIG_ARCH_MILBEAUT) += 
> milbeaut-m10v-evb.dtb
>  dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
>  dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-ast2500-evb.dtb \
> +	aspeed-ast2600-evb.dtb \
>  	aspeed-bmc-arm-centriq2400-rep.dtb \
>  	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>  	aspeed-bmc-facebook-cmm.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts 
> b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> new file mode 100644
> index 000000000000..7f2528e084b5
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> @@ -0,0 +1,44 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright 2019 IBM Corp.
> +
> +/dts-v1/;
> +
> +#include "aspeed-g6.dtsi"
> +
> +/ {
> +	model = "AST2600 EVB";
> +	compatible = "aspeed,ast2600";
> +
> +	aliases {
> +		serial4 = &uart5;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS4,115200n8";
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x80000000>;
> +	};
> +};
> +
> +&mdio1 {
> +	status = "okay";
> +
> +	ethphy1: ethernet-phy@0 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0>;
> +	};
> +};
> +
> +&mac1 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";
> +	phy-handle = <&ethphy1>;
> +};
> +
> +&emmc {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi 
> b/arch/arm/boot/dts/aspeed-g6.dtsi
> new file mode 100644
> index 000000000000..9f9931541060
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -0,0 +1,266 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// Copyright 2019 IBM Corp.
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/ast2600-clock.h>
> +
> +/ {
> +	model = "Aspeed BMC";
> +	compatible = "aspeed,ast2600";
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	interrupt-parent = <&gic>;
> +
> +	aliases {
> +		serial4 = &uart5;
> +	};
> +
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		enable-method = "aspeed,ast2600-smp";
> +
> +		cpu@f00 {
> +			compatible = "arm,cortex-a7";
> +			device_type = "cpu";
> +			reg = <0xf00>;
> +		};
> +
> +		cpu@f01 {
> +			compatible = "arm,cortex-a7";
> +			device_type = "cpu";
> +			reg = <0xf01>;
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv7-timer";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | 
> IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
> +		clocks = <&syscon ASPEED_CLK_HPLL>;
> +		arm,cpu-registers-not-fw-configured;
> +	};
> +
> +	ahb {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		device_type = "soc";
> +		ranges;
> +
> +		gic: interrupt-controller@40461000 {
> +			compatible = "arm,cortex-a7-gic";
> +			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(2) | 
> IRQ_TYPE_LEVEL_HIGH)>;
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			interrupt-parent = <&gic>;
> +			reg = <0x40461000 0x1000>,
> +			    <0x40462000 0x1000>,
> +			    <0x40464000 0x2000>,
> +			    <0x40466000 0x2000>;
> +			};
> +
> +		mdio0: mdio@1e650000 {
> +			compatible = "aspeed,ast2600-mdio";
> +			reg = <0x1e650000 0x8>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		mdio1: mdio@1e650008 {
> +			compatible = "aspeed,ast2600-mdio";
> +			reg = <0x1e650008 0x8>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		mdio2: mdio@1e650010 {
> +			compatible = "aspeed,ast2600-mdio";
> +			reg = <0x1e650010 0x8>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		mdio3: mdio@1e650018 {
> +			compatible = "aspeed,ast2600-mdio";
> +			reg = <0x1e650018 0x8>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		mac0: ftgmac@1e660000 {
> +			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
> +			reg = <0x1e660000 0x180>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>;
> +			status = "disabled";
> +		};
> +
> +		mac1: ftgmac@1e680000 {
> +			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
> +			reg = <0x1e680000 0x180>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_MAC2CLK>;
> +			status = "disabled";
> +		};
> +
> +		mac2: ftgmac@1e670000 {
> +			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
> +			reg = <0x1e670000 0x180>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_MAC3CLK>;
> +			status = "disabled";
> +		};
> +
> +		mac3: ftgmac@1e690000 {
> +			compatible = "aspeed,ast2600-mac", "faraday,ftgmac100";
> +			reg = <0x1e690000 0x180>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_MAC4CLK>;
> +			status = "disabled";
> +		};
> +
> +		apb {
> +			compatible = "simple-bus";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			syscon: syscon@1e6e2000 {
> +				compatible = "aspeed,ast2600-scu", "syscon", "simple-mfd";
> +				reg = <0x1e6e2000 0x1000>;
> +				ranges = <0 0x1e6e2000 0x1000>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				#clock-cells = <1>;
> +				#reset-cells = <1>;
> +
> +				pinctrl: pinctrl {
> +					compatible = "aspeed,ast2600-pinctrl";
> +				};
> +
> +				smp-memram@180 {
> +					compatible = "aspeed,ast2600-smpmem";
> +					reg = <0x180 0x40>;
> +				};
> +			};
> +
> +			rng: hwrng@1e6e2524 {
> +				compatible = "timeriomem_rng";
> +				reg = <0x1e6e2524 0x4>;
> +				period = <1>;
> +				quality = <100>;
> +			};
> +
> +			rtc: rtc@1e781000 {
> +				compatible = "aspeed,ast2600-rtc";
> +				reg = <0x1e781000 0x18>;
> +				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};
> +
> +			uart5: serial@1e784000 {
> +				compatible = "ns16550a";
> +				reg = <0x1e784000 0x1000>;
> +				reg-shift = <2>;
> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&syscon ASPEED_CLK_GATE_UART5CLK>;
> +				no-loopback-test;
> +			};
> +
> +			wdt1: watchdog@1e785000 {
> +				compatible = "aspeed,ast2600-wdt";
> +				reg = <0x1e785000 0x40>;
> +			};
> +
> +			wdt2: watchdog@1e785040 {
> +				compatible = "aspeed,ast2600-wdt";
> +				reg = <0x1e785040 0x40>;
> +				status = "disabled";
> +			};
> +
> +			wdt3: watchdog@1e785080 {
> +				compatible = "aspeed,ast2600-wdt";
> +				reg = <0x1e785080 0x40>;
> +				status = "disabled";
> +			};
> +
> +			wdt4: watchdog@1e7850C0 {
> +				compatible = "aspeed,ast2600-wdt";
> +				reg = <0x1e7850C0 0x40>;
> +				status = "disabled";
> +			};
> +
> +			sdc: sdc@1e740000 {
> +				compatible = "aspeed,ast2600-sd-controller";
> +				reg = <0x1e740000 0x100>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges = <0 0x1e740000 0x10000>;
> +				clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
> +				status = "disabled";
> +
> +				sdhci0: sdhci@1e740100 {
> +					compatible = "aspeed,ast2600-sdhci", "sdhci";
> +					reg = <0x100 0x100>;
> +					interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +					sdhci,auto-cmd12;
> +					clocks = <&syscon ASPEED_CLK_SDIO>;
> +					status = "disabled";
> +				};
> +
> +				sdhci1: sdhci@1e740200 {
> +					compatible = "aspeed,ast2600-sdhci", "sdhci";
> +					reg = <0x200 0x100>;
> +					interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +					sdhci,auto-cmd12;
> +					clocks = <&syscon ASPEED_CLK_SDIO>;
> +					status = "disabled";
> +				};
> +			};
> +
> +			emmc: sdc@1e750000 {
> +				compatible = "aspeed,ast2600-sd-controller";
> +				reg = <0x1e750000 0x100>;
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				ranges = <0 0x1e750000 0x10000>;
> +				clocks = <&syscon ASPEED_CLK_GATE_EMMCCLK>;
> +				status = "disabled";
> +
> +				sdhci@1e750100 {
> +					compatible = "aspeed,ast2600-sdhci";
> +					reg = <0x100 0x100>;
> +					sdhci,auto-cmd12;
> +					interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +					clocks = <&syscon ASPEED_CLK_EMMC>;
> +					pinctrl-names = "default";
> +					pinctrl-0 = <&pinctrl_emmc_default>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	pinctrl_emmc_default: emmc_default {
> +		function = "SD3";
> +		groups = "SD3";
> +	};

I need to send some fixes for pinmux along with the dt patche, but this
will do for the moment.

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
