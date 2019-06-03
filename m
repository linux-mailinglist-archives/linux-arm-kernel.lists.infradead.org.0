Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F853261F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E28TdB6tmtk7qWzsnzqGsWHFsz7Gvu53V/SZotNpZAo=; b=rNl9ange8f329C
	q/mjDMVzxBaKPsO6SDZwbNV8BFAUnjF84Zr8uql8wBP4JF493pi4UN7xKQwVc7u6E3+aidpaj5F8i
	OE8NbAkk21kB4HQOgfM9p/M6NRiOisACJ47rqFffgFv88Pz8/6qvGSj+qu88kkcdw0dX2ugKZ5s8Y
	dBzoUimIhBkMFZqBDBcf6erEOF6lStPvsAv94jhN7h7flY/HsxCAz91HpjzLnfabY7TFzE4W+K6r1
	vBSn8TehyQJD8WMFVPyy8YIJVOO6cum3BcyciSc9PcD1ZnLyTzp2hpRA9JXyzJaGH5fh1Lw9wCUYx
	v4vur/lT5ypy8LX9b18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbmX-0002xZ-8F; Mon, 03 Jun 2019 01:29:01 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbmP-0002wd-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 01:28:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1A18E21B6B;
 Sun,  2 Jun 2019 21:28:49 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 02 Jun 2019 21:28:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=hP4Wp118CYUjOZy5FQ76Tf1KK73NL/j
 bE6MU60faow4=; b=UPwa2efQJr7pRU3x3FD40oq1h+NVmQfL6+foK9uBmdprtgB
 0rYCBHYdBkq9CmYxJOTqYIHdM+MXX0jqy/5I8uZazlQbjVyQqOeQlJFSdl3DMp1G
 wAObMQ8Zdh99gz0bHhvf/3FiXHOOsm9OPwQEWph4qG0ZD+e1rb0grNeWRbYy8Mxp
 U67XoMWxJaMv1NScKxlFV/k6lEK/0Gy3jvno5chDVzPNctGL1bew4u6jp2yMU/mB
 7BuWvGZ0V24PYUkJI55ROhgc9aqSc3zXWl/SuGTSXf1tGNnzYrL7MkYrClaaphOP
 6Fh8ACQ3szyRUuFSTcop4nbjJ+KtZiXTLxRCdlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hP4Wp1
 18CYUjOZy5FQ76Tf1KK73NL/jbE6MU60faow4=; b=GHPag7bu9prVLOr/gQW+vg
 1EqP341H8G0LzO22ffMQWplc7093cHGmbfIiXfB82xtCmZSIx7fP9NYLGifWiNMf
 vH/2F+rE+W56LR5Z0hbQKLIMab73LTqRtETzqRQEHZ3elsS8Gm26hNA+vzaa2sU/
 P28s0A+LC1cLrAJvcNpc9o5Bu50YDTF1EIiP6Ur4/nM5yRkpIoU/wcQirjQPTvVj
 wBduAYpb3gPenwkezNYjgvfUkitK44FuPAjB0UVnJ2YTPU8he7HNSBgTdnUqrYK+
 yRRLkbkjtzt6Nh3ZiDPy5HJgTzEJBYDh580oEurf5MpfOvvFY3hwy4DEuB+hYBFw
 ==
X-ME-Sender: <xms:z3f0XK6trGKcUl4rIR4_AyjGQDVei5MBnxz5EF1fa2vIGT9Hy5jahQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudefiedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:z3f0XOkJa1VCZ4FXWsEm4i0KlnBejThtc9KZU3vwSvmImO64gUBLOg>
 <xmx:z3f0XJrTz28vU6FFJp8vNQJjGEY3IeRBfjyRbM3CbMpw45ugs8TQJQ>
 <xmx:z3f0XIBINBqEkki7BsU9BJL63I5dfTO15uh-FrVnGEpuXfKu3DMZvA>
 <xmx:0Xf0XPzokBWVa_sZ3yAOp_mOMvcpRECpfc065nc8JCUWYP29xBS_TQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id AF983E00A2; Sun,  2 Jun 2019 21:28:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <246c9b25-1c05-4c2f-9185-c438c97ebdec@www.fastmail.com>
In-Reply-To: <20190531090950.13466-1-a.filippov@yadro.com>
References: <20190531090950.13466-1-a.filippov@yadro.com>
Date: Mon, 03 Jun 2019 10:58:47 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Alexander A. Filippov" <a.filippov@yadro.com>,
 linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v4] ARM: dts: aspeed: Add YADRO VESNIN BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_182854_311683_2EB51565 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 31 May 2019, at 18:40, Alexander Filippov wrote:
> VESNIN is an OpenPower machine with an Aspeed 2400 BMC SoC manufactured
> by YADRO.
> 
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 224 ++++++++++++++++++++
>  2 files changed, 225 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..64a956372fe1 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1272,6 +1272,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-opp-lanyang.dtb \
>  	aspeed-bmc-opp-palmetto.dtb \
>  	aspeed-bmc-opp-romulus.dtb \
> +	aspeed-bmc-opp-vesnin.dtb \
>  	aspeed-bmc-opp-witherspoon.dtb \
>  	aspeed-bmc-opp-zaius.dtb \
>  	aspeed-bmc-portwell-neptune.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> new file mode 100644
> index 000000000000..0b9e29c3212e
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
> @@ -0,0 +1,224 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright 2019 YADRO
> +/dts-v1/;
> +
> +#include "aspeed-g4.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +
> +/ {
> +	model = "Vesnin BMC";
> +	compatible = "yadro,vesnin-bmc", "aspeed,ast2400";
> +
> +	chosen {
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS4,115200 earlyprintk";
> +	};
> +
> +	memory {
> +		reg = <0x40000000 0x20000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		vga_memory: framebuffer@5f000000 {
> +			no-map;
> +			reg = <0x5f000000 0x01000000>; /* 16MB */
> +		};
> +		flash_memory: region@5c000000 {
> +			no-map;
> +			reg = <0x5c000000 0x02000000>; /* 32M */
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		heartbeat {
> +			gpios = <&gpio ASPEED_GPIO(R, 4) GPIO_ACTIVE_LOW>;
> +		};
> +		power_red {
> +			gpios = <&gpio ASPEED_GPIO(N, 1) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		id_blue {
> +			gpios = <&gpio ASPEED_GPIO(O, 0) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		alarm_red {
> +			gpios = <&gpio ASPEED_GPIO(N, 6) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		alarm_yel {
> +			gpios = <&gpio ASPEED_GPIO(N, 7) GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		button_checkstop {
> +			label = "checkstop";
> +			linux,code = <74>;
> +			gpios = <&gpio ASPEED_GPIO(P, 5) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		button_identify {
> +			label = "identify";
> +			linux,code = <152>;
> +			gpios = <&gpio ASPEED_GPIO(O, 7) GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&fmc {
> +	status = "okay";
> +	flash@0 {
> +		status = "okay";
> +		m25p,fast-read;
> +        label = "bmc";
> +#include "openbmc-flash-layout.dtsi"
> +	};
> +};
> +
> +&spi {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_spi1debug_default>;
> +
> +	flash@0 {
> +		status = "okay";
> +		label = "pnor";
> +		m25p,fast-read;
> +	};
> +};
> +
> +&mac0 {
> +	status = "okay";
> +
> +	use-ncsi;
> +	no-hw-checksum;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rmii1_default>;
> +};
> +
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&lpc_ctrl {
> +	status = "okay";
> +	memory-region = <&flash_memory>;
> +	flash = <&spi>;
> +};
> +
> +&ibt {
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd2_default &pinctrl_rxd2_default>;
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
> +
> +	tmp75@49 {
> +		compatible = "ti,tmp75";
> +		reg = <0x49>;
> +	};
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
> +
> +	occ-hwmon@50 {
> +		compatible = "ibm,p8-occ-hwmon";
> +		reg = <0x50>;
> +	};
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +
> +	occ-hwmon@51 {
> +		compatible = "ibm,p8-occ-hwmon";
> +		reg = <0x51>;
> +	};
> +};
> +
> +&i2c6 {
> +	status = "okay";
> +
> +	w83795g@2f {
> +		compatible = "nuvoton,w83795g";
> +		reg = <0x2f>;
> +	};
> +};
> +
> +&i2c7 {
> +	status = "okay";
> +
> +	occ-hwmon@56 {
> +		compatible = "ibm,p8-occ-hwmon";
> +		reg = <0x56>;
> +	};
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
> +
> +	occ-hwmon@57 {
> +		compatible = "ibm,p8-occ-hwmon";
> +		reg = <0x57>;
> +	};
> +};
> +
> +&i2c12 {
> +	status = "okay";
> +
> +	rtc@68 {
> +		compatible = "maxim,ds3231";
> +		reg = <0x68>;
> +	};
> +};
> +
> +&i2c13 {
> +	status = "okay";
> +};
> +
> +&vuart {
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
