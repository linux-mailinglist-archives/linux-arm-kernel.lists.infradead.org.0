Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38BC11AB7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:04:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5URTd8io+wWq3M6XWkjaaP8G6z5Pm+9T9j+9cd52bA=; b=Sf9tMyAog3Xc5u
	1xSIzk2m4Xa1CS3gU6hVylOSkDAabIJbcmD++ZR4HsV8q3e0yRYF+W7fwDwly+fuKILP6RfErQlgQ
	koKBQX427a4C2b7VsddX8DvFbw5ZXZKD8bOozCj23+ay9jT+St8o0aJn5PmKTlrP/8pIz75XT7dM3
	81lzIlUh7fDhd+UACjlMRDo4D4iU+cuJiJuIQbS7w66qB1o+oj3oIN+REMOTjHgJXfv1BnlO7gm+n
	rAC8GQz5y3pz7i1IylOf4EXIBZs1lz+XMROLHLbn97CVZ+Wa6QjvB2ZLCo3XFdiof7fFZcWot9CbY
	Keq713MAaeg/HyMjOQtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1ep-0005Za-Lw; Wed, 11 Dec 2019 13:03:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1ej-0005ZC-7t
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:03:54 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1if1ee-0008Lm-7p; Wed, 11 Dec 2019 14:03:48 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1if1ed-0008Ui-RS; Wed, 11 Dec 2019 14:03:47 +0100
Date: Wed, 11 Dec 2019 14:03:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx6ul-evk: Fix peripheral regulator
Message-ID: <20191211130347.gsd3loxxdjdvmf73@pengutronix.de>
References: <ccd182469476d43739ebdb4eedb2497bf72146ea.1576067880.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccd182469476d43739ebdb4eedb2497bf72146ea.1576067880.git.leonard.crestez@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:02:23 up 26 days,  4:21, 33 users,  load average: 0.20, 0.14, 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_050353_284169_FC31BF3C 
X-CRM114-Status: GOOD (  16.94  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On 19-12-11 14:41, Leonard Crestez wrote:
> Many peripherals are affected by gpio5/2, not just sensors. One of those
> is ethernet phy so network boot is current broken.
> 
> Fix by renaming reg_sensors and marking it as "always on". Also add a
> comment asking for careful testing if this is to be made dynamic in the
> future.
> 
> The "peri-3v3" naming mirrors imx6sx and schematics.

Nitpick: You named it "peri_3v3".

> Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index e5dafb49ef12..96853f42c050 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -28,18 +28,23 @@
>  		regulator-max-microvolt = <3300000>;
>  		gpio = <&gpio1 9 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  	};
>  
> -	reg_sensors: regulator-sensors {
> +	reg_peri_3v3: regulator-peri-3v3 {
>  		compatible = "regulator-fixed";
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_sensors_reg>;
> -		regulator-name = "sensors-supply";
> +		pinctrl-0 = <&pinctrl_peri_3v3>;
> +		regulator-name = "peri_3v3";
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
>  		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
> +		/*
> +		 * If you want to want to make this dynamic please
> +		 * check schematics and test all affected peripherals
> +		 */

Should we list the peripherals here so it is easire to find them?

Regards,
  Marco 

> +		regulator-always-on;
>  	};
>  
>  	reg_can_3v3: regulator-can-3v3 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "can-3v3";
> @@ -157,17 +162,19 @@
>  		ethphy0: ethernet-phy@2 {
>  			reg = <2>;
>  			micrel,led-mode = <1>;
>  			clocks = <&clks IMX6UL_CLK_ENET_REF>;
>  			clock-names = "rmii-ref";
> +			supply = <&reg_peri_3v3>;
>  		};
>  
>  		ethphy1: ethernet-phy@1 {
>  			reg = <1>;
>  			micrel,led-mode = <1>;
>  			clocks = <&clks IMX6UL_CLK_ENET2_REF>;
>  			clock-names = "rmii-ref";
> +			supply = <&reg_peri_3v3>;
>  		};
>  	};
>  };
>  
>  &can1 {
> @@ -191,12 +198,12 @@
>  	status = "okay";
>  
>  	magnetometer@e {
>  		compatible = "fsl,mag3110";
>  		reg = <0x0e>;
> -		vdd-supply = <&reg_sensors>;
> -		vddio-supply = <&reg_sensors>;
> +		vdd-supply = <&reg_peri_3v3>;
> +		vddio-supply = <&reg_peri_3v3>;
>  	};
>  };
>  
>  &lcdif {
>  	assigned-clocks = <&clks IMX6UL_CLK_LCDIF_PRE_SEL>;
> @@ -460,11 +467,11 @@
>  			MX6UL_PAD_JTAG_TMS__SAI2_MCLK		0x17088
>  			MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x17059
>  		>;
>  	};
>  
> -	pinctrl_sensors_reg: sensorsreggrp {
> +	pinctrl_peri_3v3: peri3v3grp {
>  		fsl,pins = <
>  			MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
>  		>;
>  	};
>  
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
