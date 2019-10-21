Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C522DE624
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkTQBMuGmkG54GE+yqK+obd0HcRUBF+eYCs35k9rWp4=; b=JY4CwqXTTONmyA
	Xzq2u0RAxvcHr7QwMfGinaN+kWxdCw68wtKlwrM3lAdp/NEDvlUu4Qw/sFAARijiih4MIptaa7ZSG
	zfgXK+WJ+960zmqCttRU/yiH2xx7gFHfk26BRn1Rqvq8gbTWHlMywMmV2xIMXl6MJ1Wm4FYZGDbVj
	PLGyW+zewL6WkqEcKQsfCcpzR6jQoh1911KkhtJKCGY59FldRdiWvLAPHDXh0YoaYSv7FGOh5FJOV
	zl9EhIo49XNlqBx6AdknFQOs1Cap5ej151LFbIy8cDeArzeCfF72avroWtRvfchibgAmIoVIQVcI1
	mF+aSHN0A3OX/5onWXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSv1-0007bS-J4; Mon, 21 Oct 2019 08:19:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSuu-0007aT-8m
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:19:53 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSuo-0001Aa-1T; Mon, 21 Oct 2019 10:19:46 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iMSun-0008Pf-Bn; Mon, 21 Oct 2019 10:19:45 +0200
Date: Mon, 21 Oct 2019 10:19:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Jones <rjones@gateworks.com>
Subject: Re: [PATCH] ARM: dt: add lsm9ds1 iio imu/magn support to gw553x
Message-ID: <20191021081945.o7knknxacm6uvd3c@pengutronix.de>
References: <20191018232124.4126-1-rjones@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018232124.4126-1-rjones@gateworks.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:16:17 up 156 days, 14:34, 97 users,  load average: 0.07, 0.08,
 0.08
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_011952_309131_21F57D61 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

same here, don't name it 'ARM: dt: ...' instead name it 'ARM: dts: imx:
ventana: ..' or 'ARM: dts: imx: imx6qdl-gw553x: ..'.

On 19-10-18 16:21, Robert Jones wrote:
> Add one node for the accel/gyro i2c device and another for the separate
> magnetometer device in the lsm9ds1.
> 
> Signed-off-by: Robert Jones <rjones@gateworks.com>
> ---
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> index a106689..55e6922 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> @@ -173,6 +173,25 @@
>  	pinctrl-0 = <&pinctrl_i2c2>;
>  	status = "okay";
>  
> +	lsm9ds1_ag@6a {
> +		compatible = "st,lsm9ds1-imu";

Didn't found this compatible string.

> +		reg = <0x6a>;
> +		st,drdy-int-pin = <1>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_acc_gyro>;
> +		interrupt-parent = <&gpio7>;
> +		interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	lsm9ds1_m@1c {
> +		compatible = "st,lsm9ds1-magn";
> +		reg = <0x1c>;

Nodes are sorted according their i2c-addresses.

Regards,
  Marco

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_mag>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <2 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
>  	ltc3676: pmic@3c {
>  		compatible = "lltc,ltc3676";
>  		reg = <0x3c>;
> @@ -462,6 +481,18 @@
>  		>;
>  	};
>  
> +	pinctrl_acc_gyro: acc_gyrogrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_mag: maggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
> +		>;
> +	};
> +
>  	pinctrl_pps: ppsgrp {
>  		fsl,pins = <
>  			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
> -- 
> 2.9.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
