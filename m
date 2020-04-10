Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C701A4226
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 06:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0Ty/Fc2fKBdwEI/ZalNeVOhTiyR3tHrLo7m4ebuq+w=; b=gh3/SxYdTINKD4
	6jXpLft5hLlLoDrhM70AtD5YmjFQ4jWPOCLoGn9T1LimXRu6C8FpaKE1YFjH8e557bGtsnyPv+/IZ
	cvxX1sJ53GeVjsZK50S9i2EvcaMVevXVGs0cgQs06TxeKXL/+WJP3YzAh3xrM7XotiYtc5bg0G8hR
	egsz/k3DxAqemgEEQttpsFGVEGVCItc5rjPm2Pp2ZeULH1lL/3BlDVv7gZn8DUcGVKDOkBeKYw1ef
	DaCTYuspdgn+zbddc0PTDy3vGftukR0f9IsHBfV2WYPhAXn8u2lEamjPZMw2Xmkg/kltY6y7osAn0
	djHyzKke8dV0a908C28Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMllS-0003EJ-Hp; Fri, 10 Apr 2020 04:59:38 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMllJ-0003DT-96
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 04:59:31 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1E6AB5C0126;
 Fri, 10 Apr 2020 00:59:24 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Fri, 10 Apr 2020 00:59:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=l+pa00YeFhRWf3yUkvmzf5IhZ6ShPDi
 /vzUvd0fJVvs=; b=qjFsBSZgiFhNN9l/dKC+k62MkUgMy5ujwGm1s6+0xylmEYg
 vsnJKIm4oWB0UWEdy4vaXEFk3mAxItUJVP+q5+ao5ho8gem3Sc625G5unGx4OgOm
 H30a/N7QwOo9lXvV8C4EY61T3lFFW7txJdRRGdFHwXZJlOLG4ekOJTn2AEDPbo+N
 ITHxdfCb/BYMkh4AmzJxXfS19F8fbzM9IIPTeAvt955M0kXJ1RiitxXRr4cofKyd
 z7+HWVws5z6TOO1/YXKQvpG8PLQZRjJrcS0YwiHk9c/Vn7UZXu15CiluhQ88ZLfK
 NgJSD0tW6PzAPWcF9nYvx0hL0UL6fAqQTYR15Qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=l+pa00
 YeFhRWf3yUkvmzf5IhZ6ShPDi/vzUvd0fJVvs=; b=enmKH4Nz6PE/EJf64TQkCA
 9HLyeTr1EIPByCPzIAXdir3jniKho53M87mXXTZWuhKKhazpMn9Ltmx7gzqWReTx
 HGifv6FRl3ErADvQWzMwUWGHjpUGBj4tmGrhXK34ADG9rVHmAS+IWT+392V4VH+B
 bPZUbCSfBEwbIKLCINyz2vusggC3tqrZlg+ZaiDkW4f/3RS6OIU3eW4dU+7zXxeh
 h4GsT7WG/Pr8Ra+3o9rinhAx7j9/Kp0WwMtQ6y6+VE1nY/yEQzjSyDKoQPnL7Tjv
 M9GlNXb+hc9tJCNqIr5ua//khSYSTE80GSMcin7eCGl6j8N3iF+8sKrY1ByJkJoQ
 ==
X-ME-Sender: <xms:K_2PXn3-wTJHyg6Zk1Y7L4XNH90OACyLnxV1hJCEcTqvREKvZaaZqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvddugdekkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:K_2PXtI_1ahTj1KIQIxkoZKiudzHz8iIHDa8uV89Jt7ANstOrrgMyQ>
 <xmx:K_2PXvn5hHXxSVf3V1pugvjLnLNd2ZaJzzMLZJwEV-u8QPRf-uil6g>
 <xmx:K_2PXjPZzqvpCgC-m7nWXNltLI1n_ylcsuSZG414N7IJN0ygOR34bg>
 <xmx:LP2PXvLnE0RxjrCnrtC6e1IhADoWv0eDhRqspT70S6oqsFEPCqzqlQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 38DB7E00A5; Fri, 10 Apr 2020 00:59:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1104-g203475c-fmstable-20200408v2
Mime-Version: 1.0
Message-Id: <ad46ff33-8ce2-4ffa-b12e-204053e4f705@www.fastmail.com>
In-Reply-To: <20200406101553.28958-1-a.filippov@yadro.com>
References: <20200406101553.28958-1-a.filippov@yadro.com>
Date: Fri, 10 Apr 2020 14:29:47 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH] ARM: DTS: Aspeed: Add YADRO Nicole BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_215929_606197_D70F9A5F 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 6 Apr 2020, at 19:45, Alexander Filippov wrote:
> Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> by YADRO.
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts | 284 ++++++++++++++++++++
>  2 files changed, 285 insertions(+)
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
> index 000000000000..0c8a9e7838ff
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts
> @@ -0,0 +1,284 @@
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
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +};
> +
> +&i2c5 {
> +	status = "okay";
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
> +};
> +
> +&i2c8 {
> +	status = "okay";
> +};
> +
> +&i2c9 {
> +	status = "okay";
> +};
> +
> +&i2c10 {
> +	status = "okay";
> +};
> +
> +&i2c11 {
> +	status = "okay";
> +};
> +
> +&i2c12 {
> +	status = "okay";
> +};

Are you accessing devices on the busses from userspace? It would
be helpful to comment here why you're enabling all of these busses
but not describing any devices on them, if it's necessary to enable
them at all.

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

You should specify the pinmux configuration for the channels you're using
to ensure exclusive access to those pins (otherwise they could be exported
e.g. as GPIOs).

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
