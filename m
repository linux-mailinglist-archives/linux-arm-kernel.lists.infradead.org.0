Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E3DE6C4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 07:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2npRIWcGBKYGiXHRXLJUnEECdwzWZO2rkrmxF87bDw=; b=H+TWOZgiw6IR5J
	zZdmCtxQ6wQSNs1l4wMPJm4ZBGgRqcnvknJhrNsIyNPmA8GiGCnrXnM4nIxkwHe0fQ83S9wviqXti
	TZegQu99vnKSKjJGqU/8q9Ok4DniTCJ0I70ZjZQjvkZQyDY/xfBUXLho+aOZaWu/3+hH/GXC/+0Ze
	41Phd8qOv1p4gK/uMgeOMGvsVi8d2SzRa2u/MDtm/J6b1sziVFEcrpaR2KQ32zBHKOi0X+VYXgXZh
	mt5SKQkXTORxDW7WZFSa5w2iSrpKTQuFcFxE27AW5sAYJkoDdRTp6WTfZMTFFFgmhXlaSJSDl6JwW
	bHwLA3cIUjRHearNysfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyEN-0005j9-6Q; Mon, 28 Oct 2019 06:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyE2-0005iK-U1
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 06:10:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DA4220873;
 Mon, 28 Oct 2019 06:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572242998;
 bh=T8EqyovEiIZHr2MwOzu+mAUM1YvBcgYwUFn7W1qhsKY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gDHgLhOT45zthwB/Wz8w2XgXHgkmFEakpbyYErk9CC6XetrSbeDwAYVXvNQAPO1Rl
 h2hYQqAwcn24HTSCvkZufbBBi74prcHczFm86+vaIn1mVmKrTJvM5EBWg1Gft4up84
 UI+tWDa1QngP7YshW09BIGqpczC3Hr1E8fdUZ+xI=
Date: Mon, 28 Oct 2019 14:09:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v1 2/2] ARM: dts: colibri-imx6ull: add extcon for usbotg1
Message-ID: <20191028060930.GL16985@dragon>
References: <20191021161654.14353-1-igor.opaniuk@gmail.com>
 <20191021161654.14353-2-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021161654.14353-2-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_230958_988575_740E000D 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 07:16:54PM +0300, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Add extcon usb gpio configuration for support dual roles for usbotg1.
> 
> USB host/gadget switching test (1. USB NIC emulation; 2. USB storage):
> 
> [   52.491957] ci_hdrc ci_hdrc.1: switching to gadget role
> [   52.502911] mxs_phy 20c9000.usbphy: vbus is not valid
> [   56.749160] using random self ethernet address
> [   56.758637] using random host ethernet address
> [   65.768968] usb0: HOST MAC 00:14:2d:ff:ff:fe
> [   65.887980] usb0: MAC 00:14:2d:ff:ff:ff
> [   66.294961] configfs-gadget gadget: high-speed config #1: c
> [   78.741971] ci_hdrc ci_hdrc.1: switching to host role
> [   78.747522] ci_hdrc ci_hdrc.1: EHCI Host Controller
> [   78.790174] ci_hdrc ci_hdrc.1: new USB bus registered, assigned bus
> number 2
> [   78.868498] ci_hdrc ci_hdrc.1: USB 2.0 started, EHCI 1.00
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
>  arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> index a78849fd2afa..988f1a800d5a 100644
> --- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> +++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
> @@ -29,6 +29,14 @@
>  		clock-frequency = <16000000>;
>  	};
>  
> +	extcon_usbc_det: usbc_det {

Can we find a more generic name for the node?  Also hyphen is preferred
over underscore in node name.

Shawn

> +		compatible = "linux,extcon-usb-gpio";
> +		debounce = <25>;
> +		id-gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_snvs_usbc_det>;
> +	};
> +
>  	panel: panel {
>  		compatible = "edt,et057090dhu";
>  		backlight = <&bl>;
> @@ -150,6 +158,7 @@
>  };
>  
>  &usbotg1 {
> +	extcon = <&extcon_usbc_det &extcon_usbc_det>;
>  	status = "okay";
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
