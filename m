Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD58CCDAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 03:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQX9vZOD6oBYT8riXSU8HidcmRYASMaoUJGNQgmem5U=; b=lnBU4e6ChCEXqo
	B8HhDqkn2JUzTABgpHdFJFXPQs6I9wBb3r2cWR6KzoaiSLQfFzCpb6lqp27TKrIVecUAY7d6ggSJa
	X/WMOKa47yCGguXPct9SqS6KmqhEj+HzXNI9jA3cQnV2pR+yMLTJGh0r8FiiqfUjd6V5Ew51IzHfp
	r28T0GHQ/OFVUj8e964tsPfVGoKYIp/DB42cDJKeF1Jsijq5r5n6hhCO2GyPtR/spfKZGURC4hvL5
	Gi1iThsIjBvYi2SsOIF0GTbptEJ+YLz79jWA1HfDLyuSUxul2+TG0T0xIhBJcwzUB5jNFaTqWrhB/
	EiwXh++oiZ9pCNd3cFGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvA5-0006PL-KH; Sun, 06 Oct 2019 01:16:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGv9w-0006P2-Mn
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 01:16:30 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0727520830;
 Sun,  6 Oct 2019 01:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570324588;
 bh=w0gsQYTE+55d9vtKjjYnHHUWNASN6/OWINizJtI09iU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PDkNZQlcXFBb5qvCQBbRFAHYMac8LSF0zGVELXPn6eQxWNsoiTNniFSq9qrMeqXhr
 hYuO8UNew35VxJNJp4OZX4Q95BNp7e3zXX+vMzCRraAiJ0axeiHQNDM1TvGfzQpLlX
 keAwA6eTwRe2xMbrHaqXYmUyvcHl+cegBlZWWeNg=
Date: Sun, 6 Oct 2019 09:16:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Igor Opaniuk <igor.opaniuk@gmail.com>
Subject: Re: [PATCH v3 1/1] ARM: dts: colibri: introduce dts with UHS-I
 support enabled
Message-ID: <20191006011610.GH7150@dragon>
References: <20190904110918.25009-1-igor.opaniuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904110918.25009-1-igor.opaniuk@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_181628_788954_34BCDBE1 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 marcel.ziswiler@toradex.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, stefan@agner.ch, m.felsch@pengutronix.de,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org, marcel@ziswiler.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 02:09:18PM +0300, Igor Opaniuk wrote:
> From: Igor Opaniuk <igor.opaniuk@toradex.com>
> 
> Introduce DTS for Colibri iMX6S/DL V1.1x re-design, where UHS-I support was
> added. Provide proper configuration for VGEN3, which allows that rail to
> be automatically switched to 1.8 volts for proper UHS-I operation mode.
> 
> Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
> ---
> 
> v3:
> - change hierarchy according to Marco's suggestions [Marco Felsch]
> - adjust compatible string adding v1.1 [Stefan Agner]
> 
> v2:
> - rework hierarchy of dts files, and a separate dtsi for Colibri
>   iMX6S/DL V1.1x re-design, where UHS-I was added [Marcel Ziswiler]
> - add comments about vgen3 power rail [Marcel Ziswiler]
> - fix other minor issues, addressing Marcel's comments. [Marcel Ziswiler]
> 
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../boot/dts/imx6dl-colibri-v1_1-eval-v3.dts  | 59 +++++++++++++++++++
>  arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 11 +++-
>  3 files changed, 70 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 9159fa2cea90..87dfc3db4343 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -401,6 +401,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
>  	imx6dl-aristainetos2_4.dtb \
>  	imx6dl-aristainetos2_7.dtb \
>  	imx6dl-colibri-eval-v3.dtb \
> +	imx6dl-colibri-v1_1-eval-v3.dtb \
>  	imx6dl-cubox-i.dtb \
>  	imx6dl-cubox-i-emmc-som-v15.dtb \
>  	imx6dl-cubox-i-som-v15.dtb \
> diff --git a/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> new file mode 100644
> index 000000000000..92fcf4e62ba2
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: GPL-2.0 OR X11
> +/*
> + * Copyright 2019 Toradex AG
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6dl-colibri-eval-v3.dts"
> +
> +/ {
> +	model = "Toradex Colibri iMX6DL/S V1.1 on Colibri Evaluation Board V3";
> +	compatible = "toradex,colibri_imx6dl-v1_1-eval-v3",
> +		     "toradex,colibri_imx6dl-v1_1",
> +		     "toradex,colibri_imx6dl-eval-v3",
> +		     "toradex,colibri_imx6dl",

Please make sure these compatibles are documented.

> +		     "fsl,imx6dl";
> +};
> +
> +&iomuxc {
> +	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
> +		>;
> +	};
> +};
> +
> +/* Colibri MMC */
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
> +	vmmc-supply = <&reg_module_3v3>;
> +	vqmmc-supply = <&vgen3_reg>;
> +	enable-sdio-wakeup;

Check out Documentation/devicetree/bindings/power/wakeup-source.txt

Shawn

> +	keep-power-in-suspend;
> +	sd-uhs-sdr12;
> +	sd-uhs-sdr25;
> +	sd-uhs-sdr50;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +	/delete-property/no-1-8-v;
> +};
> diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> index 1beac22266ed..27097ab5eaab 100644
> --- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
> @@ -215,7 +215,16 @@
>  				regulator-always-on;
>  			};
>  
> -			/* vgen3: unused */
> +			/*
> +			 * +V3.3_1.8_SD1 coming off VGEN3 and supplying
> +			 * the i.MX 6 NVCC_SD1.
> +			 */
> +			vgen3_reg: vgen3 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
>  
>  			vgen4_reg: vgen4 {
>  				regulator-min-microvolt = <1800000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
