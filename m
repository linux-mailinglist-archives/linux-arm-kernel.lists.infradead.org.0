Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DCB7EA7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Zk9PvIv3Hprmlu9/Ncc0BdMATIjdXEu6hUnTuQGr00=; b=ehUhu7oaSXATCCrM1kpmzHoIkb
	lKKSoR7HRaoRU7DyG9jeMvFrDYAWBhL8uDPb6MqoxpwRCHq6+VqTKSX0O9dJRGXSJeDlKDoJM/de3
	j8BlwbCEOpH9AUfTJ4g7RYyft1+f2Dq6AhUmyNzxtA4oVFSYAsQLQgwDEg9Vm6VszJSMcCVqWt4ix
	GGtIt/Ej7zP9pb44d5inJEyF3tFLyKQltykEbNb9ySzdXypTeL/ulcFXJMPS4eG8xHVCFPvMp0Zpn
	dwZxBIhTlRfgToPIIaFOgvgXA4GIa1+bCTmv7v8hOCEfQkSdv6HyICmg2lC/7aVgbkPojaA0WWpUC
	H1DUVKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNjG-0005Qz-NT; Fri, 02 Aug 2019 02:55:39 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNj4-0005QN-Iu
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 02:55:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4FEA021FB6;
 Thu,  1 Aug 2019 22:55:21 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 01 Aug 2019 22:55:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm3; bh=l5LjbiKcknm05fGmRdJT/jtA1vdx+I7
 zKZnQjtWUt1I=; b=goYxbeEWRGcdU+zqyYVdpOxlXl6x7gs4YowEEszRohKJ8Lg
 Oi6qXNiul8z4uvaY6xxWk3H8KYSTldLCM6nkks5zTo0+d0EubyFiXXjdU/TeclKe
 RqvFpiRkwxzkh9fvBXxFK/KcTPoTefjaYO6io97LXSOhHWJoPZgMgo1VlITgJb8Z
 9O93X1vbZfYBfXotroAxm7iqzz+w5Qtj8wVVf87Rq+r9/nB4ExvGQzrHXf9nWJuk
 ejKUCSJhFz42eNAOHMtMk4++lsat1pS6BMywYzOC0Zx0BW8uD5ZJdv8MXFVU5Qqv
 /nPnUd3DKOq5m5wAio/CvxAoetW3QBKdfiTTG3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=l5Ljbi
 Kcknm05fGmRdJT/jtA1vdx+I7zKZnQjtWUt1I=; b=nUnYSHPRUiB4kabHqt0sia
 ua5nekb97I/gDIa3MpkBB7Rs3tegWB6zlkTunCcXWLRxpkcCJmIS5mqp1Fyuq2dz
 Tg3hYDIWbjnlit3CUaeGifSyl9HPkEtX/hFQYE0hFlVOFgr1ZxvTtDRDNUdgjwXf
 gkk2SylaPI3BAE7Klkym0bo7sjr4oOXiQyYkcng4foEVsFfuSz+CNF323QbDYQKy
 W9kkmHm+fEhNJ1iNTAvrFFOs+bgk/+dap+/ffJLyQJgMThHxUJCMtF3wkEBSOdry
 druNpA72QC2x74SUrvgsP75qy4qUuymrG6q4K+z17uLwEGp+v3KB74VuC0FtFDsg
 ==
X-ME-Sender: <xms:F6ZDXZl2Lg9AZ_0N0_bSCiIvPNKYvUhOZrwoz7Z7SLcBDiZRsZhGSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleekgdeihecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:F6ZDXWRHUertP7XXnSE7MwHzCnVwYJqjLiphIM6DWdC2ICHGyqHAbw>
 <xmx:F6ZDXbB1pXdegQrbxJgmHBrdembKwekJxnMhtt6vbOQULjI1taUAxw>
 <xmx:F6ZDXWowztH4Cc8iSWYxDn9sTwWDIoaTXWev7XZtqdZSJABvwAsPSw>
 <xmx:GaZDXZijaswA4fpfKoBE1EXyUk3eNodMaxsEOAAWi7ajBuftaBxR8g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 8975AE00A2; Thu,  1 Aug 2019 22:55:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <b9755ff0-20a9-44f0-9778-59183ded72be@www.fastmail.com>
In-Reply-To: <20190802010155.489238-1-taoren@fb.com>
References: <20190802010155.489238-1-taoren@fb.com>
Date: Fri, 02 Aug 2019 12:25:39 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <taoren@fb.com>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook Wedge100 BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_195527_303012_3133248C 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 2 Aug 2019, at 10:32, Tao Ren wrote:
> Add initial version of device tree for Facebook Wedge100 AST2400 BMC
> platform.
> 
> Signed-off-by: Tao Ren <taoren@fb.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../boot/dts/aspeed-bmc-facebook-wedge100.dts | 149 ++++++++++++++++++
>  2 files changed, 150 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 39a05a10a2a2..d71504ed82d3 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1273,6 +1273,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-facebook-cmm.dtb \
>  	aspeed-bmc-facebook-minipack.dtb \
>  	aspeed-bmc-facebook-tiogapass.dtb \
> +	aspeed-bmc-facebook-wedge100.dtb \
>  	aspeed-bmc-facebook-yamp.dtb \
>  	aspeed-bmc-intel-s2600wf.dtb \
>  	aspeed-bmc-inspur-fp5280g2.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts 
> b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> new file mode 100644
> index 000000000000..ccd700467ea7
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
> @@ -0,0 +1,149 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright (c) 2018 Facebook Inc.
> +/dts-v1/;
> +
> +#include "aspeed-g4.dtsi"
> +
> +/ {
> +	model = "Facebook Wedge 100 BMC";
> +	compatible = "facebook,wedge100-bmc", "aspeed,ast2400";
> +
> +	aliases {
> +		/*
> +		 * Override the default uart aliases to avoid breaking
> +		 * the legacy applications.
> +		 */
> +		serial0 = &uart5;
> +		serial1 = &uart1;
> +		serial2 = &uart3;
> +		serial3 = &uart4;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart3;
> +		bootargs = "debug console=ttyS2,9600n8 root=/dev/ram rw";
> +	};
> +
> +	memory@40000000 {
> +		reg = <0x40000000 0x20000000>;
> +	};
> +};
> +
> +&wdt1 {
> +	status = "okay";
> +	aspeed,reset-type = "system";
> +};
> +
> +&wdt2 {
> +	status = "okay";
> +	aspeed,reset-type = "system";
> +};
> +
> +&fmc {
> +	status = "okay";
> +	flash@0 {
> +		status = "okay";
> +		m25p,fast-read;
> +		label = "fmc0";
> +#include "facebook-bmc-flash-layout.dtsi"
> +	};
> +};
> +
> +&uart1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd1_default
> +		     &pinctrl_rxd1_default>;
> +};
> +
> +&uart3 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd3_default
> +		     &pinctrl_rxd3_default>;
> +};
> +
> +&uart4 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd4_default
> +		     &pinctrl_rxd4_default>;
> +};
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&mac1 {
> +	status = "okay";
> +	no-hw-checksum;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
> +};
> +
> +&i2c0 {
> +	status = "okay";
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
> +};
> +
> +&i2c7 {
> +	status = "okay";
> +
> +	i2c-switch@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +	};
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
> +
> +&i2c13 {
> +	status = "okay";
> +};
> +
> +&vhub {
> +	status = "okay";
> +};
> -- 
> 2.17.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
