Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864557B75D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 02:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+L+GZvcNEHZGx+BZk0D7clHcu0fBacH/pI6434c+zo=; b=KRXbK90FI0+/ub
	EV47AG3MGKJqGK4gpyoVDX8xmbv5z6JwYt0lUr+oebYnqzQWyQ9H0gEVgR+YuYQtzffGrhg+7B7Un
	oRnxiHpGCgo55eeSadDvpAIwQVQAJ3BZiCb4tSvfsDd/4QPO2x6/U0kOn/3LvJ68/1nJadfjwMsgq
	GPvUr3jc2SVtJyn6mBV0NtIipoYvv9eBtP2fjsXrOpele7RnL5X8zcbGEtl7SvAX6LD14yVRnOugW
	aeF+pdAld8RqILtjWbMLepQ6rPZLQeUF9fCmbIMEGHsyoa3vP7HVli2qZIFbaF+r2LO5OjneXTaDk
	IrHPoeqoggCkXZvuy4Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hscqU-0007J7-He; Wed, 31 Jul 2019 00:51:58 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hscqM-0007IK-4J
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 00:51:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3B41B22355;
 Tue, 30 Jul 2019 20:51:47 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Tue, 30 Jul 2019 20:51:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=WkqnO80XQGbOw0Ei+zqy93YBShBkfdf
 rZbBtahOCbg8=; b=CnYUEzdC5FmVKkQjCItKDf894o0mbql8NHjYrDgJBwqCOZE
 CzaCHHmZOJWWIzkSZyFNXasRKrRkIaUnw/KYMrEhL1bkiJDbOaOI+ozbtqhnFCcH
 sPR0vNedfC8UtjF0uDu5aV8ck8/8GR5dQLEvALJYX5F0nmBJKScueh7ZxTINeL2o
 PSBnp44bpOmk/4FstOF0E5Smsn9ezRyl2gw/Zha8BBGxHHg3n/ZsXDqeFfJIeNJW
 oQSzw9BzIXP5RoIZh/h8pqS2ekYJeGbEtCzy9SmUeFAFVRC/amOEwmPMpcSdUlCp
 lw8rncuDCH+s+KbBizNw2sxevCX+Tv1sgMjuFiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=WkqnO8
 0XQGbOw0Ei+zqy93YBShBkfdfrZbBtahOCbg8=; b=HE+pGjXeCiOjdp9/fMzXl4
 ZORrRuJNcpovUiXEExpvlNX6hLeHs92QUYyVrAVcQDcIo5yrUdbPl7VX38RRggdi
 bn3aQwAn5B4r/pP2/WSEcN/SSzmbVluf184bAtR/jpC3bmobP5+5EuMHPvEo8+XS
 J2XBT7vIFFsxPjj2QUuz4LNlZMeHG6BlfcrV848lhV82fG2t98Tk+myNzxkq2dL5
 RgMvNwWqIxtF5FZQFDriEauJ8PWgagq9xzjaP5yjgDsYQJgag0BYiJoL8dIeQ4hM
 dWv+exabk/aOYbuOd63aH1r0QJz0Yv70xO4pL3qzGg/JDVxBTqaL1e8heEN3tyRw
 ==
X-ME-Sender: <xms:IOZAXZRwekMKM4CeGWOxRZOOulIU4KYw6xu4tO0Zfb6IFSz2WeD_yw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeggdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:IOZAXY7KQdrzTTMG2992i6iBLQ3vmHyFbwiBmR6yuj1n92MOHh7lew>
 <xmx:IOZAXVWEGLOy5ZlYBGdSj1VizZZ7_3ZqO_ArvQnXYIoyY3pOBDj6BQ>
 <xmx:IOZAXbBLSc0pqPSAG1SMxW07flktczXBLKyOpM1ihtko9u49i_J0Nw>
 <xmx:I-ZAXb7wMk34b1FCp5LZwFF9281XhplUDVaJYaRxYJ-LRBQGz4w9_Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B84EBE00A2; Tue, 30 Jul 2019 20:51:44 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <155d7473-fdf6-4a01-bda4-5cbb9c7e2822@www.fastmail.com>
In-Reply-To: <20190730060029.25268-1-Ben_Pai@wistron.com>
References: <20190730060029.25268-1-Ben_Pai@wistron.com>
Date: Wed, 31 Jul 2019 10:21:58 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ben Pai" <Ben_Pai@wistron.com>, "Rob Herring" <robh+dt@kernel.org>,
 mark.rutland@arm.com, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: aspeed: Add Mihawk BMC platform
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_175150_330009_FE5AD147 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wangat@tw.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Ben,

Thanks for the patch! Some minor comments below.

On Tue, 30 Jul 2019, at 15:30, Ben Pai wrote:
> The Mihawk BMC is an ASPEED ast2500 based BMC that is part of an
> OpenPower Power9 server.
> 
> This adds the device tree description for most upstream components. It
> is a squashed commit from the OpenBMC kernel tree.

That it's a squashed commit isn't relevant, neither is the mention of the OpenBMC
kernel tree. I'd drop both from the commit message.

> 
> Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 922 ++++++++++++++++++++
>  2 files changed, 923 insertions(+)
>  create mode 100755 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index eb6de52c1936..262345544359 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1281,5 +1281,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-opp-vesnin.dtb \
>  	aspeed-bmc-opp-witherspoon.dtb \
>  	aspeed-bmc-opp-zaius.dtb \
> +	aspeed-bmc-opp-mihawk.dtb \
>  	aspeed-bmc-portwell-neptune.dtb \
>  	aspeed-bmc-quanta-q71l.dtb
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> new file mode 100755
> index 000000000000..cfa20e0b2939
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> @@ -0,0 +1,922 @@
> +/dts-v1/;
> +
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/leds/leds-pca955x.h>
> +
> +/ {
> +	model = "Mihawk BMC";
> +	compatible = "ibm,mihawk-bmc", "aspeed,ast2500";

I think this should be "ips,mihawk-bmc". You may also need to add "ips" to the
vendor-prefixes list. 

> +
> +
> +	chosen {
> +		stdout-path = &uart5;
> +		bootargs = "console=ttyS4,115200 earlyprintk";
> +	};
> +
> +	memory@80000000 {
> +		reg = <0x80000000 0x20000000>; /* address and size of RAM(512MB) */
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		flash_memory: region@98000000 {
> +			no-map;
> +			reg = <0x98000000 0x04000000>; /* 64M */
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
> +			size = <0x02000000>;	/* 32MM */
> +			alignment = <0x01000000>;
> +			compatible = "shared-dma-pool";
> +			reusable;
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		air-water {
> +			label = "air-water";
> +			gpios = <&gpio ASPEED_GPIO(F, 6) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(F, 6)>;
> +		};
> +
> +		checkstop {
> +			label = "checkstop";
> +			gpios = <&gpio ASPEED_GPIO(J, 2) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(J, 2)>;
> +		};
> +
> +		ps0-presence {
> +			label = "ps0-presence";
> +			gpios = <&gpio ASPEED_GPIO(Z, 2) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(Z, 2)>;
> +		};
> +
> +		ps1-presence {
> +			label = "ps1-presence";
> +			gpios = <&gpio ASPEED_GPIO(Z, 0) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(Z, 0)>;
> +		};
> +		id-button {
> +			label = "id-button";
> +			gpios = <&gpio ASPEED_GPIO(F, 1) GPIO_ACTIVE_LOW>;
> +			linux,code = <ASPEED_GPIO(F, 1)>;
> +		};
> +	};
> +
> +	gpio-keys-polled {
> +		compatible = "gpio-keys-polled";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

Please remove the #address-cells and #size-cells properties, they aren't
relevant for gpio-keys-polled.

> +		poll-interval = <1000>;
> +
> +		fan0-presence {
> +			label = "fan0-presence";
> +			gpios = <&pca9552 9 GPIO_ACTIVE_LOW>;
> +			linux,code = <9>;
> +		};
> +
> +		fan1-presence {
> +			label = "fan1-presence";
> +			gpios = <&pca9552 10 GPIO_ACTIVE_LOW>;
> +			linux,code = <10>;
> +		};
> +
> +		fan2-presence {
> +			label = "fan2-presence";
> +			gpios = <&pca9552 11 GPIO_ACTIVE_LOW>;
> +			linux,code = <11>;
> +		};
> +
> +		fan3-presence {
> +			label = "fan3-presence";
> +			gpios = <&pca9552 12 GPIO_ACTIVE_LOW>;
> +			linux,code = <12>;
> +		};
> +
> +		fan4-presence {
> +			label = "fan4-presence";
> +			gpios = <&pca9552 13 GPIO_ACTIVE_LOW>;
> +			linux,code = <13>;
> +		};
> +
> +		fan5-presence {
> +			label = "fan5-presence";
> +			gpios = <&pca9552 14 GPIO_ACTIVE_LOW>;
> +			linux,code = <14>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		fault {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		power {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rear-id {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&gpio ASPEED_GPIO(AA, 2) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rear-g {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&gpio ASPEED_GPIO(AA, 4) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		rear-ok {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&gpio ASPEED_GPIO(Y, 0) GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan0 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan1 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 1 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan2 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan3 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan4 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 4 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		fan5 {
> +			retain-state-shutdown;
> +			default-state = "keep";
> +			gpios = <&pca9552 5 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	fsi: gpio-fsi {
> +		compatible = "fsi-master-gpio", "fsi-master";
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +		no-gpio-delays;
> +
> +		clock-gpios = <&gpio ASPEED_GPIO(E, 6) GPIO_ACTIVE_HIGH>;
> +		data-gpios = <&gpio ASPEED_GPIO(E, 7) GPIO_ACTIVE_HIGH>;
> +		mux-gpios = <&gpio ASPEED_GPIO(E, 5) GPIO_ACTIVE_HIGH>;
> +		enable-gpios = <&gpio ASPEED_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
> +		trans-gpios = <&gpio ASPEED_GPIO(R, 2) GPIO_ACTIVE_HIGH>;
> +	};
> +	iio-hwmon-12v {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 0>;
> +	};
> +	
> +	iio-hwmon-5v {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 1>;
> +	};
> +	
> +	iio-hwmon-3v {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 2>;
> +	};
> +		
> +	iio-hwmon-vdd0 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 3>;
> +	};
> +	
> +	iio-hwmon-vdd1 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 4>;
> +	};
> +	
> +	iio-hwmon-vcs0 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 5>;
> +	};
> +	
> +	iio-hwmon-vcs1 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 6>;
> +	};
> +
> +	iio-hwmon-vdn0 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 7>;
> +	};
> +	
> +	iio-hwmon-vdn1 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 8>;
> +	};
> +	
> +	iio-hwmon-vio0 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 9>;
> +	};
> +	
> +	iio-hwmon-vio1 {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 10>;
> +	};
> +	
> +	iio-hwmon-vddra {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 11>;
> +	};
> +	
> +	iio-hwmon-vddrb {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 13>;
> +	};
> +	
> +	iio-hwmon-vddrc {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 14>;
> +	};
> +	
> +	iio-hwmon-vddrd {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 15>;
> +	};
> +	
> +	iio-hwmon-battery {
> +		compatible = "iio-hwmon";
> +		io-channels = <&adc 12>;
> +	};
> +};
> +
> +&pwm_tacho {
> +	status = "okay";
> +	/*compatible = "aspeed,ast2500-pwm-tacho";
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	reg = <0x1e786000 0x1000>;
> +	clocks = <&pwm_tacho_fixed_clk>;*/
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm0_default &pinctrl_pwm1_default
> +		&pinctrl_pwm2_default &pinctrl_pwm3_default
> +		&pinctrl_pwm4_default &pinctrl_pwm5_default>;
> +
> +	fan@0 {
> +		reg = <0x00>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x00>;
> +	};
> +
> +	fan@1 {
> +		reg = <0x01>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x01>;
> +	};
> +
> +	fan@2 {
> +		reg = <0x02>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x02>;
> +	};
> +
> +	fan@3 {
> +		reg = <0x03>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x03>;
> +	};
> +
> +	fan@4 {
> +		reg = <0x04>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x04>;
> +	};
> +
> +	fan@5 {
> +		reg = <0x05>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x05>;
> +	};
> +
> +	fan@6 {
> +		reg = <0x00>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x06>;
> +	};
> +
> +	fan@7 {
> +		reg = <0x01>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x07>;
> +	};
> +
> +	fan@8 {
> +		reg = <0x02>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x08>;
> +	};
> +
> +	fan@9 {
> +		reg = <0x03>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x09>;
> +	};
> +
> +	fan@10 {
> +		reg = <0x04>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x0a>;
> +	};
> +
> +	fan@11 {
> +		reg = <0x05>;
> +		aspeed,fan-tach-ch = /bits/ 8 <0x0b>;
> +	};
> +};
> +
> +&fmc {
> +	status = "okay";
> +	flash@0 {
> +		status = "okay";
> +		label = "bmc";
> +		m25p,fast-read;
> +		spi-max-frequency = <50000000>;
> +		partitions {
> +			#address-cells = < 1 >;
> +			#size-cells = < 1 >;
> +			compatible = "fixed-partitions";
> +			u-boot@0 {
> +				reg = < 0 0x60000 >;
> +				label = "u-boot";
> +			};
> +			u-boot-env@60000 {
> +				reg = < 0x60000 0x20000 >;
> +				label = "u-boot-env";
> +			};
> +			obmc-ubi@80000 {
> +				reg = < 0x80000 0x1F80000 >;
> +				label = "obmc-ubi";
> +			};
> +		};
> +	};
> +	flash@1 {
> +		status = "okay";
> +		label = "alt-bmc";
> +		m25p,fast-read;
> +		spi-max-frequency = <50000000>;
> +		partitions {
> +			#address-cells = < 1 >;
> +			#size-cells = < 1 >;
> +			compatible = "fixed-partitions";
> +			u-boot@0 {
> +				reg = < 0 0x60000 >;
> +				label = "alt-u-boot";
> +			};
> +			u-boot-env@60000 {
> +				reg = < 0x60000 0x20000 >;
> +				label = "alt-u-boot-env";
> +			};
> +			obmc-ubi@80000 {
> +				reg = < 0x80000 0x1F80000 >;
> +				label = "alt-obmc-ubi";
> +			};
> +		};
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
> +		label = "pnor";
> +		m25p,fast-read;
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
> +&uart2 {
> +	/* APSS */
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_txd2_default &pinctrl_rxd2_default>;
> +};
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&mac0 {
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rmii1_default>;
> +	use-ncsi;
> +};
> +
> +&mac1 {
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
> +};
> +
> +&i2c0 {
> +	status = "disabled";
> +};
> +
> +&i2c1 {
> +	status = "disabled";
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	/* SAMTEC P0 */
> +	/* SAMTEC P1 */
> +	
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +
> +	/* APSS */
> +	/* CPLD */
> +
> +	/* PCA9516 (repeater) ->
> +	 *    CLK Buffer 9FGS9092
> +	 *    CLK Buffer 9DBL0651BKILFT
> +	 *    CLK Buffer 9DBL0651BKILFT
> +	 *    Power Supply 0
> +	 *    Power Supply 1
> +	 *    PCA 9552 LED
> +	 */
> +	 
> +	power-supply@58 {
> +		compatible = "ibm,cffps1";
> +		reg = <0x58>;
> +	};
> +
> +	power-supply@5b {
> +		compatible = "ibm,cffps1";
> +		reg = <0x5b>;
> +	};
> +
> +	pca9552: pca9552@60 {
> +		compatible = "nxp,pca9552";
> +		reg = <0x60>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		gpio@0 {
> +			reg = <0>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@1 {
> +			reg = <1>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@2 {
> +			reg = <2>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@3 {
> +			reg = <3>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@4 {
> +			reg = <4>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@5 {
> +			reg = <5>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@6 {
> +			reg = <6>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@7 {
> +			reg = <7>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@8 {
> +			reg = <8>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@9 {
> +			reg = <9>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@10 {
> +			reg = <10>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@11 {
> +			reg = <11>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@12 {
> +			reg = <12>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@13 {
> +			reg = <13>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@14 {
> +			reg = <14>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +		gpio@15 {
> +			reg = <15>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +	};
> +
> +};
> +
> +&i2c4 {
> +	status = "okay";
> +
> +	/* CP0 VDD & VCS : IR35221 */
> +	/* CP0 VDN : IR35221 */
> +	/* CP0 VIO : IR38064 */
> +        /* CP0 VDDR : PXM1330 */
> +
> +	ir35221@70 {
> +		compatible = "infineon,ir35221";
> +		reg = <0x70>;
> +	};
> +
> +	ir35221@72 {
> +		compatible = "infineon,ir35221";
> +		reg = <0x72>;
> +	};
> +
> +};
> +
> +&i2c5 {
> +	status = "okay";
> +	
> +	/* CP0 VDD & VCS : IR35221 */
> +	/* CP0 VDN : IR35221 */
> +	/* CP0 VIO : IR38064 */
> +        /* CP0 VDDR : PXM1330 */
> +
> +	ir35221@70 {
> +		compatible = "infineon,ir35221";
> +		reg = <0x70>;
> +	};
> +
> +	ir35221@72 {
> +		compatible = "infineon,ir35221";
> +		reg = <0x72>;
> +	};
> +	
> +};
> +
> +&i2c6 {
> +	status = "okay";
> +	
> +	/* pca9548 -> NVMe1 to 8 */
> +	
> +	pca9548@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +	};
> +	
> +};
> +
> +&i2c7 {
> +	status = "okay";
> +	
> +	/* pca9548 -> NVMe9 to 16 */
> +	
> +	pca9548@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +	};
> +	
> +};
> +
> +&i2c8 {
> +	status = "okay";
> +
> +	/* FSI CLK/DAT */

This comment doesn't make sense?

> +	eeprom@50 {
> +		compatible = "atmel,24c64";
> +		reg = <0x50>;
> +	};
> +};
> +
> +&i2c9 {
> +	status = "okay";
> +	
> +	/* pca9545 Riser -> 
> +	* 	PCIe x8  Slot3 
> +	* 	PCIe x16 slot4 
> +	* 	PCIe x8  slot5 
> +	* 	I2C BMC RISER PCA9554
> +	* 	BMC SCL/SDA PCA9554 
> +	* 	PCA9554
> +	*/
> +	
> +	/* pca9545 -> 
> +	* 	PCIe x16 Slot1 
> +	* 	PCIe x8  slot2 
> +	* 	PEX8748 
> +	*/
> +
> +	pca9545riser@70 {
> +		compatible = "nxp,pca9545";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		/*interrupt-parent = <&ipic>;*/
> +		/*interrupts = <17 IRQ_TYPE_LEVEL_LOW>;*/
> +		i2c-mux-idle-disconnect;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +	};
> +	
> +	pca9545@71 {
> +		compatible = "nxp,pca9545";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x71>;
> +
> +		/*interrupt-parent = <&ipic>;*/
> +		/*interrupts = <17 IRQ_TYPE_LEVEL_LOW>;*/
> +		i2c-mux-idle-disconnect;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;	
> +	};
> +};
> +
> +&i2c10 {
> +	status = "okay";
> +	
> +	/* pca9545 Riser -> 
> +	* 	PCIe x8  Slot8 
> +	* 	PCIe x16 slot9 
> +	* 	PCIe x8  slot10 
> +	* 	I2C BMC RISER PCA9554
> +	* 	BMC SCL/SDA PCA9554 
> +	* 	PCA9554
> +	*/
> +	
> +	/* pca9545 -> 
> +	* 	PCIe x16 Slot1 
> +	* 	PCIe x8  slot2 
> +	* 	PEX8748 
> +	*/
> +	
> +	pca9545riser@70 {
> +		compatible = "nxp,pca9545";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		/*interrupt-parent = <&ipic>;*/
> +		/*interrupts = <17 IRQ_TYPE_LEVEL_LOW>;*/

Remove the commented properties.

> +		i2c-mux-idle-disconnect;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +	};
> +	
> +	pca9545@71 {
> +		compatible = "nxp,pca9545";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x71>;
> +
> +		/*interrupt-parent = <&ipic>;*/
> +		/*interrupts = <17 IRQ_TYPE_LEVEL_LOW>;*/

Again here.

> +		i2c-mux-idle-disconnect;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;	
> +	};
> +};
> +
> +&i2c11 {
> +	status = "okay";
> +	
> +	/* TPM */
> +	/* RTC RX8900CE */
> +	/* FPGA for power sequence */
> +	/* TMP275A */
> +	/* TMP275A */
> +	/* EMC1462 */
> +
> +	tpm@57 {
> +		compatible = "infineon,slb9645tt";
> +		reg = <0x57>;
> +	};
> +	
> +	rtc@32 {
> +		compatible = "epson,rx8900";
> +		reg = <0x32>;
> +	};
> +	
> +	tmp275@48 {
> +		compatible = "ti,tmp275";
> +		reg = <0x48>;
> +	};
> +	
> +	tmp275@49 {
> +		compatible = "ti,tmp275";
> +		reg = <0x49>;
> +	};
> +
> +    /* chip emc1462 use emc1403 driver */
> +    emc1403@4c {
> +        compatible = "smsc,emc1403";
> +        reg = <0x4c>;
> +    };
> +
> +};
> +
> +&i2c12 {
> +	status = "okay";
> +
> +	/* pca9545 ->
> +	*	SAS BP1
> +	*	SAS BP2
> +	*	NVMe BP
> +	*	M.2 riser
> +	*/
> +	
> +	pca9545@70 {
> +		compatible = "nxp,pca9545";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		/*interrupt-parent = <&ipic>;*/
> +		/*interrupts = <17 IRQ_TYPE_LEVEL_LOW>;*/
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		
> +		i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0>;
> +			
> +			eeprom@50 {
> +				compatible = "atmel,24c64";
> +				reg = <0x50>;
> +			};
> +		};
> +		
> +		i2c@1 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <1>;
> +			
> +			eeprom@50 {
> +				compatible = "atmel,24c64";
> +				reg = <0x50>;
> +			};
> +		};
> +		
> +		i2c@2 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <2>;
> +			
> +			eeprom@50 {
> +				compatible = "atmel,24c64";
> +				reg = <0x50>;
> +			};
> +		};
> +		
> +		i2c@3 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <3>;
> +			
> +			tmp275@48 {
> +				compatible = "ti,tmp275";
> +				reg = <0x48>;
> +			};
> +		};
> +		
> +	};
> +	
> +};
> +
> +&i2c13 {
> +	status = "okay";
> +	
> +	/* pca9548 ->
> +	*	NVMe BP
> +	*	NVMe HDD17 to 24
> +	*/
> +	
> +	pca9548@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
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

This is already provided by aspeed-g5.dtsi, please drop it.

> +};
> +
> +&adc {
> +	status = "okay";

Please add the pinmux properties to mux the ADC lines that you're using

> +};
> +
> +&wdt1 {
> +	aspeed,reset-type = "none";
> +	aspeed,external-signal;
> +	aspeed,ext-push-pull;
> +	aspeed,ext-active-high;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdtrst1_default>;
> +};
> +
> +&wdt2 {
> +	aspeed,alt-boot;
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
> +&video {
> +	status = "okay";
> +	memory-region = <&video_engine_memory>;
> +};
> +
> +#include "ibm-power9-dual.dtsi"
> \ No newline at end of file

Add a newline here to avoid the warning.

> -- 
> 2.17.1
> 
> 
> ---------------------------------------------------------------------------------------------------------------------------------------------------------------
> This email contains confidential or legally privileged information and 
> is for the sole use of its intended recipient. 
> Any unauthorized review, use, copying or distribution of this email or 
> the content of this email is strictly prohibited.
> If you are not the intended recipient, you may reply to the sender and 
> should delete this e-mail immediately.
> ---------------------------------------------------------------------------------------------------------------------------------------------------------------
>

Please try to avoid posting footers like this to public mailing lists.

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
