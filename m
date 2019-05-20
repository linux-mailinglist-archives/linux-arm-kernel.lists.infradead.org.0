Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B05322D37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Qw1irr2ATzA6UHakTMatrnAGI4sFRh91SieoJ5klnU=; b=j3iHZ4YpRzuKsv
	PXs4Xx4gZGC7m3QCXA9krPqkDPTI8AegD7IG3dQpj4rtwuTsUBZtwHlJzly4nAoYDVEDYDEM3Xrao
	5TxIREJYn88cyGJSXdjwfaPzc/70e+J6n6rz7TplBf3yBUcUEIZQupHB/TwayAYn0D/YnGjZk0Gy8
	V0JJ4GjjmupHBT4WjK6Nm8GLpcMNbO7r1CK/fQp5uyPf6RmwvDLi+e44XImlBum9qL3lRJ3Th+5V+
	FeTyRcbgswZo3U264f4lB33VTQwIcVqLqu6ogALehLoPmrhD832ZwGBokAOUIrZ1B0hm7DXbLA4yx
	K7eXNBrEIbh/zsh3zLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScpi-0002V9-Cq; Mon, 20 May 2019 07:35:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScmw-0006ef-Os
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:33:06 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66FE520859;
 Mon, 20 May 2019 07:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558337570;
 bh=6QOCM2O+jWvHVBPgbiBamyy5qsUSAwzS4Pgp+OQcfCQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CdouxzEdd8cyXWd3DiYv4x5o/lA8dl5aA+asetl1A2C2qVuPFrggQf7RYSIQlAlcK
 t2UjMyKptbE/yoO77zVHymC1Mo5H4cbc+PjVKHMQJgSvKPGj+QGwLlgREFBYtWt9Sm
 edlBGboFsWfDZXEmZBiftYZishId+M8xEmFnRzWM=
Date: Mon, 20 May 2019 15:31:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH v2 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Message-ID: <20190520073157.GW15856@dragon>
References: <20190514073529.29505-1-peter.chen@nxp.com>
 <20190514073529.29505-7-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514073529.29505-7-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_003251_540322_CEE04ADC 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, "balbi@kernel.org" <balbi@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 07:38:21AM +0000, Peter Chen wrote:
> Add imx7ulp USBOTG1 support.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>  arch/arm/boot/dts/imx7ulp.dtsi | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index fca6e50f37c8..60c9ea116d0a 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -30,6 +30,7 @@
>  		serial1 = &lpuart5;
>  		serial2 = &lpuart6;
>  		serial3 = &lpuart7;
> +		usbphy0 = &usbphy1;
>  	};
>  
>  	cpus {
> @@ -133,6 +134,36 @@
>  			clock-names = "ipg", "per";
>  		};
>  
> +		usbotg1: usb@40330000 {
> +			compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
> +				"fsl,imx27-usb";
> +			reg = <0x40330000 0x200>;
> +			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pcc2 IMX7ULP_CLK_USB0>;
> +			phys = <&usbphy1>;
> +			fsl,usbmisc = <&usbmisc1 0>;
> +			ahb-burst-config = <0x0>;
> +			tx-burst-size-dword = <0x8>;
> +			rx-burst-size-dword = <0x8>;
> +			status = "disabled";
> +		};
> +
> +		usbmisc1: usbmisc@40330200 {
> +			#index-cells = <1>;

Nit: we usually start with 'compatible', so can we move it behind?

Shawn

> +			compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
> +				"fsl,imx6q-usbmisc";
> +			reg = <0x40330200 0x200>;
> +		};
> +
> +		usbphy1: usbphy@0x40350000 {
> +			compatible = "fsl,imx7ulp-usbphy",
> +				"fsl,imx6ul-usbphy", "fsl,imx23-usbphy";
> +			reg = <0x40350000 0x1000>;
> +			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> +			#phy-cells = <0>;
> +		};
> +
>  		usdhc0: mmc@40370000 {
>  			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
>  			reg = <0x40370000 0x10000>;
> -- 
> 2.14.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
