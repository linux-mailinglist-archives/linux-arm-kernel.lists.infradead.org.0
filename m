Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CF110765D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 18:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eMqoLPo32HYFucpF5fT8xJJErRKzgwBjawjHIV68f1c=; b=KguRSHNfepvyQE7wFxedlGuJw
	1Lq6AKB7Ud8R9JVZ02cyH715JPaWAxKHN1GA0hL+vnxehPUDjiDWZgXbCuiACB7J0jrqoCOrKOF2k
	gTzolhywBmhUvvo2wlt3Ohv+DhMNTEChi+R19v5cuzEuxr9ppzTsGTq5Dj9zMLYSwAe5FI0srrlbh
	JHCodD4mKJRtFfLhmMVlZ82p4txkR8nsgzrx7ThOXcDlNp5G4ugguy66qFL3vQVtOUtSIJMoy/X9m
	2Z1i8aQlTyOLc6alWmvBD7hfcExdPHJSW/ROxM0eqbHVVdQ1Yfmh/7LhgM9j06rjHwSgB8OL+mDdX
	K5NC6o2oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCeA-0002fI-Al; Fri, 22 Nov 2019 17:23:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCdt-0002eI-Lm
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 17:22:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 901CFDA7;
 Fri, 22 Nov 2019 09:22:46 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C19063F6C4;
 Fri, 22 Nov 2019 09:22:44 -0800 (PST)
Subject: Re: [PATCH 3/3] ARM: dts: at91: Remove the USB EP child node
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
 <20191107153128.11038-4-gregory.clement@bootlin.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b13e902f-b375-02d3-e03d-80b5ae29f64c@arm.com>
Date: Fri, 22 Nov 2019 17:22:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107153128.11038-4-gregory.clement@bootlin.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_092249_800477_AC54366D 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/11/2019 3:31 pm, Gregory CLEMENT wrote:
> The endpoint configuration used to be stored in the device tree,
> however the configuration depend on the "version" of the controller
> itself.
> 
> Then the EP child node are useless and describe as deprecated in the
> documentation binding: remove all the nodes from the SoC device tree
> file.

Just as a drive-by comment, it's presumably worth getting rid of the 
#address-cells and #size-cells properties too (here and in the binding 
example).

Robin.

> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>   arch/arm/boot/dts/at91sam9g45.dtsi |  52 -------------
>   arch/arm/boot/dts/at91sam9rl.dtsi  |  52 -------------
>   arch/arm/boot/dts/at91sam9x5.dtsi  |  52 -------------
>   arch/arm/boot/dts/sama5d2.dtsi     | 118 -----------------------------
>   arch/arm/boot/dts/sama5d3.dtsi     | 105 -------------------------
>   arch/arm/boot/dts/sama5d4.dtsi     | 118 -----------------------------
>   6 files changed, 497 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91sam9g45.dtsi b/arch/arm/boot/dts/at91sam9g45.dtsi
> index 691c95ea6175..63bfe546cd8d 100644
> --- a/arch/arm/boot/dts/at91sam9g45.dtsi
> +++ b/arch/arm/boot/dts/at91sam9g45.dtsi
> @@ -1204,58 +1204,6 @@
>   				clocks = <&udphs_clk>, <&utmi>;
>   				clock-names = "pclk", "hclk";
>   				status = "disabled";
> -
> -				ep@0 {
> -					reg = <0>;
> -					atmel,fifo-size = <64>;
> -					atmel,nb-banks = <1>;
> -				};
> -
> -				ep@1 {
> -					reg = <1>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@2 {
> -					reg = <2>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@3 {
> -					reg = <3>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@4 {
> -					reg = <4>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@5 {
> -					reg = <5>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@6 {
> -					reg = <6>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
>   			};
>   
>   			clk32k: sckc@fffffd50 {
> diff --git a/arch/arm/boot/dts/at91sam9rl.dtsi b/arch/arm/boot/dts/at91sam9rl.dtsi
> index 8643b7151565..e118bacb7d7c 100644
> --- a/arch/arm/boot/dts/at91sam9rl.dtsi
> +++ b/arch/arm/boot/dts/at91sam9rl.dtsi
> @@ -308,58 +308,6 @@
>   				clocks = <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
>   				clock-names = "pclk", "hclk";
>   				status = "disabled";
> -
> -				ep@0 {
> -					reg = <0>;
> -					atmel,fifo-size = <64>;
> -					atmel,nb-banks = <1>;
> -				};
> -
> -				ep@1 {
> -					reg = <1>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@2 {
> -					reg = <2>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@3 {
> -					reg = <3>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@4 {
> -					reg = <4>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@5 {
> -					reg = <5>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@6 {
> -					reg = <6>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
>   			};
>   
>   			dma0: dma-controller@ffffe600 {
> diff --git a/arch/arm/boot/dts/at91sam9x5.dtsi b/arch/arm/boot/dts/at91sam9x5.dtsi
> index 7c2eb93f8cac..685a1b9f3ae5 100644
> --- a/arch/arm/boot/dts/at91sam9x5.dtsi
> +++ b/arch/arm/boot/dts/at91sam9x5.dtsi
> @@ -876,58 +876,6 @@
>   				clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 23>;
>   				clock-names = "hclk", "pclk";
>   				status = "disabled";
> -
> -				ep@0 {
> -					reg = <0>;
> -					atmel,fifo-size = <64>;
> -					atmel,nb-banks = <1>;
> -				};
> -
> -				ep@1 {
> -					reg = <1>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@2 {
> -					reg = <2>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <2>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@3 {
> -					reg = <3>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@4 {
> -					reg = <4>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -				};
> -
> -				ep@5 {
> -					reg = <5>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
> -
> -				ep@6 {
> -					reg = <6>;
> -					atmel,fifo-size = <1024>;
> -					atmel,nb-banks = <3>;
> -					atmel,can-dma;
> -					atmel,can-isoc;
> -				};
>   			};
>   
>   			watchdog: watchdog@fffffe40 {
> diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
> index 2e2c1a7b1d1d..daafcffbe033 100644
> --- a/arch/arm/boot/dts/sama5d2.dtsi
> +++ b/arch/arm/boot/dts/sama5d2.dtsi
> @@ -122,124 +122,6 @@
>   			clocks = <&pmc PMC_TYPE_PERIPHERAL 42>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
>   			clock-names = "pclk", "hclk";
>   			status = "disabled";
> -
> -			ep@0 {
> -				reg = <0>;
> -				atmel,fifo-size = <64>;
> -				atmel,nb-banks = <1>;
> -			};
> -
> -			ep@1 {
> -				reg = <1>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@2 {
> -				reg = <2>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@3 {
> -				reg = <3>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@4 {
> -				reg = <4>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@5 {
> -				reg = <5>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@6 {
> -				reg = <6>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@7 {
> -				reg = <7>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@8 {
> -				reg = <8>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@9 {
> -				reg = <9>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@10 {
> -				reg = <10>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@11 {
> -				reg = <11>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@12 {
> -				reg = <12>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@13 {
> -				reg = <13>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@14 {
> -				reg = <14>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@15 {
> -				reg = <15>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
>   		};
>   
>   		usb1: ohci@400000 {
> diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
> index f770aace0efd..dfd095f33f95 100644
> --- a/arch/arm/boot/dts/sama5d3.dtsi
> +++ b/arch/arm/boot/dts/sama5d3.dtsi
> @@ -1402,111 +1402,6 @@
>   			clocks = <&udphs_clk>, <&utmi>;
>   			clock-names = "pclk", "hclk";
>   			status = "disabled";
> -
> -			ep@0 {
> -				reg = <0>;
> -				atmel,fifo-size = <64>;
> -				atmel,nb-banks = <1>;
> -			};
> -
> -			ep@1 {
> -				reg = <1>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@2 {
> -				reg = <2>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@3 {
> -				reg = <3>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -			};
> -
> -			ep@4 {
> -				reg = <4>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -			};
> -
> -			ep@5 {
> -				reg = <5>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -			};
> -
> -			ep@6 {
> -				reg = <6>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -			};
> -
> -			ep@7 {
> -				reg = <7>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -			};
> -
> -			ep@8 {
> -				reg = <8>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@9 {
> -				reg = <9>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@10 {
> -				reg = <10>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@11 {
> -				reg = <11>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@12 {
> -				reg = <12>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@13 {
> -				reg = <13>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@14 {
> -				reg = <14>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
> -
> -			ep@15 {
> -				reg = <15>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -			};
>   		};
>   
>   		usb1: ohci@600000 {
> diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
> index 6ab27a7b388d..0ece6b22d287 100644
> --- a/arch/arm/boot/dts/sama5d4.dtsi
> +++ b/arch/arm/boot/dts/sama5d4.dtsi
> @@ -105,124 +105,6 @@
>   			clocks = <&pmc PMC_TYPE_PERIPHERAL 47>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
>   			clock-names = "pclk", "hclk";
>   			status = "disabled";
> -
> -			ep@0 {
> -				reg = <0>;
> -				atmel,fifo-size = <64>;
> -				atmel,nb-banks = <1>;
> -			};
> -
> -			ep@1 {
> -				reg = <1>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@2 {
> -				reg = <2>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <3>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@3 {
> -				reg = <3>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@4 {
> -				reg = <4>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@5 {
> -				reg = <5>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@6 {
> -				reg = <6>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@7 {
> -				reg = <7>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-dma;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@8 {
> -				reg = <8>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@9 {
> -				reg = <9>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@10 {
> -				reg = <10>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@11 {
> -				reg = <11>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@12 {
> -				reg = <12>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@13 {
> -				reg = <13>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@14 {
> -				reg = <14>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
> -
> -			ep@15 {
> -				reg = <15>;
> -				atmel,fifo-size = <1024>;
> -				atmel,nb-banks = <2>;
> -				atmel,can-isoc;
> -			};
>   		};
>   
>   		usb1: ohci@500000 {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
