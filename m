Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC089E5A53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 13:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03kb7bHqzisnfRh2AM7UbAK6beOJCODYt9Wu5wmxF80=; b=oVQcKtXEHabkDh
	rFkj0Sxjnjzi79ynYeGQtvhXybNHYPeTe/4wDG+cXW/nMRt9NwCBlDzyAOR3tGXqXDnbtnaL5/LhK
	oX5+/pzuJcc/aYo0NsAM9YEGRMBAFARs6QIGcf5NiSW9lQNX+q4Yp/7s5Na/ULU9KivWbSwxd/RJY
	m1ZRIUwHQnvbRjbz//C6vkKEDBIsn71VURg7ePdfm9T7APCkAvQiGxXYZDq7UqlH7BkRkRP8DjpOj
	ndxp9qJGHA8mtnEimkZwL3yI1UO5507mxfnk/rLfQeg0WmETB66qVX6DqvuGEmSbEa6N3+F4iZrsg
	RCmS1DXlNOzxypq92L+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOKff-0004uB-2s; Sat, 26 Oct 2019 11:55:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOKfV-0004tn-Lw
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 11:55:42 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F29222070B;
 Sat, 26 Oct 2019 11:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572090941;
 bh=lpBqhBANauiN5UjByiLbpVHMRnCeuRYvpYYqm1oL4LE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bnm8ct2/gE7F8AM0lmeF4dg+ROuNoYJtrIVKrc6OXPyNhfqpeSpeMHgbxgQ1QsAwo
 hk12AVYkNFiFJMzXmWRrgg2d6d4cuDoldUbsx0UIuOuJV93B58Iwrel85GubZm4GXB
 WvDhNHJPdqpoLgj2Ij3nlMMG2f4BG1+Ey3huOuzw=
Date: Sat, 26 Oct 2019 19:55:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: zii-ultra: Add node for accelerometer
Message-ID: <20191026115524.GJ14401@dragon>
References: <20191015152654.26726-1-andrew.smirnov@gmail.com>
 <20191015152654.26726-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015152654.26726-3-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_045541_749492_C4F05D35 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 08:26:53AM -0700, Andrey Smirnov wrote:
> Add I2C node for accelerometer present on both Zest and RMB3 boards.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org,
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../boot/dts/freescale/imx8mq-zii-ultra.dtsi   | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> index 21eb52341ba8..8395c5a73ba6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> @@ -262,6 +262,18 @@
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
>  
> +	accel@1c {

s/accel/accelerometer

I fixed it up and applied the series.

Shawn

> +		compatible = "fsl,mma8451";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_accel>;
> +		reg = <0x1c>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <20 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "INT2";
> +		vdd-supply = <&reg_gen_3p3>;
> +		vddio-supply = <&reg_gen_3p3>;
> +	};
> +
>  	ucs1002: charger@32 {
>  		compatible = "microchip,ucs1002";
>  		pinctrl-names = "default";
> @@ -522,6 +534,12 @@
>  };
>  
>  &iomuxc {
> +	pinctrl_accel: accelgrp {
> +		fsl,pins = <
> +			MX8MQ_IOMUXC_SAI5_RXC_GPIO3_IO20		0x41
> +		>;
> +	};
> +
>  	pinctrl_fec1: fec1grp {
>  		fsl,pins = <
>  			MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC			0x3
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
