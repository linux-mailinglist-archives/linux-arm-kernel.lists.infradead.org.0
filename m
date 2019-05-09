Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E925118513
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 08:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vERk47GU/VpG1Lpxptpv0XE0hf0Bc9h5vmJSJ/2/azA=; b=o3540SNyvPQM/Ge0KVtKBZYWPA
	Y5xbAHjJygFrEMZQRw6CmXH5rtqgOlYJZS0pdVQAcKpOVFX8NBjWNppAhFewr30wSFT6FjdM4SrPT
	e5NofGAPHtDivY4fgAgwNFpjyWHS84DpfBfQvRce+vWFca3+F+HFUPULRtIrMJvvVruw1kvgCFMZ2
	mgP64rVzTk6l9I8u01IinVOhx4delqFIuwvN/R1NasXX/iUz+c1brkXCxAn6KYU1OTswTyPu0ixD3
	nLeIuCbcr6L9LRfdwPu8Mnd+4Ni7sevtFNFKemkdV59PvLXzwcwOpQ7oBsGBLx8rPzTADgnLmNH6Y
	TNMYi8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcCp-0005z9-Cq; Thu, 09 May 2019 06:06:59 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcC4-0005nS-Nd
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 06:06:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0E919220A5;
 Thu,  9 May 2019 02:06:08 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 09 May 2019 02:06:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to
 :subject:content-type; s=fm2; bh=SuctwDlVhH18vzG5WhFjPtKUCfoS1SU
 LOKHQ7orIUNs=; b=lfs8LGR4GbTaWlud6KKBBIj23SBTLzhFIY1WO5GBOAwDSVu
 VCwhIvKaj1o6xyHbaDqB7Tji4/PYsDznixSEqLwRXbOn25q7YVnDZSFltyLvyTKr
 jROyVCm+9DRkYiXm1XQzUpVnd5j1c+6yhVCpOtJ1Q9ALxDhXevsNCer03ktXexQJ
 CDxJtYQvqWe6RhuvRISf6E6EfF7OLt/B39iWGHSsPIcnTUbAg9JFljjzMZ17DpW0
 RCggzwjX4I/JjTE7L4fEIRzX3JiidO7J4JETsbCQhtHDbQGQE6R6M6PdiuMWbV0g
 Z5coXsQ/Jeex3GUNkz4ZBCGiSI5AUxi3KZ08ajA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SuctwD
 lVhH18vzG5WhFjPtKUCfoS1SULOKHQ7orIUNs=; b=WrznOOAszPOrpOne62Dgug
 f7c7LKPoA7qkLeYgRq92XlVU3JJAN86NkswnoghX46rEBYvN5y41THuZeY9zmfvF
 fQUI2Z8xqAaOLIkVxO2JVXHpSS9mNQmQx76iBxv/fP8fC9sULXgmdQGeJWqXUgJB
 8XR+aZdkVQ+aeo7I2P25bE1sLF0J44Om+BVrvCxkvVgydG1TmcfI+05jj+Jl9yzo
 PHKBfzLWfzyP7RvTb+04nIxPFQb6rtzPCsaDaHDLgZcUykc/4MHntYO27eCyUen6
 SRvx+zLr0iRpFvDpImCaL+woLVoYSQzIA8MXMB+sasyjUSuMOFP4v5qAxX1ZImfw
 ==
X-ME-Sender: <xms:TsPTXOukkYXzeXR_nEdBVC-Tw5pEUwuShajO-Z2mnWKlsUOYP2nwmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrkeeggddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:TsPTXEgRg3POyfVcJv0QBYvkGAvkf1Jzg-IrFoS5Q59oiKpMiGIXBQ>
 <xmx:TsPTXMvgPIXNdy1nqIsP0QN_YANasgxXci9ENznYtJv9_bn71QsdCg>
 <xmx:TsPTXG5e4ATmU0_cRHfZXVVG2Z0wVwYvHWBdAscvhiBTzctabtUrKQ>
 <xmx:T8PTXBB9VIc93Vdjk7GZr1OxhjK5X9K010XigoVWht-UXmqB_KHktw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 78A207C3DB; Thu,  9 May 2019 02:06:06 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <29d7503b-6c14-4990-aadc-7cbce2897fc2@www.fastmail.com>
In-Reply-To: <20190509035549.2203169-1-taoren@fb.com>
References: <20190509035549.2203169-1-taoren@fb.com>
Date: Thu, 09 May 2019 02:06:05 -0400
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Tao Ren" <taoren@fb.com>, "Rob Herring" <robh+dt@kernel.org>,
 "Mark Rutland" <mark.rutland@arm.com>, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org
Subject: Re: [PATCH] ARM: dts: aspeed: Add Facebook YAMP BMC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_230613_456338_FEF2953E 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 9 May 2019, at 13:26, Tao Ren wrote:
> Add initial version of device tree for Facebook YAMP ast2500 BMC.
> 
> Signed-off-by: Tao Ren <taoren@fb.com>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/Makefile                    |   1 +
>  .../arm/boot/dts/aspeed-bmc-facebook-yamp.dts | 160 ++++++++++++++++++
>  2 files changed, 161 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index f4f5aeaf3298..710616dcb62e 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1254,6 +1254,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>  	aspeed-bmc-facebook-cmm.dtb \
>  	aspeed-bmc-facebook-tiogapass.dtb \
> +	aspeed-bmc-facebook-yamp.dtb \
>  	aspeed-bmc-intel-s2600wf.dtb \
>  	aspeed-bmc-opp-lanyang.dtb \
>  	aspeed-bmc-opp-palmetto.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts 
> b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
> new file mode 100644
> index 000000000000..4e09a9cf32b7
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-facebook-yamp.dts
> @@ -0,0 +1,160 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// Copyright (c) 2018 Facebook Inc.
> +/dts-v1/;
> +
> +#include "aspeed-g5.dtsi"
> +
> +/ {
> +	model = "Facebook YAMP 100 BMC";
> +	compatible = "facebook,yamp-bmc", "aspeed,ast2500";
> +
> +	aliases {
> +		/*
> +		 * Override the default uart aliases to avoid breaking
> +		 * the legacy applications.
> +		 */
> +		serial0 = &uart5;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +		serial3 = &uart3;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS0,9600n8 root=/dev/ram rw";
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x80000000 0x20000000>;
> +	};
> +};
> +
> +&pinctrl {
> +	aspeed,external-nodes = <&gfx &lhc>;
> +};
> +
> +/*
> + * Update reset type to "system" (full chip) to fix warm reboot hang 
> issue
> + * when reset type is set to default ("soc", gated by reset mask 
> registers).
> + */
> +&wdt1 {
> +	status = "okay";
> +	aspeed,reset-type = "system";
> +};
> +
> +/*
> + * wdt2 is not used by Yamp.
> + */
> +&wdt2 {
> +	status = "disabled";
> +};
> +
> +&fmc {
> +	status = "okay";
> +	flash@0 {
> +		status = "okay";
> +		m25p,fast-read;
> +		label = "bmc";
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
> +&uart2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd2_default
> +		     &pinctrl_rxd2_default>;
> +};
> +
> +&uart3 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd3_default
> +		     &pinctrl_rxd3_default>;
> +};
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&mac0 {
> +	status = "okay";
> +	use-ncsi;
> +	no-hw-checksum;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rmii1_default>;
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
> +
> +	i2c-switch@75 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x75>;
> +	};
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
