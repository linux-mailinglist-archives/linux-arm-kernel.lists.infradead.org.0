Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B52B1353F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa6fxAOQMpEK+uBJn+ok/RstRnNuWnDRUzO03pJ4axQ=; b=nB6LoZGTGoOASm
	MCZ/tKFCmIGibDhIXqHQOjruhjptEhlxRjSH8KEB+XMLk8TdM4ZUHfGxYmPDkmTdEl7JRAPHZqoWx
	ymngqvtLi2z35Km/SiRzC2nUxumV83sHyxdoMU5TBaTGup61KuNwg3QOQervQ0YksdA4eyyAl3GYb
	nburUIaAWlOvy/nkuA+c2YCBhZsrq9jEySRYvT81AJKYBYnnouNgyXg6AsAPvXAqRzC1tAtqYyl3B
	HQ/aM8jUUjFor6T5in4hcDkI5nAw/wOdyOvPxoQhlBmsUbdqTF6PiRc5xTi+DuTmFnBN7rXEP4faV
	DSeJ8PNKP+DQLMsrjY9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSib-0004Jz-VB; Thu, 09 Jan 2020 07:59:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSiI-0004JJ-4K
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:58:43 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CC10206ED;
 Thu,  9 Jan 2020 07:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578556721;
 bh=IxIDaYwn1hYLk4AjZMN5Qonq1h8D5Y/VRrDjQJUKNq0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q9FuoXicRdmdy8u3f4kO6XoaxwV4LHUFXa/jXJ1M8Hb5Kaj4P8nFNuYO0ld5JUzTP
 LcKNnf/QO//ezjudN3G2NSzz0chy2/HbRRoosjYXlp156GJc5Vdueu/ym2rJfKJ55t
 GoYrUkNzy6tzqDqUe8nm5NwIbog2TM9mBg9cNOVo=
Date: Thu, 9 Jan 2020 15:58:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Aapo Vienamo <aapo.vienamo@iki.fi>
Subject: Re: [PATCH] ARM: mxs: Enable usbphy1 and usb1 on apx4devkit DTS
Message-ID: <20200109075832.GG4456@T480>
References: <20191229131503.20843-1-aapo.vienamo@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191229131503.20843-1-aapo.vienamo@iki.fi>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_235842_198756_497607E5 
X-CRM114-Status: GOOD (  15.99  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 03:15:03PM +0200, Aapo Vienamo wrote:
> Enable the USB host port on the APx4 development board.
> 
> Signed-off-by: Aapo Vienamo <aapo.vienamo@iki.fi>
> ---
>  arch/arm/boot/dts/imx28-apx4devkit.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx28-apx4devkit.dts b/arch/arm/boot/dts/imx28-apx4devkit.dts
> index 3a184d13887b..f00d201ce242 100644
> --- a/arch/arm/boot/dts/imx28-apx4devkit.dts
> +++ b/arch/arm/boot/dts/imx28-apx4devkit.dts
> @@ -183,6 +183,12 @@ auart2: serial@8006e000 {
>  				pinctrl-0 = <&auart2_2pins_a>;
>  				status = "okay";
>  			};
> +
> +			usbphy1: usbphy@8007e000 {
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&usb1_pins_a>;
> +				status = "okay";
> +			};
>  		};
>  	};
>  
> @@ -193,6 +199,10 @@ mac0: ethernet@800f0000 {
>  			pinctrl-0 = <&mac0_pins_a>;
>  			status = "okay";
>  		};
> +
> +		usb1: usb@80090000 {

We want to keep nodes with unit-address sorted in that address.  That
said, usb@80090000 should go before ethernet@800f0000.

Shawn

> +		      status = "okay";
> +		};
>  	};
>  
>  	regulators {
> -- 
> 2.24.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
