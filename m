Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEAD11AEAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRLjXveorF1252sG6QgMwXhf6X/OLGLxMKsii74vuoY=; b=O0keFeigqwq1b3
	iw/5Dj/xUY1Vfj3960hzZJXFT3uham9giXnxxoNAqrXDydVKCJFJM8sEeN9Vv7j2AC2LijQzJT/7n
	QD9et+9oxlBKIgc8zsHh6vEDIpKs/sUFzIBZL70iEdgR0vk9WmRWJuafvKeTiG4Ila8tTD3l7Mpm8
	zOCNn5w19bdfplcjO0ngezzRGo+EQOZy4GR9Cn9Jk45anZMjs/bWi0uV9WZOZuazDDHj/2gpT1V02
	DuMhqf2iMUf15mKWzr7UVYsLL4dxOglokHeft+MAVMvWcX2Q5y8z5qnFsMzVggMs3F5t1aJjXfXmv
	zCf6VwYVdk8htBnt1ODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Za-0008GX-EO; Wed, 11 Dec 2019 15:06:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3ZT-0008G3-Ly
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:06:37 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1if3ZM-0001Gp-9U; Wed, 11 Dec 2019 16:06:28 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1if3ZI-0001J8-Sm; Wed, 11 Dec 2019 16:06:24 +0100
Date: Wed, 11 Dec 2019 16:06:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
Message-ID: <20191211150624.prlxpsfqcys5jc7m@pengutronix.de>
References: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:04:18 up 26 days,  6:22, 33 users,  load average: 0.05, 0.05, 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_070635_717444_26569A46 
X-CRM114-Status: GOOD (  19.33  )
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
 Daniel Baluta <daniel.baluta@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-12-11 17:02, Leonard Crestez wrote:
> Many peripherals are affected by gpio5/2, not just sensors. One of those
> is ethernet phy so network boot is current broken.
> 
> Fix by renaming reg_sensors and marking it as "always on". Also add a
> comment asking for careful testing if this is to be made dynamic in the
> future.
> 
> The "peri_3v3" naming is similar to imx6sx-sdb and regulator-name is
> same string as in schematics (VPERI_3V3).
> 
> Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de> 

> ---
> Changes since v1:
> * Properly set phy-supply so that ethernet works even without
> regulator-always-on
> * Change regulator-name to VPERI_3V3 to match pdf schematics
> * List affected peripherals in comment

Thanks :)

Regards,
  Marco 

> Link to v1: https://patchwork.kernel.org/patch/11284851/
> 
> It seems the wm8960 doesn't have regulator support so making this
> work dynamically might also require changes in sound drivers.
> 
>  arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 26 +++++++++++++++++++------
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index e5dafb49ef12..212144511b66 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -28,18 +28,30 @@
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
> +		regulator-name = "VPERI_3V3";
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
>  		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
> +		/*
> +		 * If you want to want to make this dynamic please
> +		 * check schematics and test all affected peripherals:
> +		 *
> +		 * - sensors
> +		 * - ethernet phy
> +		 * - can
> +		 * - bluetooth
> +		 * - wm8960 audio codec
> +		 * - ov5640 camera
> +		 */
> +		regulator-always-on;
>  	};
>  
>  	reg_can_3v3: regulator-can-3v3 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "can-3v3";
> @@ -138,18 +150,20 @@
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet1>;
>  	phy-mode = "rmii";
>  	phy-handle = <&ethphy0>;
> +	phy-supply = <&reg_peri_3v3>;
>  	status = "okay";
>  };
>  
>  &fec2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_enet2>;
>  	phy-mode = "rmii";
>  	phy-handle = <&ethphy1>;
> +	phy-supply = <&reg_peri_3v3>;
>  	status = "okay";
>  
>  	mdio {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> @@ -191,12 +205,12 @@
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
> @@ -460,11 +474,11 @@
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
