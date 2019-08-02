Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106157EA94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 05:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3OAczhTa65zHxNrnfk0YIHp6M69Cesh9X5xa0bq0lg=; b=UaJ8AbkKhScwrs
	77BbhBfMhbJjHvrDa39zLpv9or76LJZMJs6Ue9VGxrHe49OTSPFubQRZguOsv7ryfjccWnMrupxTe
	2Eu18CGo6QAUuiT7M1wpbGcOKnegw9yPQk8yceTgVcC/3Bng7Xm2LVG1ns9iuEY26Sy/2eXr8AQdB
	4yZV17yl7Y8YXVvJVY4H7ipt3jT8b+L/Dwxcg2hFfWjIsvrKTPq4uLpEmGQDgSAAL2h0J0GRI0IaS
	XyeUb5v8+zzyLrusbE+cs9IoOAd4h8iQXDa5WXrCFZmDg0kyvqwK5F5aiPZ7v8s+gEIXPVIv6dbS8
	yh+6wAfPEzI6npoO4sLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNrg-00023G-Mc; Fri, 02 Aug 2019 03:04:20 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNrT-0001zz-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 03:04:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 37A8220D2D;
 Thu,  1 Aug 2019 23:04:05 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 01 Aug 2019 23:04:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=7XqOV51U8EQMEygQtaRiOjqyE9LALog
 pxCG6odfMrXw=; b=MPJLpmq61IRZdjX94U288GSIHgF8qfa2mauAW1vfB6JX4GT
 8C/1PhvIpn/++Csfm36leZ/3DTYEOBIB9K44NngtKG2VWGs71vUR6pgNOHRPRqKV
 Vma0ffjACquPvtiK9WFy4P3PSgUJtxVuQEEDzuzm9oSaINdReF3ya5+bU4hPe3n9
 VNa5y3AsmfMz/NGCQorqkduSORpN7RqaQCBES7r0OZCNVEu5OAfw4eM4XxHofBqW
 4OXyXQLRwZXnJrQL5iaLHYLp/DiCEKRc8OejHyjaEXMl1gxU1ltogqsl/Rr5wEMQ
 RisJJA47oh+yGDzUy+H7Vzj6CkzobK2ZEfd86HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7XqOV5
 1U8EQMEygQtaRiOjqyE9LALogpxCG6odfMrXw=; b=ySo686XIvg69U+JvzA4M9p
 DEN/Xe4fV3XL3hwMAwK5ep4lt9RBWdGExtl5hnlNIo7x9+mQszeDw+GQ5bxRs5iw
 yHBVGuL8DTgVS+nDp4o40udTlLl98fXV7V8RJFKRjSjBQdQDuuB9cacvbBAHD9t1
 CU0OLXoS7V3674nrOUWQ1ye8Wx0HFM2kt62rElr/wwlDA+Z5i4asxNNXoaiDMrMM
 Pg5X+M+uVfb4LSUg/ETNrWAlu1lzF0GgZqYNL+zTgx/Ibfa+Ax23aaQn/KCBzCOa
 6bW/+ihX7Z+0CaFzZdvOIDAYxfVV+3UYroDPSE80FgrBkuMubERGHM0EXvKFPIgQ
 ==
X-ME-Sender: <xms:I6hDXXB0EoOoSR0lE-FQpuLPvBLJ28u9RZCb2As9BeC3iq8qK0lkaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleekgdeijecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:I6hDXcC7IvpAVWh7so0pEJt_n94BA5fMh2caWzNMiQXtJc_kjjJxlQ>
 <xmx:I6hDXeGvlugZ5m01Ur1bZPIvCXqWqiZvCuBXzW8Ybto0slvDmJI24Q>
 <xmx:I6hDXT6cFI6nn-JbON4D0vUQ3LVKbtXuv67snd4bPZtuxa2M0peMyw>
 <xmx:JahDXZUdnYbXlVOHyI4VnWtkXvZuAa5T_DFoZ-KeWRGQHUit67sxkQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 655F3E00A2; Thu,  1 Aug 2019 23:04:03 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <8beaaa81-9cc9-4ecb-83fc-3ab11ff5a614@www.fastmail.com>
In-Reply-To: <20190801101833.29885-1-Ben_Pai@wistron.com>
References: <20190801101833.29885-1-Ben_Pai@wistron.com>
Date: Fri, 02 Aug 2019 12:34:23 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ben Pai" <Ben_Pai@wistron.com>, "Rob Herring" <robh+dt@kernel.org>,
 mark.rutland@arm.com, "Joel Stanley" <joel@jms.id.au>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] ARM: dts: aspeed: Add Mihawk BMC platform
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_200408_021194_104907AA 
X-CRM114-Status: GOOD (  15.43  )
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
Cc: wangat@tw.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 1 Aug 2019, at 19:48, Ben Pai wrote:
> The Mihawk BMC is an ASPEED ast2500 based BMC that is part of an
> OpenPower Power9 server.
> 
> Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 902 ++++++++++++++++++++
>  2 files changed, 903 insertions(+)
>  create mode 100755 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index eb6de52c1936..cdfe0f43ffd3 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1275,6 +1275,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>  	aspeed-bmc-lenovo-hr630.dtb \
>  	aspeed-bmc-microsoft-olympus.dtb \
>  	aspeed-bmc-opp-lanyang.dtb \
> +	aspeed-bmc-opp-mihawk.dtb \
>  	aspeed-bmc-opp-palmetto.dtb \
>  	aspeed-bmc-opp-romulus.dtb \
>  	aspeed-bmc-opp-swift.dtb \
> diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts 
> b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> new file mode 100755
> index 000000000000..ca42057c0c1f
> --- /dev/null
> +++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
> @@ -0,0 +1,902 @@
> +/dts-v1/;
> +
> +#include "aspeed-g5.dtsi"
> +#include <dt-bindings/gpio/aspeed-gpio.h>
> +#include <dt-bindings/leds/leds-pca955x.h>
> +
> +/ {
> +	model = "Mihawk BMC";
> +	compatible = "ibm,mihawk-bmc", "aspeed,ast2500";
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
> +	/* chip emc1462 use emc1403 driver */
> +	emc1403@4c {
> +        	compatible = "smsc,emc1403";
> +        	reg = <0x4c>;
> +    	};
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
> +&adc {
> +	/* ADC pin default is ADC*/

Yes, the pinmux state defaults to ADC. However, by explicitly specifying
the mux state here you can take advantage of pinctrl's exclusive access
constraints - i.e. attempts to mux the pins for other purposes will be
rejected. Without declaring the mux configuration here it opens the
door for bugs in userspace to creep in, e.g. exporting some of the ADC
pins as GPIO. Root-causing this mismatch is more difficult than your
userspace applications receiving an explicit error.

As such, I strongly recommend you are explicit about the mux
configuration here.

Andrew

> +	status = "okay";
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
> +
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
