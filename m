Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEFB8999A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xMXMso92O5XiSe5QW6mJz18dA0gut5kJ5G0U56GuhVU=; b=j/Gej1Nh9ykEwKaZoCaAaTHob
	izWqkiln4ZDyShDUIzsm0pG7WhEFNCuaH/6mgtkRqaEXaqyAWq1uJuPgfCiBYZL3uyRyNSsOUvw6U
	NcOWLUnsIjAG7BL2HchTKrcOLojWCkAZ0qILRPwQxSRcuc6RPlrv4O1WFVHauGakbypkGRDV/4yAC
	LvDGsI7C2p6rGJgCT5+xgyOlV7N+IIthOV3YXOXs/4HfNpD1BeL1ouLilWodx68i5UduJNNiuGzCk
	PUeFoKT/BPwPFq1U/LFM3qmmzS+hh4KEap+9M4y20+2kzIGzD+4UfHL5A+K2lp9R7EZHhU8lbzi5h
	QZqXZhD+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6Qx-0008Mg-82; Mon, 12 Aug 2019 09:16:07 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6Ql-0008MM-6Z
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:15:56 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id 9D261A32FB;
 Mon, 12 Aug 2019 11:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1565601344;
 bh=7HwczNO4AaJxhz9DmNAJsQskuU0vcuHCLWic8ettZ1A=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jI/jY+UzM1VHcCwq+/3IO6TnBVWOVbl8u7LnYXJ1phUy7WgS6Ahm7lYGCQ7TFIV4M
 DJuGH9XbOg+nKg/up1TxBvtRgezEW58h8Pt/pRrtW4Nkv9KgwjORu9eMonK1j6QvrO
 UWjKg4NKenMQuhYLadJHl6CNyVQtoCNfDoMwTt34=
Subject: Re: [PATCH v3 05/21] ARM: dts: add recovery for I2C for iMX7
To: Philippe Schenker <philippe.schenker@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Fabio Estevam <festevam@gmail.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
 <20190807082556.5013-6-philippe.schenker@toradex.com>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <cd0da6ed-6b59-be60-34b2-74eb603aa10d@ysoft.com>
Date: Mon, 12 Aug 2019 11:15:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807082556.5013-6-philippe.schenker@toradex.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_021555_403675_11D57818 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.19.3.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07. 08. 19 10:26, Philippe Schenker wrote:
> From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> 
> - add recovery mode for applicable i2c buses for
>    Colibri iMX7 module.
> 
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
Hi Philippe,

since you are going to send v4 anyway I suggest you update the subject
to be consistent across all the patches.

	"ARM: dts: imx7-colibri: add recovery for I2C for iMX7"

fits better I think.

Thank you,
Michal

> 
> Changes in v3: None
> Changes in v2: None
> 
>   arch/arm/boot/dts/imx7-colibri.dtsi | 25 +++++++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
> index a8d992f3e897..2480623c92ff 100644
> --- a/arch/arm/boot/dts/imx7-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx7-colibri.dtsi
> @@ -140,8 +140,12 @@
>   
>   &i2c1 {
>   	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>   	pinctrl-0 = <&pinctrl_i2c1 &pinctrl_i2c1_int>;
> +	pinctrl-1 = <&pinctrl_i2c1_recovery &pinctrl_i2c1_int>;
> +	scl-gpios = <&gpio1 4 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
> +
>   	status = "okay";
>   
>   	codec: sgtl5000@a {
> @@ -242,8 +246,11 @@
>   
>   &i2c4 {
>   	clock-frequency = <100000>;
> -	pinctrl-names = "default";
> +	pinctrl-names = "default", "gpio";
>   	pinctrl-0 = <&pinctrl_i2c4>;
> +	pinctrl-1 = <&pinctrl_i2c4_recovery>;
> +	scl-gpios = <&gpio7 8 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio7 9 GPIO_ACTIVE_HIGH>;
>   };
>   
>   &lcdif {
> @@ -540,6 +547,13 @@
>   		>;
>   	};
>   
> +	pinctrl_i2c4_recovery: i2c4-recoverygrp {
> +		fsl,pins = <
> +			MX7D_PAD_ENET1_RGMII_TD2__GPIO7_IO8	0x4000007f
> +			MX7D_PAD_ENET1_RGMII_TD3__GPIO7_IO9	0x4000007f
> +		>;
> +	};
> +
>   	pinctrl_lcdif_dat: lcdif-dat-grp {
>   		fsl,pins = <
>   			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
> @@ -740,6 +754,13 @@
>   		>;
>   	};
>   
> +	pinctrl_i2c1_recovery: i2c1-recoverygrp {
> +		fsl,pins = <
> +			MX7D_PAD_LPSR_GPIO1_IO04__GPIO1_IO4	0x4000007f
> +			MX7D_PAD_LPSR_GPIO1_IO05__GPIO1_IO5	0x4000007f
> +		>;
> +	};
> +
>   	pinctrl_cd_usdhc1: usdhc1-cd-grp {
>   		fsl,pins = <
>   			MX7D_PAD_LPSR_GPIO1_IO00__GPIO1_IO0	0x59 /* CD */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
