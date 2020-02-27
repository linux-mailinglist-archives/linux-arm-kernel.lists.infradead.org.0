Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA135170F6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBvjgwV9CVY94csTvvbM3yDLlaloZlS/yjnvbUfMP5A=; b=oUNxeIyEFWBVk1
	3gp82PWGUY0w7674gsa0K50icv0oDhBic+fdNIm4v+FSHCU1TMd2gwTh5Zo9bxfIm1Yb8AYExagIL
	QyWCDb13fF5F5rsQxLJYekuI1Nl3FtV/CtGsyHfIm9n3rjwYZwAwHTWcGSnoNJZtEMgCnqqGS8gXH
	5YLFCphFc1z4kIKWlcFjuhVqKuOFVSBL79NwXvD/pwBHa9IHG3DNgEilSlPBrhpQNT2z0OT6rom2J
	T1pAfkhTGsqQJgFKwYX1568tZOfm4VZvz9AxKQYv6s++AvUxfggvGcb11uyuEc7oWXt6enFylT0Pk
	sfwWe4s9jMdsTGba3Hxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AVq-0005Py-Pt; Thu, 27 Feb 2020 04:11:02 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AVh-0005PM-EF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:10:54 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R4AMqA022487
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:10:25 -0600
Message-ID: <7a210c19a7793b925275dbd8392e3c1ef538b229.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 4/7] ARM: dts: aspeed-g6: add usb functions
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:10:21 +1100
In-Reply-To: <20200226230346.672-5-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-5-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_201053_675510_38609DFE 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> Add USB components and according pin groups in aspeed-g6 dtsi.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

> ---
>  No change in v3/v4.
>  Changes in v2:
>    - added port/endpoint properties for vhub dt node.
> 
>  arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 25 +++++++++++++
>  arch/arm/boot/dts/aspeed-g6.dtsi         | 45
> ++++++++++++++++++++++++
>  2 files changed, 70 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> index 045ce66ca876..7028e21bdd98 100644
> --- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
> @@ -1112,6 +1112,31 @@
>  		groups = "UART9";
>  	};
>  
> +	pinctrl_usb2ah_default: usb2ah_default {
> +		function = "USB2AH";
> +		groups = "USBA";
> +	};
> +
> +	pinctrl_usb2ad_default: usb2ad_default {
> +		function = "USB2AD";
> +		groups = "USBA";
> +	};
> +
> +	pinctrl_usb2bh_default: usb2bh_default {
> +		function = "USB2BH";
> +		groups = "USBB";
> +	};
> +
> +	pinctrl_usb2bd_default: usb2bd_default {
> +		function = "USB2BD";
> +		groups = "USBB";
> +	};
> +
> +	pinctrl_usb11bhid_default: usb11bhid_default {
> +		function = "USB11BHID";
> +		groups = "USBB";
> +	};
> +
>  	pinctrl_vb_default: vb_default {
>  		function = "VB";
>  		groups = "VB";
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi
> b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 796976d275e1..0a29b3b57a9d 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -245,6 +245,51 @@
>  			status = "disabled";
>  		};
>  
> +		ehci0: usb@1e6a1000 {
> +			compatible = "aspeed,ast2600-ehci", "generic-
> ehci";
> +			reg = <0x1e6a1000 0x100>;
> +			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_usb2ah_default>;
> +			status = "disabled";
> +		};
> +
> +		ehci1: usb@1e6a3000 {
> +			compatible = "aspeed,ast2600-ehci", "generic-
> ehci";
> +			reg = <0x1e6a3000 0x100>;
> +			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_USBPORT2CLK>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_usb2bh_default>;
> +			status = "disabled";
> +		};
> +
> +		uhci: usb@1e6b0000 {
> +			compatible = "aspeed,ast2600-uhci", "generic-
> uhci";
> +			reg = <0x1e6b0000 0x100>;
> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
> +			#ports = <2>;
> +			clocks = <&syscon ASPEED_CLK_GATE_USBUHCICLK>;
> +			status = "disabled";
> +			/*
> +			 * No default pinmux, it will follow EHCI, use
> an
> +			 * explicit pinmux override if EHCI is not
> enabled.
> +			 */
> +		};
> +
> +		vhub: usb-vhub@1e6a0000 {
> +			compatible = "aspeed,ast2600-usb-vhub";
> +			reg = <0x1e6a0000 0x350>;
> +			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +			aspeed,vhub-downstream-ports = <7>;
> +			aspeed,vhub-generic-endpoints = <21>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_usb2ad_default>;
> +			status = "disabled";
> +		};
> +
>  		apb {
>  			compatible = "simple-bus";
>  			#address-cells = <1>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
