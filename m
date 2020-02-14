Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5956115D03C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 04:04:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SZiK2oFJUgwZs4h/N13EE1AARF63Go5DU7xMSJ0Ryc=; b=OMJjg+lEf2lVlt
	o56GpmVWOhbk0jswy6eBrMHeTdzU+UrzeHh6wLrGXwv0LhgngPP60XBMTJHZkKEpXVSI6sSbnfaBE
	nThWdZpuQhpZ86RHzueqpF6rVrMkeh1TTSuDbkr1sJn2cjMUSz7UHMAOFF2E1u/WQb56cYo6I5uh3
	qR6D9nMiBMPQg2qeNjNXYwtScvErX7m4jH4fcATOE+Q3IomLqlGXDsxndxJs3PdoDkDFrf3jCBFbK
	CKsW3TPB04gi32Vyv+lSz6z67CCBGiCoELQikJqM7IHTuFLFhbphOVu1OzhiQJM2sDqDlfdCPzuTo
	MD9WtqDETJq0CzrR+7tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2RHJ-0002OM-00; Fri, 14 Feb 2020 03:04:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2RHA-0002Nx-2x
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 03:04:21 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F165F2168B;
 Fri, 14 Feb 2020 03:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581649459;
 bh=+I1VNRsZ6mWUl7yjg8iW9NTuGybpG3UgnjAdjCwz3ic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bRSLEz7I7/K3VqtF0M2R2NyvENXiY3sDn2SIk7ASR3xWL1JkeOBbygFpG/w7xCe6R
 3dVtdZ+e/jndq2Oq5aNyIECOfydLcfemhMWMv86S7ksSERC868vbJBYTFNDA+GWMwW
 32kfJ7qnYJqzFnNUglzaO833bB1pZW8kdztVxwK8=
Date: Fri, 14 Feb 2020 11:04:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dts: imx: imx6qdl-gw553x.dtsi: add lsm9ds1 iio
 imu/magn support
Message-ID: <20200214030409.GJ22842@dragon>
References: <20200128221326.11393-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128221326.11393-1-rjones@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_190420_148712_421EC791 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 02:13:26PM -0800, Robert Jones wrote:
> Add one node for the accel/gyro i2c device and another for the separate
> magnetometer device in the lsm9ds1.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> index a106689..305b2f0 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> @@ -173,6 +173,25 @@
>  	pinctrl-0 = <&pinctrl_i2c2>;
>  	status = "okay";
>  
> +	lsm9ds1_m@1c {

Please use a generic node name?

> +		compatible = "st,lsm9ds1-magn";
> +		reg = <0x1c>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_mag>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <2 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	lsm9ds1_ag@6a {

Ditto

> +		compatible = "st,lsm9ds1-imu";
> +		reg = <0x6a>;
> +		st,drdy-int-pin = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_acc_gyro>;
> +		interrupt-parent = <&gpio7>;
> +		interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
>  	ltc3676: pmic@3c {
>  		compatible = "lltc,ltc3676";
>  		reg = <0x3c>;
> @@ -462,6 +481,18 @@
>  		>;
>  	};
>  
> +	pinctrl_mag: maggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_acc_gyro: acc_gyrogrp {

Sort pinctrl nodes alphabetically.  Also we generally do not use
underscore in node name.

Shawn

> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b0
> +		>;
> +	};
> +
>  	pinctrl_pps: ppsgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
> -- 
> 2.9.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
