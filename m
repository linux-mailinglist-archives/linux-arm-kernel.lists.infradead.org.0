Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 048761BD302
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 05:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGvfJuHHkw9jhIGLuZ8RFLB/CsP93LUyUs60GKk8aP8=; b=d2VoacRZtIrm5F
	TYLaUAW/C89809sc4u/IBo81WzGzSF1KsUIStybJyYgmT3KW8z0zTwJZ+NBMHBLfrGk9Z6fb9CRdQ
	hKDawxTshDcuejw2A4adgc8LNAxcNeI/BNXgpyK8WzOgVNxbdfybQAsVcAeYlRQ5M/65EELMyT6j5
	RdUs8F2sw+yoDIRPJsMxbIeIckkgil0q1QeCjCmUYTWfOgIgMz18oo4mPu8vbDR0o2O3jTC6y7rzL
	C1/ypYnWV8fRZDINN+okNqf9VbdVHzvZRWJwm91QD0ZRAIQ3zWz1FY1CsPOaa9mWjPel8yqhchb5i
	wBpV+xqZP2pvU/8vBqpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdXq-0000fe-Pk; Wed, 29 Apr 2020 03:37:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdXe-0000el-MV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 03:37:47 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B7AC206D8;
 Wed, 29 Apr 2020 03:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588131466;
 bh=XbNWCnLk1VJPpYjGpv8ddyaXOVe2sfB+lNDckroYR1o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E/4usoYtdF9PVQPYzt54/5009sCBniMu2IzjuKl7ts7q7qrUciiPhA6z2Dt8HaP3R
 aU7BgKO8q3boSawQOnHhnEQLUybWYF9R1SUAYf0ZPwVGjMJ/VaU06ENJFnXDrMzSM8
 V/GQ3k0tec/OcBL1S11qEt4X3rqgC3Ch65lEeaVk=
Date: Wed, 29 Apr 2020 11:37:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH] ARM: dts: gw552x: add USB OTG support
Message-ID: <20200429033740.GP32592@dragon>
References: <1587748215-9587-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587748215-9587-1-git-send-email-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_203746_755902_0C0B8C66 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 10:10:15AM -0700, Tim Harvey wrote:
> The GW552x-B board revision adds USB OTG support.
> 
> Enable the device-tree node and configure the OTG_ID pin.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> index dc646b7..133a1e3 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> @@ -12,8 +12,6 @@
>  		led1 = &led1;
>  		led2 = &led2;
>  		nand = &gpmi;
> -		usb0 = &usbh1;
> -		usb1 = &usbotg;

Have some comments about this change in the commit log?

Shawn

>  	};
>  
>  	chosen {
> @@ -258,6 +256,14 @@
>  	status = "okay";
>  };
>  
> +&usbotg {
> +	vbus-supply = <&reg_5p0v>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg>;
> +	disable-over-current;
> +	status = "okay";
> +};
> +
>  &wdog1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_wdog>;
> @@ -359,6 +365,12 @@
>  		>;
>  	};
>  
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x13059
> +		>;
> +	};
> +
>  	pinctrl_wdog: wdoggrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
