Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9504A1AB666
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 05:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ElXCWxfMs9pgnyhybeuitUmBP3xb+0wgO1blN76PhA=; b=agOqhihKb217dH
	hSo+c9x3GIKJuQivJ0u4XhdFVHW285gZQzNtBWkio/cyH+Z+KcQ20JkHSG20DLMZw9UZ71D2RC/LI
	TKknlwEJw6e/IMZfhF8beKxw3YKi8roxgGa78t585hbzntsBtS0nRtcWLCMW1HGdf+6iLaLIumu8u
	LK6QdNRH0WrW7sqye8LjudG0kS95oZbNQdalBgOUck6tg5RN9MVurrC1USuW4CknuFux+NnS7LNPd
	BxcZJcrj2thxdSGeuz45t73Bx1FnBbn/Hr4qn+9NVWWUx6M7aMJZpyqQRtSHFOZN1buLVt6GVGtRF
	kZSAeFGY7nOj6EDmBJ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOvcY-0008FE-Vt; Thu, 16 Apr 2020 03:55:22 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOvcO-0006vn-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 03:55:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1C4915C024D;
 Wed, 15 Apr 2020 23:55:06 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Wed, 15 Apr 2020 23:55:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=XobaS6f8FFofEDwVaA97uKXB7/n1qnX
 5ggwVVJ5x9d0=; b=P7fJSJdKt9uLuClJn0/Vl5eT9+yiJ8aGohA6ZyhUrcAgoAq
 XNylzwrMSpOpVSKnIMMZzFqJLXnFM51ESkwyHYOypyngdLKegT7EjuSPzU5IxrEl
 dEKpqMgk+PEkRRuwkQ8Ostl4rtZQc9P2eIT3NaVzAZ4O+9vE2SCc2YX575KGurt+
 g5EMwd+NlCX/+6oVkb5+e+fXWgO3x1N0dglEjwKbwtyd61ec5ejJpOiLPjWaQi46
 a9RAjZFGP2ewnAb1KsKjBw5YUROiHVgq+cF+VdPUDJD3qBeXD+LulMhTCiu2k1eR
 mla8x2kZX4ceX31bBB9gLgUCbityFaO6F5zaljg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=XobaS6
 f8FFofEDwVaA97uKXB7/n1qnX5ggwVVJ5x9d0=; b=ATo4uJ/Pzi+MQ5zAHNQnqD
 cUlG0QhYDNSDY+DmrYTVAnkIRVzaxeJ5Q7wpM2A3jxStdHZl3SljxHuk8qh+oAXX
 HzZV6Z9Odb2Qf6Q6IqMTBODXQYsh6QkyOrnqr39zd0dGqA+/BlA43dpqssKqTpEH
 FDClYVPWAwqWAReFizSTk0KNhBlNibn0ylgDPcDesOF4DYQVTVrs48wTgYJKLkFA
 kLfR1mX1SsEat7LAQu69EnVf4hxX5AbcsbrA1CoYqYB6L11s1ONzrUvC2ynuM+kL
 Pk7GxegkwtMrgVTvhXGvC/TlHDy8hSn2Y0TyHJrkZc0THs2v+ZaAeFUXOgLYbHdA
 ==
X-ME-Sender: <xms:GNeXXlBeuI6jZ5q1ttEdztNMsE61UE29LxE1NKdIxjNR56EwVLBbAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeeggdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:GNeXXv30pnx7cwVUBSRY8_gsZuG9TVYVHTUQxKe39Uvk9ycmQFajiw>
 <xmx:GNeXXjWnbGHAZfk3m6RZVTXVcKKBkJbMPex73yNK2lYUNhtYBSrPrg>
 <xmx:GNeXXhlv7Axx5fZ7UriWJ3QwHjXpsZfNdL4dyX4zYZ6TNHEO4zA8lg>
 <xmx:GteXXjDKUDIpHj5As-V6JorqgBbQj83OBqoy-6RvKi2QtXpY_EhzXQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 669F7E00B9; Wed, 15 Apr 2020 23:55:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1131-g3221b37-fmstable-20200415v1
Mime-Version: 1.0
Message-Id: <008ef3bb-92bd-4202-a59d-0063ee726ce4@www.fastmail.com>
In-Reply-To: <20200410171613.30260-1-a.filippov@yadro.com>
References: <20200410171613.30260-1-a.filippov@yadro.com>
Date: Thu, 16 Apr 2020 13:25:31 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v2] ARM: DTS: Aspeed: Add YADRO Nicole BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_205513_895448_82090539 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 11 Apr 2020, at 02:46, Alexander Filippov wrote:
> Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> by YADRO.
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts | 270 ++++++++++++++++++++
>  2 files changed, 271 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e8dd99201397..6f9fe0f959f2 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1347,6 +1347,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-microsoft-olympus.dtb \
>  	aspeed-bmc-opp-lanyang.dtb \
>  	aspeed-bmc-opp-mihawk.dtb \
> +	aspeed-bmc-opp-nicole.dtb \
>  	aspeed-bmc-opp-palmetto.dtb \
>  	aspeed-bmc-opp-romulus.dtb \
>  	aspeed-bmc-opp-swift.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts
> new file mode 100644
> index 000000000000..3f1d92bab07b
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts
> @@ -0,0 +1,270 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright 2019 YADRO
> +/dts-v1/;
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +
> +/ {
> +	model = "Nicole BMC";
> +	compatible = "yadro,nicole-bmc", "aspeed,ast2500";
> +
> +	chosen {
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS4,115200 earlyprintk";
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x80000000 0x20000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		vga_memory: framebuffer@9f000000 {
> +			no-map;
> +			reg = <0x9f000000 0x01000000>; /* 16M */
> +		};
> +
> +		flash_memory: region@98000000 {
> +			no-map;
> +			reg = <0x98000000 0x04000000>; /* 64M */
> +		};
> +
> +		coldfire_memory: codefire_memory@9ef00000 {
> +			reg = <0x9ef00000 0x00100000>;
> +			no-map;
> +		};
> +
> +		gfx_memory: framebuffer {
> +			size = <0x01000000>;
> +			alignment = <0x01000000>;
> +			compatible = "shared-dma-pool";
> +			reusable;
> +		};
> +
> +		video_engine_memory: jpegbuffer {
> +			size = <0x02000000>;	/* 32M */
> +			alignment = <0x01000000>;
> +			compatible = "shared-dma-pool";
> +			reusable;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		power {
> +			gpios = <&gpio ASPEED_GPIO(AA, 4) GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		identify {
> +			gpios = <&gpio ASPEED_GPIO(AA, 7) GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		alarm_red {
> +			gpios = <&gpio ASPEED_GPIO(AA, 3) GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		alarm_yellow {
> +			gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	fsi: gpio-fsi {
> +		compatible = "aspeed,ast2500-cf-fsi-master", "fsi-master";
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +		no-gpio-delays;
> +
> +		memory-region = <&coldfire_memory>;
> +		aspeed,sram = <&sram>;
> +		aspeed,cvic = <&cvic>;
> +
> +		clock-gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_HIGH>;
> +		data-gpios = <&gpio ASPEED_GPIO(AA, 2) GPIO_ACTIVE_HIGH>;
> +		mux-gpios = <&gpio ASPEED_GPIO(A, 6) GPIO_ACTIVE_HIGH>;
> +		enable-gpios = <&gpio ASPEED_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
> +		trans-gpios = <&gpio ASPEED_GPIO(P, 1) GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		checkstop {
> +			label = "checkstop";
> +			gpios = <&gpio ASPEED_GPIO(J, 2) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(J, 2)>;
> +		};
> +	};
> +
> +	iio-hwmon-battery {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 12>;

You should request the ADC pin via pinctrl in the ADC node below.

Andrew

> +	};
> +};
> +
> +&fmc {
> +	status = "okay";
> +	flash@0 {
> +		status = "okay";
> +		m25p,fast-read;
> +		label = "bmc";
> +		spi-max-frequency = <50000000>;
> +#include "openbmc-flash-layout.dtsi"
> +	};
> +};
> +
> +&spi1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_spi1_default>;
> +
> +	flash@0 {
> +		status = "okay";
> +		m25p,fast-read;
> +		label = "pnor";
> +		spi-max-frequency = <100000000>;
> +	};
> +};
> +
> +&lpc_ctrl {
> +	status = "okay";
> +	memory-region = <&flash_memory>;
> +	flash = <&spi1>;
> +};
> +
> +&uart1 {
> +	/* Rear RS-232 connector */
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd1_default
> +			&pinctrl_rxd1_default
> +			&pinctrl_nrts1_default
> +			&pinctrl_ndtr1_default
> +			&pinctrl_ndsr1_default
> +			&pinctrl_ncts1_default
> +			&pinctrl_ndcd1_default
> +			&pinctrl_nri1_default>;
> +};
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&mac0 {
> +	status = "okay";
> +
> +	use-ncsi;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rmii1_default>;
> +	clocks = <&syscon ASPEED_CLK_GATE_MAC1CLK>,
> +		 <&syscon ASPEED_CLK_MAC1RCLK>;
> +	clock-names = "MACCLK", "RCLK";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c256";
> +		reg = <0x50>;
> +		pagesize = <64>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +    /* CPU0 characterization connector */
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +    /* CLK GEN SI5338 */
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +    /* Voltage regulators for CPU0 */
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +    /* Voltage regulators for CPU1 */
> +};
> +
> +&i2c6 {
> +	status = "okay";
> +
> +	rtc@32 {
> +		compatible = "epson,rx8900";
> +		reg = <0x32>;
> +	};
> +};
> +
> +&i2c7 {
> +	status = "okay";
> +    /* CPLD */
> +};
> +
> +&gpio {
> +	nic_func_mode0 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(D, 3) GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "nic_func_mode0";
> +	};
> +	nic_func_mode1 {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(D, 4) GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "nic_func_mode1";
> +	};
> +	seq_cont {
> +		gpio-hog;
> +		gpios = <ASPEED_GPIO(S, 7) GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "seq_cont";
> +	};
> +	ncsi_cfg {
> +		gpio-hog;
> +		input;
> +		gpios = <ASPEED_GPIO(E, 1) GPIO_ACTIVE_HIGH>;
> +		line-name = "ncsi_cfg";
> +	};
> +};
> +
> +&vuart {
> +	status = "okay";
> +};
> +
> +&gfx {
> +	status = "okay";
> +	memory-region = <&gfx_memory>;
> +};
> +
> +&pinctrl {
> +	aspeed,external-nodes = <&gfx &lhc>;
> +};
> +
> +&ibt {
> +	status = "okay";
> +};
> +
> +&vhub {
> +	status = "okay";
> +};
> +
> +&adc {
> +	status = "okay";
> +};
> +
> +&video {
> +	status = "okay";
> +	memory-region = <&video_engine_memory>;
> +};
> +
> +#include "ibm-power9-dual.dtsi"
> -- 
> 2.21.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
