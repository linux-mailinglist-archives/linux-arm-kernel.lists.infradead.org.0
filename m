Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10F811A32F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 04:51:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VF/fHo99ta9GQKs3ZHq2nhhlhe64So7bSdfmMgKbfY=; b=stJ2hT5Y4Ww59n
	yFlHj869PyP6cYZ9uev1OY9FINon8AQJoQC8fHGgSP2wixmEEVU0mfAM7jdyT/QR48FZ5i6cLzGWR
	oUSdfboQIK4Ey5B9/qxNk5BpNLoQLbr0RWEQ02MIAtYMr7lxO5nlYB3bdcq/qv1JicYH9UQyB4nuN
	XJkZVKxp+t3cpOC9wkOZJFgWyt7GsL/jStpzHD5afGnuxqDsrb0LdBJlnK1WF5ID8wgGMkcEXC0sL
	9dRC5yiPBAbojJvlXfjfurJhEUFJJ32u7f7d7qLODnh16DXuumjle7eOF2EjnV6z2EdBqCHmgPoGv
	DXueqQgFELR9M9sIHbdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iet1e-0001re-51; Wed, 11 Dec 2019 03:50:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iet1V-0001rA-5y
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 03:50:51 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A06820836;
 Wed, 11 Dec 2019 03:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576036248;
 bh=yeWMVwkeo+bPf+stZQf8exXrur23N3eKXJvU7vHghWY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=17AiTk5hH292fkuzRbzMsc/nLJeGpowEqmeGdsZEgvmLY6EeGD8KzNUL+nzvxylQe
 WKSbvPJeSihZ4epY6rhRnfsaLuwIWZkIJItrLTUD1u6i5ko0PCai5DmTS9qRb6jrvC
 5rDlkP5Od9eWXMMe+AMcgeeTUCT4NZYXxY0mqKHc=
Date: Wed, 11 Dec 2019 11:50:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH 3/3] arm64: dts: imx8mn-evk: enable usb1 and typec support
Message-ID: <20191211035036.GJ15858@dragon>
References: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
 <1575533029-13049-3-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575533029-13049-3-git-send-email-jun.li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_195049_266696_9FCC5457 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 08:06:28AM +0000, Jun Li wrote:
> From: Li Jun <jun.li@nxp.com>
> 
> USB1 port has typec connector with power delivery support:
> - Dual data role: host and device.
> - Dual power role: source and sink, prefer power sink.
> 
> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 65 +++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> index 2a74330..61511e9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
> @@ -3,6 +3,7 @@
>   * Copyright 2019 NXP
>   */
>  
> +#include <dt-bindings/usb/pd.h>
>  #include "imx8mn.dtsi"
>  
>  / {
> @@ -60,6 +61,42 @@
>  	status = "okay";
>  };
>  
> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	ptn5110: tcpc@50 {
> +		compatible = "nxp,ptn5110";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_typec1>;
> +		reg = <0x50>;
> +		interrupt-parent = <&gpio2>;
> +		interrupts = <11 8>;

We prefer to use macro for IRQ type:

s/8/IRQ_TYPE_LEVEL_LOW

I fixed it up and applied all 3 patches.

Shawn

> +		status = "okay";
> +
> +		port {
> +			typec1_dr_sw: endpoint {
> +				remote-endpoint = <&usb1_drd_sw>;
> +			};
> +		};
> +
> +		typec1_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			power-role = "dual";
> +			data-role = "dual";
> +			try-power-role = "sink";
> +			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
> +				     PDO_VAR(5000, 20000, 3000)>;
> +			op-sink-microwatt = <15000000>;
> +			self-powered;
> +		};
> +	};
> +};
> +
>  &snvs_pwrkey {
>  	status = "okay";
>  };
> @@ -70,6 +107,21 @@
>  	status = "okay";
>  };
>  
> +&usbotg1 {
> +	dr_mode = "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	usb-role-switch;
> +	status = "okay";
> +
> +	port {
> +		usb1_drd_sw: endpoint {
> +			remote-endpoint = <&typec1_dr_sw>;
> +		};
> +	};
> +};
> +
>  &usdhc2 {
>  	assigned-clocks = <&clk IMX8MN_CLK_USDHC2>;
>  	assigned-clock-rates = <200000000>;
> @@ -138,12 +190,25 @@
>  		>;
>  	};
>  
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
> +			MX8MN_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
> +		>;
> +	};
> +
>  	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
>  		fsl,pins = <
>  			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
>  		>;
>  	};
>  
> +	pinctrl_typec1: typec1grp {
> +		fsl,pins = <
> +			MX8MN_IOMUXC_SD1_STROBE_GPIO2_IO11	0x159
> +		>;
> +	};
> +
>  	pinctrl_uart2: uart2grp {
>  		fsl,pins = <
>  			MX8MN_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
